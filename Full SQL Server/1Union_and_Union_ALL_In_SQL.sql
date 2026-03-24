use practice;

-- Create the first table
CREATE TABLE Employees_HQ (
    EmployeeID INT,
    FirstName VARCHAR(50),
    Department VARCHAR(50)
);

-- Insert data into the first table
INSERT INTO Employees_HQ (EmployeeID, FirstName, Department)
VALUES 
    (1, 'Alice', 'IT'),
    (2, 'Bob', 'HR'),
    (3, 'Charlie', 'Finance'),
	(4,'Ram','Sales')
	;

-- Create the second table
CREATE TABLE Employees_Branch (
    EmployeeID INT,
    FirstName VARCHAR(50),
    Department VARCHAR(50)
);

-- Insert data into the second table
INSERT INTO Employees_Branch (EmployeeID, FirstName, Department)
VALUES 
    (1, 'Alice', 'IT'),       -- Duplicate across tables
    (4, 'David', 'Sales'),
    (5, 'Eve', 'Marketing');


select * from Employees_HQ;
select * from Employees_Branch;

select * from Employees_HQ
union --Notice that Alice only appears once in the final list, even though she was in both tables.
select * from Employees_Branch;

select * from Employees_HQ
union all -- If you want to keep every record from both tables, including the duplicates, you use UNION ALL. This is also faster for SQL Server to process because it doesn't have to spend time searching for and removing duplicates.
select * from Employees_Branch;


/* -> The EXCEPT operator in sql is used to retrieve all the unique records from the left operand (query),
except the records that are present in the result set of the right operand(query)
*/
select * from Employees_HQ
except --Notice that Alice is missing. Because she exists in the Branch table, she is subtracted from the final results. We only see the people exclusive to HQ.
select * from Employees_Branch;

select * from Employees_HQ
intersect -- Notice that only Alice is returned. She is the only employee whose exact details exist in both the HQ table and the Branch table.
select * from Employees_Branch;


