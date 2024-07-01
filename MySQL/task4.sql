select * from customers;
 
--   LIKE....

select * from customers where customerName like "a%";
select * from customers where customerName like "%co";
select * from customers where customerName like "H%co";
select * from customers where customerName like "%Gift%";
select * from customers where customerName like "__u%";
select * from customers where customerName like "%co_";
select * from customers where country like "G__";