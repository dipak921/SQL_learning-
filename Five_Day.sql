-- DEFAULT

/* In MySQL, the DEFAULT constraint is used to specify a value that will be automatically inserted into a 
column if no other value is explicitly provided during an INSERT operation. This ensures that the column 
always has a value, preventing errors if a NOT NULL column is left empty. 

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes',
    OrderDate date DEFAULT CURRENT_DATE()
);
 When altering an existing table
To add a default value to an existing column, use the ALTER TABLE statement.
 
ALTER TABLE Persons
ALTER City SET DEFAULT 'New York';

To drop a DEFAULT constraint
To remove an existing default value from a column, use the DROP DEFAULT clause. 

ALTER TABLE Persons
ALTER City DROP DEFAULT;


*/
