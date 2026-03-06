/* PRIMARY KEY AND FOREIGN KEY */

create table Customer (
C_id int primary key,
C_Name varchar(50),
C_Address varchar(max),
City varchar(50)
);

select * from Customer;

insert into Customer values (1,'Ram','Pune','Bihar');
insert into Customer values (2,'Diapk','Satar','Mharashtra');
insert into Customer values (3,'Annasaheb','Beed','Mharashtra');
insert into Customer values (4,'Yogesh','Jamkhed','Panjab');
insert into Customer values (5,'Vishal','Sonai','Rajasthan');

create table [order](
Ord_Id int primary key,
Item varchar(40),
Quantity int,
Price_Of_1 int,
C_id int foreign key references Customer(C_id) /* use foregin key */
);

insert into [order] (Ord_Id,Item,Quantity,Price_Of_1,C_id) values
(112,'Keyboard',2,500,1),
(113,'Monitor',1,200,2),
(114,'Printer',3,100,4),
(115,'USB Cable',5,300,3),
(116,'Laptop Stand',2,450,2);



select * from Customer;
select * from [order];

/*
-- Primary key cannot be null or duplicate.
-- Foreign key can be null or duplicate.
-- We cannot insert in order table with id that is not present in customer table
-- We cannot delete from customer table if id is present in orders table 

--> STEPS TO COVER :
---- SYNTAX : Of creating foreing key while creating a table
C_ID DATA_TYPE FOREIGN KEY REFERENCES CUSTOMER(C_ID)

---- Droping foreign key constraint with alter statement.
----SYNTAX : ALTER TABLE TABLE_NAME DROP CONSTRAINT CONSTRINT_NAEM

---Creating foreign key in existing table with alter statement.
-----SYNTAX : ALTER TABLE TABLE_NAME ADD FOREIGN KEY(C_ID) REFERENCES CUSTOMER(C_ID)


*/

/* if you want to delete foregin key */

alter table [order] drop constraint FK__order__C_id__04E4BC85;

/* if you want to add foregin key in existing table */

alter table [order] add foreign key(C_id) references Customer(C_id);