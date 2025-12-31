use school_db;
SHOW TABLES;
DESC students;
 --  NOT NULL 
 /*By default, columns in MySQL allow NULL values. 
 The NOT NULL constraint overrides this default, making data entry mandatory for the specified column. 
 If a user attempts to insert a new row or update an existing row with a NULL value in a NOT NULL column, 
 MySQL will generate an error and reject the operation. */
 
 /*CREATE TABLE table_name (
    column1 datatype NOT NULL,
    column2 datatype NOT NULL,
    column3 datatype, -- This column allows NULL values by default
    ...
);

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);

Modifying an Existing Table
To add a NOT NULL constraint to an existing column,
 use the ALTER TABLE statement with the MODIFY keyword.

SYNTAX-
ALTER TABLE table_name
MODIFY column_name datatype NOT NULL;

EXAMPLE - 
-- First, update any existing NULLs to a non-NULL value if necessary
UPDATE Persons SET Age = 0 WHERE Age IS NULL; 

-- Now, add the NOT NULL constraint
ALTER TABLE Persons
MODIFY Age int NOT NULL;

PRACTICE -
Removing the NOT NULL Constraint
To allow NULL values in a column that currently has a NOT NULL constraint,
 use ALTER TABLE and redefine the column without the NOT NULL keyword: 

*/

 
 
 CREATE TABLE customers(
 id INT NOT NULL,
 name VARCHAR(50) NOT NULL
 );
 
 INSERT INTO customers (id) 
 VALUES (101);
 
  INSERT INTO customers (id, name) 
 VALUES (101, null);
 
 INSERT INTO customers (id, name) 
 VALUES (101, "Dipak");
 
 SELECT * FROM customers;