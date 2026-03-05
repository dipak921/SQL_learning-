/*
-- SQL CONSTRAINTS
   -- Sql constraints are used to specify rules for the data in a table.
   -- Constraints are used to limint the type of data that can go into a table.
   this ensures the accuracy and reliability of the data in the table. If there is any violation betwween the constraint and the data action, the 
   action is aborted.

   Constraints can be column level or table level. Column level constraints 
   apply to a column, and table level constraints apply to the whole table.

   THE FOLLOWING CONSTRAINTS ARE COMMONLY USED IN SQL :
   -- NOT NULL    - Ensures that a column cannot have a NULL value
   -- UNIQUE      - Ensures that all values in a column are different
   -- PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
   -- FOREING KEY - Uniquely identifies a row/record in anothe table
   -- CHECK       - Ensure that all values in a column satisfies a specific condition
   -- DEFAULT     - Set a default value for a column when no value is specified
   -- INIDEX      - Ues to create and retrive data from the databwse very quickly
*/

use Practice;

create table Emp (EmpId int unique not null,
EmpName varchar(30) not null,
EmpDpt varchar(20) not null, 
Salary varchar(30) not null);


insert into Emp values(1,'Sagar','BBA','25000');

insert into Emp values(3,'Sumit','BCS','');

select * from Emp;

/* Check key */

