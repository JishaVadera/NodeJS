list all clients names

 select name from client_master;

retrieve the entire contents of client_master table

select * from client_master;

retrieve the list of name , city and state of clients

select name , city , state from client_master;

list various product available from PRODUCT_MASTER

select description from PRODUCT_MASTER;

list all clients who lives in Mumbai

select * from CLIENT_MASTER where city = 'mumbai';

find the names of salesmen who have a salary equal to Rs.3000

select SALESMANNAME from SALESMAN_MASTER where SALAMT = 3000;

change the city of clientno "c0005" to "Bangalore"

update CLIENT_MASTER set city = 'Bangalore' where clientno = "C00005";

change the baldue of clientno "c00001" to Rs.1000

update client_master set baldue=1000 where clientno="c00001";

change the price of Trousers to Rs.950

update product_master set costprice=950 where description="Trousers";

change the city of salesman to pune

update  SALESMAN_MASTER set city = "pune";

delet one line data

delete from CLIENT_MASTER where clientno = "C00005";

delete all data 

delete from client_master;

drop the table and database

drop table client_master;

drop database NodeJS;