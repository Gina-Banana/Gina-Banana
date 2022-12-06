use logo;
drop table if exists order_log;
create table order_logs(
id int not null auto_increment,
order_id int unsigned not null,
update_time timestamp not null default current_timestamp on update current_timestamp,
old_status smallint unsigned not null,
new_status smallint unsigned not null,
primary key(id)
)engine=InnoDB default charset=utf8mb4 collate=utf8mb4_0900_ai_ci;
drop trigger if exists log_orders_status;
create trigger log_orders_status after update on orders for each row
insert into order_logs(order_id, old_status, new_status)
values (new.id, old.status, new.status);
commit;