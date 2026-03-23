use practice;

/*
the mysql limit clause
- the LIMIT clause is used to specify the number of records to return.
- The LIMIT clause is useful on large tables with thouseand of records.
	Retruning a large number of record can imapact performance.
*/

-- query -> select column_name(s) from table_name where condition limit offset,no_of_rows;
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Salary DECIMAL(10,2)
);

INSERT INTO Employee (FirstName, LastName, Email, Salary) VALUES
('Amit', 'Sharma', 'amit.sharma@gmail.com', 30000),
('Priya', 'Patil', 'priya.patil@gmail.com', 35000),
('Rahul', 'Verma', 'rahul.verma@gmail.com', 40000),
('Sneha', 'Joshi', 'sneha.joshi@gmail.com', 32000),
('Rohit', 'Kumar', 'rohit.kumar@gmail.com', 45000),
('Neha', 'Singh', 'neha.singh@gmail.com', 38000),
('Vikas', 'Gupta', 'vikas.gupta@gmail.com', 42000),
('Pooja', 'Mehta', 'pooja.mehta@gmail.com', 36000),
('Arjun', 'Nair', 'arjun.nair@gmail.com', 39000),
('Kavita', 'Desai', 'kavita.desai@gmail.com', 41000);

select *from Employee;

select max(Salary) from Employee;
select min(Salary) from Employee;

select * from Employee limit3;

SELECT *
FROM Employee
ORDER BY Salary desc
OFFSET 3 ROWS FETCH NEXT 1 ROWS ONLY;