create database pk;

use pk;

show Tables;

-- *********TABLE_1***********

create table CLIENT_MASTER1(
    clientno varchar(6) primary key ,
    name      varchar(20) not null,
    address1  varchar(30),
    address2  varchar(30),
    city      varchar(15),
    pincode   int(8),
    state     varchar(15),
    baldue    int(10)
);

show tables;

drop table client_master;

desc CLIENT_MASTER1;

insert into CLIENT_MASTER1 values 
("C00001", "Ivan Bayross" ,"A/14","Worli", "Mumbai" , 400054 , "Maharashtra" , 15000),
("C00002", "Mamta Muzumdar" , "65","Nariman", "Madras" , 780001 , "Tamil Nadu" , 0),
("C00003", "Chhaya Bankar" , "A/14" , "Worli" , "Mumbai" , 400057 , "Maharashtra" , 5000),
("C00004", "Ashwini Joshi" , "P-7" , "Bandra", "Bangalore" , 560001 , "Karnataka" , 0),
("C00005", "Hansel Colaco" , "A/5" , "Juhu" , "Mumbai" , 400060 , "Maharashtra" , 2000),
("C00006", "Deepak Sharma" ,  "P-7" , "Bandra" , "Mangalore" , 560050 , "Karnataka" , 0);

select * from CLIENT_MASTER1;

-- *********TABLE_2***********
        

create table PRODUCT_MASTER(
    productno        varchar(6) primary key,
    description      varchar(15) not null,
    profitpercent    int(30) not null,
    unitmeasure      varchar(10) not null,
    qtyonhand        int(8) not null,
    reorderlvl       int(8) not null,
    sellprice        int(10) not null,
    costprice        int(10) not null
);

describe PRODUCT_MASTER;

insert into PRODUCT_MASTER values 
("P0001","T-shirt",5,"Piece",200,50,350,250),
("P0345" , "Shirts" , 6 , "Piece" , 150 , 50 , 500 , 350),
("P06734" , "Cotton Jeans" , 5 , "Piece" , 100 , 20 , 600 , 450),
("P07865" , "Jeans" , 5 , "Piece" , 100 , 20 , 750 , 500),
("P07868" , "Trousers" , 2 , "Piece" , 150 , 50 , 850 , 550),
("P07885" , "Pull Overs" , 2 , "Piece" , 80 , 30 , 700 , 450),
("P07965" , "Denim Shirts" , 4 , "Piece" , 100 , 40 , 350 , 250),
("P07975" , "Lycra Tops" , 5 , "Piece" , 70 , 30 , 300 , 175),
("P08865" , "Skirts" , 5 , "Piece" , 75 , 30 , 450 , 300);


select * from PRODUCT_MASTER;

    -- *********TABLE_3***********

create table SALESMAN_MASTER(
    salesmanno        varchar(6) primary key,
    salesmanname      varchar(20) not null,
    address1          varchar(30) not null,
    address2          varchar(30),
    city              varchar(20),
    pincode           int(8),
    state             varchar(20),
    salamt            int(10) not null,
    tgttoget          int(8) not null,
    ytdsales          int(8) not null,
    remarks           varchar(60)
);      

describe SALESMAN_MASTER;

insert into SALESMAN_MASTER values 
("S00001", "Aman" , "A/14" , "Worli" , "Mumbai" , 400002 , "Maharashtra" , 3000 , 100 , 50 , "Good" ),
("S00002", "Omkar" , "65" , "Nariman" , "Mumbai" , 400001 , "Maharashtra" , 3000 , 200 , 100 , "Good" ),
("S00003", "Raj" , "P-7" , "Bandra" , "Mumbai" , 400032 , "Maharashtra" , 3000 , 200 , 100 , "Good" ),
("S00004", "Ashish" , "A/5" , "Juhu" , "Mumbai" , 400044 , "Maharashtra" , 3500 , 200 , 150 , "Good" );

-- *************table-4********* 

create table sales_order(
	orderno varchar(6) primary key,
    clientno varchar(20),
	 foreign key(clientno) references client_master1(clientno),
     orderdate date not null,
    salesmanno varchar(20),
	foreign key(salesmanno) references salesman_master(salesmanno),
    delytype char(1),
    billyn char(1),
    delydate date,
    orderstatus varchar(10)
);

desc sales_order;

