INSERT INTO customers(id, email, name, password, birthday, gender)
VALUES('U272027813','272027813@gmail.com','韓吉謙','123456','2005-07-15','F');

/*以下為 E02:註冊功能 的指令*/
INSERT INTO customers(id, password, name, email, birthday, gender, address, phone, subscribed)
VALUES(?,?,?,?,?,?,?,?,?);