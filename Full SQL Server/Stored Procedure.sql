/*
A stored procedure in SQL is a group of one or more precompiled
SQL statements saved as a named unit within a database. It allows
you to save code you write frequently so that you can reuse it by
simply calling the procedure's name rather than rewriting the
entire query
*/

use Dot_Net;
CREATE TABLE Departments
(
	DepartmentId INT PRIMARY KEY IDENTITY(1,1),
	DepartmentName VARCHAR(100)
);

CREATE TABLE Employees
(
	EmployeeId INT PRIMARY KEY IDENTITY(1,1),
	EmployeeName VARCHAR(100),
	Salary DECIMAL(10,2),
	DepartmentId INT,
	JoiningDate DATE,
	FOREIGN KEY(DepartmentId)
	REFERENCES Departments(DepartmentId)
);