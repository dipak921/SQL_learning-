SHOW DATABASES;
USE school_db;
SHOW TABLES;
DESC students;
SELECT * FROM students;

-- Modify / update data from a table
UPDATE students SET contact = 9373576 WHERE id = 101;

/*
The SQL DELETE statement is used to remove existing rows from a table. You use the WHERE clause to specify which rows to delete; 
if you omit the WHERE clause, all rows in the table will be deleted. 

Basic Syntax
The basic syntax for a DELETE statement is:
--> DELETE FROM table_name WHERE condition;
*/

DELETE FROM students WHERE id = 103;

/*
--> DROP 
The SQL DROP statement is a Data Definition Language (DDL) command used to permanently delete database objects like databases, tables, views, or indexes. 
Object 	Syntax	Description
Database -> 	DROP DATABASE database_name;	                    Permanently deletes an entire database and all its contents.
Table	 ->     DROP TABLE table_name;      	                    Permanently removes a table, its structure, and all stored data.
Column	 ->     ALTER TABLE table_name DROP COLUMN column_name;     Removes a specific column from a table's structure.
Index	->      DROP INDEX index_name ON table_name;	D           eletes an index associated with a table.
*/

/*
DATA TYPES 
NUMERIC --> 
| Type         | Description                     | Range (Signed)                                          | Storage                     |
| ------------ | ------------------------------- | ------------------------------------------------------- | --------------------------- |
| TINYINT      | Small integer                   | -128 to 127                                             | 1 byte w3schools​           |
| SMALLINT     | Short integer                   | -32,768 to 32,767                                       | 2 bytes w3schools​          |
| MEDIUMINT    | Medium integer                  | -8,388,608 to 8,388,607                                 | 3 bytes w3schools​          |
| INT          | Standard integer                | -2,147,483,648 to 2,147,483,647                         | 4 bytes w3schools​          |
| BIGINT       | Large integer                   | -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807 | 8 bytes w3schools​          |
| FLOAT        | Single-precision floating point | ±1.175494351E-38 to ±3.402823466E+38                    | 4 bytes devart​             |
| DOUBLE       | Double-precision floating point | ±2.2250738585072014E-308 to ±1.7976931348623157E+308    | 8 bytes devart​             |
| DECIMAL(M,D) | Exact fixed-point number        | Depends on M (precision) and D (scale)                  | Varies (1-17 bytes) devart​ |

STRING DATA TYPES -->
| Type                    | Description                 | Max Length      | Storage                             |
| ----------------------- | --------------------------- | --------------- | ----------------------------------- |
| CHAR(n)                 | Fixed-length string         | 0 to 255        | n bytes w3schools​                  |
| VARCHAR(n)              | Variable-length string      | 0 to 65,535     | L + 1/2 bytes (L=length) w3schools​ |
| TINYTEXT                | Small text                  | 255             | 1 + L bytes w3schools​              |
| TEXT                    | Medium text                 | 65,535          | 2 + L bytes w3schools​              |
| MEDIUMTEXT              | Large text                  | 16,777,215      | 3 + L bytes w3schools​              |
| LONGTEXT                | Very large text             | 4GB             | 4 + L bytes w3schools​              |
| ENUM('val1','val2',...) | String from predefined list | 255 members max | 1-2 bytes devart​                   |
| SET('val1','val2',...)  | Multiple values from set    | 64 members max  | 1-8 bytes devart​                   |

DTAE AND TIME -->
| Type      | Description         | Range                                                  | Storage                        |
| --------- | ------------------- | ------------------------------------------------------ | ------------------------------ |
| DATE      | Date                | '1000-01-01' to '9999-12-31'                           | 3 bytes w3schools​             |
| TIME      | Time                | '-838:59:59' to '838:59:59'                            | 3 bytes + fractions w3schools​ |
| DATETIME  | Date and time       | '1000-01-01 00:00:00' to '9999-12-31 23:59:59'         | 5-8 bytes w3schools​           |
| TIMESTAMP | Date and time (UTC) | '1970-01-01 00:00:01' UTC to '2038-01-19 03:14:07' UTC | 4-8 bytes w3schools​           |
| YEAR      | Year                | 1901 to 2155 (4-digit)                                 | 1 byte w3schools​              |

*/






