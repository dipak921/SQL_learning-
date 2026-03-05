/* THE SELECT STATEMENT IS USED TO DISPLAY DATA FROM DATABASE */

/* frist create voter table */
create table Voter_list(Voter_id int primary key,
Voter_Name varchar(30), Voter_Age int);

/* insert a values*/
insert into Voter_list (Voter_id,Voter_Name,Voter_Age) values
(1, 'Rahul Sharma', 25),
(2, 'Priya Patil', 30),
(3, 'Amit Kumar', 22),
(4, 'Sneha Deshmukh', 28),
(5, 'Rohan Verma', 35),
(6, 'Anjali Singh', 24),
(7, 'Vikram Joshi', 40),
(8, 'Pooja Mehta', 27),
(9, 'Karan Gupta', 32),
(10, 'Neha Kulkarni', 29);

/* I WANT TO VIWE ALL RECORD IN VOTER TABLE */
select *from Voter_list;

/* NOW I WANT SEE ONLY VOTER NAME AND AGE*/
select Voter_Name,Voter_Age from Voter_list;

/* It will display all records from the Voter_list table sorted in ascending (A to Z) order based on the voter names.  */
select *from Voter_list order by Voter_Name;
 
 /* NOW SHOW ONLY SPCIFICS RECORD WHERE ID IS 7 AND 3 */
 select *from Voter_list where Voter_id = 7 or Voter_id =3;

 /* NOW I WANT SHOW ALL RECORD IN ASENDING ORDER */
 select *from Voter_list order by Voter_Name;

 /* NOW DESCENDING ORDER */
  select *from Voter_list order by Voter_Age desc;

  /*
  -> THE SQL OREDER BY KEYWORD
   --The ORDER BY Keyword sorts the records in ascending order by default.
   --To sort the records in descending order, use the DESC Keyword
  */

  /* SHWO ALL TABLE NAEM IN DATABASE */
SELECT * FROM INFORMATION_SCHEMA.TABLES;

/* CREATE NEW TABLE EMPLOYEE AND INSERT 10 RECODE */
CREATE TABLE Employee (
    Emp_Id INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Gender varchar(10),
    Emp_Salary DECIMAL(10,2),
    Emp_City VARCHAR(50)
);

/* INSERT A RECORD  */
INSERT INTO Employee (Emp_Id, Emp_Name, Gender, Emp_Salary, Emp_City) VALUES
(1, 'Rahul Sharma', 'Male', 25000.00, 'Pune'),
(2, 'Priya Patil', 'Female', 32000.00, 'Mumbai'),
(3, 'Amit Kumar', 'Male', 28000.00, 'Delhi'),
(4, 'Sneha Deshmukh', 'Female', 30000.00, 'Nagpur'),
(5, 'Rohan Verma', 'Male', 40000.00, 'Bangalore'),
(6, 'Anjali Singh', 'Female', 35000.00, 'Chennai'),
(7, 'Vikram Joshi', 'Male', 45000.00, 'Hyderabad'),
(8, 'Pooja Mehta', 'Female', 33000.00, 'Ahmedabad'),
(9, 'Karan Gupta', 'Male', 37000.00, 'Jaipur'),
(10, 'Neha Kulkarni', 'Female', 29000.00, 'Nashik');

insert into Employee values (11, 'Sakshi Kadam', 'Female', 30000.00, 'Nashik')

select *from Employee;

select *from Employee
order by Emp_Name;
/* descending order*/
select *from Employee
order by Emp_Name desc;

/* 
-- The LIKE operator is used in a where clause to search for a specified pattern in a column
-- There are 3 wildcard used in conjunction with the like operator
 -- % The percent sing represent zero, one, or multiple characters
 -- (_) The underscore repressents a single character
 -- [] for multiple characters

 WHERE EMP_NAME LIKE 'a%' - find any values that starts with "a"
 --------||---- LIKE '%a' - find any values that end with "a"
 --------||---- LIKE '%or%' - finds any values that have "or" in any positions
 --------||---- LIKE '_r%'  - Finds any values that have "r"in the second position
*/

/* Frist Name is staring a */
select * from Employee where Emp_Name like 'a%';

/* Frist Name is ending a */
select * from Employee where Emp_Name like '%a';

/* Contains the letters "sa" anywhere in the name. */
select * from Employee where Emp_Name like '%sa%';

/*
-- This query selects employees whose name starts with 'a'
-- and has exactly 3 characters total
-- '_' means exactly one character
*/
select * from Employee where Emp_Name like 'a__';

/*
-- This query selects employees whose name has exactly 4 characters
-- and ends with letter 'm'
*/
select * from Employee where Emp_Name like '___m';

/*-- This query selects all records from Employee table
-- where the employee name starts with any letter from A to S
*/
select * from Employee where Emp_Name like '[a,b,c]%';
select * from Employee where Emp_Name like '[a-s]%';


