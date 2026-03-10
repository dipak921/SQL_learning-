/*
	COMPOSITE KEY IN SQL
	- Composite key, or composite primary key, refers to cases where more than one coumn is used 
		to specify the primary key key of a table.
	- In such cases, all foreign keys will also need to include all the columns is the composite key.
	- Note that the columns that make up a composite key can be of different data types.
*/



use Practice;

create table Emp2(
Emp_Id int not null,
Dept_Id int not null,
Emp_Name varchar(40),
Emp_Gender varchar(10),
Emp_Salary int,
Dept_Name varchar(50),
Dept_Head varchar(50),
Dept_Locations varchar(50),
primary key(Emp_Id, Dept_Id)
);

select * from Emp2;

INSERT INTO Emp2 (Emp_Id, Dept_Id, Emp_Name, Emp_Gender, Emp_Salary, Dept_Name, Dept_Head, Dept_Locations)
VALUES
(101, 1, 'Rahul', 'Male', 35000, 'IT', 'Suresh', 'Pune'),
(102, 1, 'Priya', 'Female', 40000, 'IT', 'Suresh', 'Pune'),
(103, 2, 'Amit', 'Male', 30000, 'HR', 'Mahesh', 'Mumbai'),
(104, 2, 'Sneha', 'Female', 32000, 'HR', 'Mahesh', 'Mumbai'),
(105, 3, 'Kunal', 'Male', 45000, 'Finance', 'Rajesh', 'Delhi'),
(106, 3, 'Pooja', 'Female', 38000, 'Finance', 'Rajesh', 'Delhi'),
(107, 4, 'Rohit', 'Male', 36000, 'Sales', 'Anil', 'Nashik');

/* how to add primary key in existing table */
alter table Emp2 add primary key (Emp_Id,Dept_Id);
