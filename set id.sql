SELECT * FROM logo.customers;
alter table customers add column id 
varchar(20) default (concat(substring(email,1,5),substring(phone,1,5))) first;