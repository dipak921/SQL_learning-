CREATE TABLE Employee(
EmployeeId INT PRIMARY KEY,
EmployeeName VARCHAR(50),
DepartmentId INT NULL
);
 
CREATE TABLE Departments(
DepartmentId INT PRIMARY KEY,
DepartmentName VARCHAR(50)
);
 
 
INSERT INTO Employee VALUES
(101,'Pranav',1),
(102,'Amit',2),
(103,'Neha',2),
(104,'Rahul',NULL),
(105,'Sneha',5)
 
 
INSERT INTO Departments VALUES
(1,'HR'),
(2,'IT'),
(3,'Finance'),
(4,'Admin')




--Inner Join 
--Only matching records from both tables .
SELECT e.EmployeeName,d.DepartmentName
FROM Employee e
INNER JOIN Departments d
ON e.DepartmentId = d.DepartmentId;


--Left Join 
-- Show all data in Left table and Right table matching data.
SELECT e.EmployeeName,d.DepartmentName
FROM Employee e
LEFT JOIN Departments d
ON e.DepartmentId = d.DepartmentId;


--Right Join 
-- Show all data in right table and left table matching data.
SELECT e.EmployeeName,d.DepartmentName
FROM Employee e
RIGHT JOIN Departments d
ON e.DepartmentId = d.DepartmentId;

--Full Join 
-- All record form both table .
SELECT e.EmployeeName,d.DepartmentName
FROM Employee e
FULL JOIN Departments d
ON e.DepartmentId = d.DepartmentId;

-- Cross Join
-- it retrun every Possible combinations
SELECT e.EmployeeName,d.DepartmentName
FROM Employee e
CROSS JOIN Departments d



