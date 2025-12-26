-- show all existing databases
SHOW DATABASES;

-- creating a new database
-- syntax CREATE DATABASE <DATABASE_name>;
CREATE DATABASE school_db;
CREATE DATABASE test_db;


-- working with database
-- syntax USE <DATABASE_name>;
USE school_db;

-- Deleting a database
-- syntax DROP DTABASE <DATABASE_name>;
DROP DATABASE test_db;

-- TABLE --
/* 
A table is collection of releated deta held in a table formate within a database
ex 
| id  | name    |   city   |
| 101 | dipak   |   Puen   |
| 102 | ram     |   Mumbai |
| 103 | paul    |   Latur  |
| 104 | om      |   Delhi  |

syntax -> 
       CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);
*/

-- create a new table 
CREATE TABLE students(
id int, 
name varchar(50),
 class int);
 
 -- Checking your table is created or not
 -- syntax DESC table_name;
 DESC students;

-- Add data into a table 
INSERT INTO students VALUES(101,"Dipak",6);

-- Add a multiple row at one time 
INSERT INTO students (
id, name, class) VALUE(
102,"Ram",5),
(103,"Sita",6),
(104,"Vishal", 7);

-- Reading data from a table
/*
Syntax 
SELECT * FROM <TABLE_name>;
OR
SELECT column1, column2, ...
FROM table_name;
*/

SELECT *FROM students;
-- only id and name show
SELECT id, name FROM students;

-- use new keyword -> WHERE
/*
The WHERE clause is used to filter records.
It is used to extract only those records that fulfill a specified condition.
*/

SELECT *FROM students WHERE id = 103;
/*
 Add new column in exsting table 
 sytax --> 
 ALTER TABLE table_name
ADD column_name datatype [constraint];
*/
ALTER TABLE students ADD contact int ;
desc students;



-- find out which database it is in 
SELECT DATABASE();





