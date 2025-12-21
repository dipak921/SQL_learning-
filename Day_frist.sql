create database mydemo;  -- create databse 

use mydemo;     -- choose database for work

show databases;   -- show databases in our computer

CREATE TABLE dataofcustomer
(
	custid varchar(6) PRIMARY KEY,
    fname varchar(30),
    mname varchar(30),
	lname varchar(30),
    city varchar(15),
    age int(10),
    mobileno varchar(10),
    occupation varchar(10),
    dob DATE
);

SHOW TABLES; -- show tables in our database.
desc dataofcustomer;   -- show a colunm name and datatype with constraint

INSERT INTO dataofcustomer VALUES('C00001','Ramesh','Chandra','Sharma','Delhi',45,'9543198345','Service','1976-12-06');
INSERT INTO dataofcustomer VALUES('C00002','Avinash','Sunder','Minha','Delhi',32,'9876532109','Service','1974-10-16');
INSERT INTO dataofcustomer VALUES('C00003','Rahul',null,'Rastogi','Delhi',24,'9765178901','Student','1981-09-26');
INSERT INTO dataofcustomer VALUES('C00004','Parul',null,'Gandhi','Delhi',46,'9876532109','Housewife','1976-11-03');
INSERT INTO dataofcustomer VALUES('C00005','Naveen','Chandra','Aedekar','Mumbai',23,'8976523190','Service','1976-09-19');
INSERT INTO dataofcustomer VALUES('C00006','Chitresh',null,'Barwe','Mumbai',18,'7651298321','Student','1992-11-06');
INSERT INTO dataofcustomer VALUES('C00007','Amit','Kumar','Borkar','Mumbai',76,'9875189761','Student','1981-09-06');
INSERT INTO dataofcustomer VALUES('C00008','Nisha',null,'Damle','Mumbai',43,'7954198761','Service','1975-12-03');
INSERT INTO dataofcustomer VALUES('C00009','Abhishek',null,'Dutta','Kolkata',67,'9856198761','Service','1973-05-22');
INSERT INTO dataofcustomer  VALUES('C00010','Shankar',null,'Nair','Chennai',90,'8765489076','Service','1976-07-12');

select * from dataofcustomer;

select count(age) as total_customer from dataofcustomer;

select count(age) as customer_from__Delhi from dataofcustomer where city= "Delhi";

select avg(age) as average_age from dataofcustomer;

select sum(age) as sum_of_age from dataofcustomer;

select count(fname), city from dataofcustomer group by city;


