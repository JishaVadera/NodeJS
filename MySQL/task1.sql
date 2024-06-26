-- Table1


-- \sql

-- \connect root@localhost:3306

-- show databases;

-- use  node(database_name);

-- create table CLIENT_MASTER(
--     clientno varchar(6),
--     name      varchar(20),
--     address1  varchar(30),
--     address2  varchar(30),
--     city      varchar(15),
--     pincode   int(8),
--     state     varchar(15),
--     baldue    int(10)
-- );

-- desc CLIENT_MASTER;

-- insert into CLIENT_MASTER values 
-- ("C00001", "Ivan Bayross" ,"A/14","Worli", "Mumbai" , 400054 , "Maharashtra" , 15000),
-- ("C00002", "Mamta Muzumdar" , "65","Nariman", "Madras" , 780001 , "Tamil Nadu" , 0),
-- ("C00003", "Chhaya Bankar" , "A/14" , "Worli" , "Mumbai" , 400057 , "Maharashtra" , 5000),
-- ("C00004", "Ashwini Joshi" , "P-7" , "Bandra", "Bangalore" , 560001 , "Karnataka" , 0),
-- ("C00005", "Hansel Colaco" , "A/5" , "Juhu" , "Mumbai" , 400060 , "Maharashtra" , 2000),
-- ("C00006", "Deepak Sharma" ,  "P-7" , "Bandra" , "Mangalore" , 560050 , "Karnataka" , 0);


-- show the table 

-- select * from CLIENT_MASTER;



-- table2

-- create table PRODUCT_MASTER(
--     productno        varchar(6),
--     description      varchar(15),
--     profitpercent    int(30),
--     unitmeasure      varchar(10),
--     qtyonhand        int(8),
--     reorderlvl       int(8),
--     sellprice        int(10),
--     costprice        int(10)
-- );

-- describe PRODUCT_MASTER;

-- insert one record

-- insert into PRODUCT_MASTER (productno,description,profitpercent,unitmeasure,qtyonhand,reorderlvl,sellprice,costprice) values
-- ("P0001","T-shirt",5,"Piece",200,50,350,250);

-- insert specific record

-- insert into PRODUCT_MASTER (productno,profitpercent,unitmeasure,qtyonhand,reorderlvl,sellprice,costprice) values
-- ("P0001",5,"Piece",200,50,350,250);

-- insert combine records

-- insert into PRODUCT_MASTER values 
-- ("P0345" , "Shirts" , 6 , "Piece" , 150 , 50 , 500 , 350),
-- ("P06734" , "Cotton Jeans" , 5 , "Piece" , 100 , 20 , 600 , 450),
-- ("P07865" , "Jeans" , 5 , "Piece" , 100 , 20 , 750 , 500),
-- ("P07868" , "Trousers" , 2 , "Piece" , 150 , 50 , 850 , 550),
-- ("P07885" , "Pull Overs" , 2 , "Piece" , 80 , 30 , 700 , 450),
-- ("P07965" , "Denim Shirts" , 4 , "Piece" , 100 , 40 , 350 , 250),
-- ("P07975" , "Lycra Tops" , 5 , "Piece" , 70 , 30 , 300 , 175),
-- ("P08865" , "Skirts" , 5 , "Piece" , 75 , 30 , 450 , 300);

-- show data of table

-- select * from PRODUCT_MASTER(table_name);

-- select particular 1 column

-- select costprice from PRODUCT_MASTER;





-- table3

-- create table SALESMAN_MASTER(
--     salesmanno        varchar(6),
--     salesmanname      varchar(20),
--     address1          varchar(30),
--     address2          varchar(30),
--     city              varchar(20),
--     pincode           int(8),
--     state             varchar(20),
--     salamt            int(10),
--     tgttoget          int(8),
--     ytdsales          int(8),
--     remarks           varchar(60)
-- );

-- insert into SALESMAN_MASTER values 
-- ("S00001", "Aman" , "A/14" , "Worli" , "Mumbai" , 400002 , "Maharashtra" , 3000 , 100 , 50 , "Good" ),
-- ("S00001", "Omkar" , "65" , "Nariman" , "Mumbai" , 400001 , "Maharashtra" , 3000 , 200 , 100 , "Good" ),
-- ("S00001", "Raj" , "P-7" , "Bandra" , "Mumbai" , 400032 , "Maharashtra" , 3000 , 200 , 100 , "Good" ),
-- ("S00001", "Ashish" , "A/5" , "Juhu" , "Mumbai" , 400044 , "Maharashtra" , 3500 , 200 , 150 , "Good" );

-- select * from SALESMAN_MASTER;


