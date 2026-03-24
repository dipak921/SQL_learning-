/* -> Aggregate Functions OR Scalar Function in SQL
SQL server aggreagte function perform a calculation on set of valuse and 
return a single value

- SUM
- MAX
- MIN
- AVG
- COUNT
*/

CREATE TABLE Employee_Details (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    gender VARCHAR(10),
    Salary DECIMAL(10, 2),
    city VARCHAR(50)
);

INSERT INTO Employee_Details (id, name, gender, Salary, city) 
VALUES
    (1, 'Aarav Patel', 'Male', 55000.00, 'Mumbai'),
    (2, 'Priya Sharma', 'Female', 62000.00, 'Delhi'),
    (3, 'Rahul Kumar', 'Male', 48000.00, 'Bangalore'),
    (4, 'Neha Gupta', 'Female', 75000.00, 'Hyderabad'),
    (5, 'Aditya Singh', 'Male', 51000.00, 'Pune'),
    (6, 'Ananya Desai', 'Female', 68000.00, 'Chennai'),
    (7, 'Vikram Malhotra', 'Male', 82000.00, 'Kolkata'),
    (8, 'Kavya Reddy', 'Female', 59000.00, 'Ahmedabad'),
    (9, 'Rohan Joshi', 'Male', 45000.00, 'Jaipur'),
    (10, 'Sneha Iyer', 'Female', 71000.00, 'Chennai');

	INSERT INTO Employee_Details (id, name, gender, Salary, city) 
VALUES
    (11, 'Amit Verma', 'Male', 52000.00, 'Mumbai'),
    (12, 'Pooja Nair', 'Female', 61000.00, 'Chennai'),
    (13, 'Suresh Pillai', 'Male', 49000.00, 'Delhi'),
    (14, 'Ritu Singh', 'Female', 77000.00, 'Mumbai'),
    (15, 'Karan Patel', 'Male', 85000.00, 'Jaipur'),
    (16, 'Meera Menon', 'Female', 66000.00, 'Delhi'),
    (17, 'Nitin Deshmukh', 'Male', 92000.00, 'Pune'),
    (18, 'Shruti Rao', 'Female', 58000.00, 'Pune'),
    (19, 'Rajesh Kumar', 'Male', 46000.00, 'Hyderabad'),
    (20, 'Deepika Joshi', 'Female', 95000.00, 'Mumbai');

	select sum(Salary) as SumofSalary from Employee_Details;
	select max(Salary) as maximiumSalary from Employee_Details;
	select min(Salary) as mininumSalry from Employee_Details;
	select avg(Salary) as AvearagSalary from Employee_Details;
	select Count(Salary) as CountofEmp from Employee_Details;
	select * from Employee_Details;

/* -> GROUP BY COMMAND IN SQL SERVER
- The GROUP BY statement is used with aggregate function (COUNT,MAX, MIN, SUM, AVG) 
to group the result-set by one or more columns.
- We can only select those columns which were present in group by command
- We can use one or more than one column in a group by clause.
*/

-- GROUP BY COMMAND
 select city, sum(Salary) as [total Salary Accroding to Cities] from Employee_Details
 group by city;

 select gender, city, sum(Salary) as [total Salary Accroding to Cities] from Employee_Details
 group by gender, city;
