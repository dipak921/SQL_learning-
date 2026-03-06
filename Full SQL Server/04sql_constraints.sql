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

create table Voter_List(Id int primary key, Voter_Name varchar(30),Voter_Age int check(Voter_Age >=18));

insert into Voter_List(Id, Voter_Name, Voter_Age) values
(1,'Sagar',20),
(2,'Dipak',34),
(3,'Rahul',28),
(4,'Amit',30),
(5,'Priya',25),
(6,'Sneha',27),
(7,'Rohit',32),
(8,'Pooja',24),
(9,'Kunal',29),
(10,'Neha',26);

/* THIS QUERY SHOW ERROR */
insert into Voter_List(Id,Voter_Name, Voter_Age) values
(3,'Ram',2);


select *from Voter_List;

/* DEFAULT CONSTRINT */
create table student(Std_Id int ,Std_Name varchar(30),Std_Course varchar(30) default ('BA'));

insert into student values(101,'Shubham','MBA');
insert into student values(102,'Pandurang','BCS');
insert into student values(103,'Yash','');
/* If you want the default course (BA), write: */
INSERT INTO Student (Std_Id, Std_Name)
VALUES (104,'Kunal');

select * from student;