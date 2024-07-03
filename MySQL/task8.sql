use pk;

  -- find out products  and their quantites that will have to be delivered in the current month

select pm.description , pm.qtyonhand from sales_order_details1 sod 
inner join product_master pm on sod.productno = pm.productno
inner join sales_order so on sod.orderno = so.orderno
WHERE MONTH(so.orderdate) = "june"
AND so.orderstatus = "fulfilled";

-- 1.Find out the products, which have been sold to 'Ivan Bayross'.

select cm.name, pm.descripion from sales_order_details sod 
 inner join product_master pm on sod.productNo = pm.productNo
 inner join sales_order so on sod.orderNo = so.orderNo
 inner join clinet_master cm on cm.name = "Ivan bayross";

select cm.name, pm.descripion from sales_order_details sod
inner join product_master1 pm on sod.productNo = pm.productNo
inner join sales_order so on sod.orderNo = so.orderNo
inner join client_master1 cm on so.clientno = cm.clientno
where cm.name = 'Ivan bayross';


-- 2.Find out the products and their quanities that will have to be delivered in the current month.


-- 3.List the productNo and decription of constantly sold(i.e, rapidly moving) produts.
select pm.productno , pm.description from sales_order_details1 sod
inner join product_master pm 
on sod.productno = pm.productno 
where reorderlvl > 30;

-- 4.Find the name of clients who have purchased 'Trousers.
select cm.clientno, cm.name ,pm.description  
from client_master1 cm
inner join sales_order so on cm.clientno = so.clientno
inner join sales_order_details1 sod on  so.orderNo = sod.orderno
inner join product_master pm on  pm.description = 'Trousers';

-- 5.List the products and orders from customers who have ordered less than 5 unit of 'Pull Overs'.

-- 6.find the products and their quantities for the orders placed by 'Ivan Bayross' and 'Mamta muzumdar'.
select sod.orderno,cm.name , pm.qtyonhand , sod.qtyordered
from  sales_order_details1 sod
inner join sales_order so on sod.orderNo = so.orderNo
inner join product_master pm on sod.productNo = pm.productNo
inner join client_master1 cm on  so.clientno = cm.clientno
where cm.name IN('Ivan Bayross','Mamta muzumdar');


-- 7.Find the products and their quantities for the orders places by ClientNo 'C0001' and 'C0002'.

select sod.orderno , cm.name , pm.qtyonhand , sod.qtyordered
from  sales_order_details1 sod
inner join sales_order so on sod.orderNo = so.orderNo
inner join product_master pm on sod.productNo = pm.productNo
inner join client_master1 cm on  so.clientno = cm.clientno
where cm.clientno IN('C0001','C0002');

select sod.productno , pm.description , cm.name 
from sales_order_details1 sod
inner join product_master pm on sod.productno = pm.productno
inner join sales_order so on sod.orderno = so.orderno
inner join client_master1 cm on cm.clientno = so.clientno where  cm.clientno IN('C0001','C0002');

  
