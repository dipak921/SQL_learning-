/* Cascading Referential Integrity Constraints In SQL
OR
Cascading Referential Integrity/Cascading Foreign key in SQL.

What are Cascading Referential Integrity Constraints in SQL Server.?
-> The cascading Referential Integrity Constraints in sql server are the 
		foreign key constraints that tell sql server to performe certain actions 
		whenever a user attempts to delete or update a primary key to which an 
		existing foreign keys points

What are the Actions Performed By SQL Server.?
-> In order to tell the SQL server what actions to perform whenever a user
	trying to delete or update a primary key value to which existing 
	foreign key points , we are provided with following option while working 
	with cascading Referential intergrity Constraints.
	1. No Action (by defalult)
	   - This is the default action that sql server performs
	   - This specifies that if an update or deletes statement affects rows in foreign key tables, then
	      the action will be denied and rolled back. An error message will be raised.
	*/
	delete from Customer where C_id = 2;


	/*
	2. CASCADE
	- If a user tries to delete the statements(s) which will affect the rows in the 
		foreign key table, then those rows will be deleted when the primary key reocord is deleted
    - Similarly, if an update statments affects rows in the foreign key table, then those rows will 
		be updated with the value form the primary key record after it has been updated.
*/
drop table Customer;
create table Customer(
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
C_id int foreign key references Customer(C_id) 
on delete cascade
on update cascade
);

insert into [order] (Ord_Id,Item,Quantity,Price_Of_1,C_id) values
(112,'Keyboard',2,500,1),
(113,'Monitor',1,200,2),
(114,'Printer',3,100,4),
(115,'USB Cable',5,300,3),
(116,'Laptop Stand',2,450,2);



select * from Customer;
select * from [order];
 
 delete from Customer where C_id = 2;
 update  Customer  set C_id = 7 where C_id =4;


/*

	3. Set default
	4. Set Null
	
	when we add a foreign key to a column then we have to add one of these action with foreign key.

*/

use Practice;

select *from Customer; 

select *from [order]; 


