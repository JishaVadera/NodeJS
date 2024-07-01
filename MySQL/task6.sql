drop table sales_order;

insert into SALES_ORDER values
("O19001" , "C00001" , "2012-06-04" , "S00001" , "F" , "N" , "2020-07-02" , "In Process"),
("O19002" , "C00002" , "2025-06-04" , "S00002" , "P" , "N" , "2027-06-02" , "Cancelled"),
("O46865" , "C00003" , "2018-02-04" , "S00003" , "F" , "Y" , "2020-02-02" , "Fulfilled"),
("O19003" , "C00001" , "2003-04-04" , "S00001" , "F" , "Y" , "2007-04-02" , "Fulfilled"),
("O46866" , "C00005" , "2020-05-04" , "S00002" , "P" , "N" , "2022-05-02" , "Cancelled"),
("O19008" , "C00006" , "2024-05-04" , "S00004" , "F" , "N" , "2026-07-02" , "In Process");

select * from sales_order;


create table SALES_ORDER_DETAILS1(
  ORDERNO varchar(6),
    PRODUCTNO varchar(6),
    QTYORDERED int,
    QTYDISP int,
    PRODUCTRATE int,
    
  foreign key (ORDERNO) references SALES_ORDER(ORDERNO),
  foreign key (PRODUCTNO) references PRODUCT_MASTER(PRODUCTNO)
);

desc SALES_ORDER_DETAILS1;

insert into SALES_ORDER_DETAILS1 values
("O19001" , "P0001" , 4 , 4 , 525),
("O19001" , "P07965" , 2 , 1 , 8400),
("O19001" , "P07885" , 2 , 1 , 5250),
("O19002" , "P0001" , 10 , 0 , 525),
("O46865" , "P07868" , 3 , 3 , 3150),
("O46865" , "P07885" , 3 , 1 , 5250),
("O46865" , "P0001" , 10 , 10 , 525),
("O46865" , "P0345" , 4 , 4 , 1050),
("O19003" , "P0345" , 2 , 2 , 1050),
("O19003" , "P06734" , 1 , 1 , 12000),
("O46866" , "P07965" , 1 , 0 , 8400),
("O46866" , "P07975" , 1 , 0 , 1050),
("O19008" , "P0001" , 10 , 5 , 525),
("O19008" , "P07975" , 5 , 3 , 1050);

select * from SALES_ORDER_DETAILS1;
