/*
- Step 1:
- Create Database and Table.
- Create Stored Procedure for all operations e-g.
		Insert,
		Update,
		Delete,
		Read

*/
DROP DATABASE CrudeADOdb;

create database CrudeADOdb;

use CrudeADOdb;


create table Employees(
Id int primary key identity,
name varchar(50) not null,
gender varchar(10) not null,
age int not null,
designagtion varchar(50) not null,
city varchar(30) not null
);


INSERT INTO Employees (name, Gender, age, designagtion, city) VALUES
('Amit Sharma', 'Male', 28, 'Software Engineer', 'Pune'),
('Priya Patil', 'Female', 25, 'HR Executive', 'Mumbai'),
('Rahul Verma', 'Male', 30, 'Project Manager', 'Delhi'),
('Sneha Kulkarni', 'Female', 27, 'QA Engineer', 'Pune'),
('Vikas Singh', 'Male', 35, 'Team Lead', 'Bangalore'),
('Neha Joshi', 'Female', 29, 'Business Analyst', 'Hyderabad'),
('Rohan Deshmukh', 'Male', 26, 'Web Developer', 'Pune'),
('Anjali Mehta', 'Female', 31, 'UI/UX Designer', 'Ahmedabad'),
('Karan Gupta', 'Male', 33, 'Database Admin', 'Chennai'),
('Pooja Nair', 'Female', 28, 'Software Tester', 'Kochi');

select *from Employees;

Go

CREATE PROCEDURE spAddEmployee(
@name varchar(50),
@gender varchar(10),
@age int,
@designagtion varchar(50),
@city varchar(50)
)
as
Begin
Insert into Employees(name,gender, age, designagtion,city)
values(@name, @gender, @age, @designagtion, @city)
End

-- Update employee

CREATE PROCEDURE spUpdateEmployee (
@Id int,
@name varchar(50),
@gender varchar(10),
@age int,
@designation varchar(50),
@city varchar(50)
)
as 
Begin
Update Employees set name = @name, gender = @gender,
age = @age, designagtion = @designation, 
city = @city 
where id = @Id
End

-- delete procedure
Go
CREATE PROCEDURE spDeleteEmployee
(
@Id int
)
as
begin 
	Delete from Employees where id = @Id
	End

-- get all Detail

CREATE PROCEDURE spGetAllEmployee
as 
begin
	select * from Employees order by id
	end






