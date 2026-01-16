/* =========================================
   SQL COMPLETE CHEAT SHEET (BEGINNER–ADVANCED)
   Author: Dipak
========================================= */

/* ================================
   1. DATABASE QUERIES
================================ */
CREATE DATABASE sample_db;
SHOW DATABASES;
USE sample_db;
DROP DATABASE sample_db;

/* ================================
   2. TABLE QUERIES
================================ */
CREATE TABLE department (
    id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 18),
    salary DECIMAL(10,2),
    dept_id INT,
    city VARCHAR(50),
    FOREIGN KEY (dept_id) REFERENCES department(id)
);

SHOW TABLES;
DESC employee;
DROP TABLE employee;
TRUNCATE TABLE employee;

/* ================================
   3. INSERT QUERIES
================================ */
INSERT INTO department VALUES (1, 'IT'), (2, 'HR');

INSERT INTO employee VALUES
(1, 'Dipak', 25, 50000, 1, 'Pune'),
(2, 'Amit', 24, 45000, 1, 'Mumbai'),
(3, 'Rahul', 28, 60000, 2, 'Pune');

INSERT INTO employee (id, name, age, salary, dept_id, city)
VALUES (4, 'Suresh', 30, 70000, 2, 'Delhi');

/* ================================
   4. SELECT QUERIES
================================ */
SELECT * FROM employee;
SELECT name, age FROM employee;
SELECT DISTINCT city FROM employee;

/* ================================
   5. WHERE CONDITIONS
================================ */
SELECT * FROM employee WHERE age > 25;
SELECT * FROM employee WHERE city = 'Pune' AND salary > 40000;
SELECT * FROM employee WHERE city = 'Pune' OR city = 'Mumbai';
SELECT * FROM employee WHERE NOT city = 'Delhi';

/* ================================
   6. LIKE OPERATOR
================================ */
SELECT * FROM employee WHERE name LIKE 'D%';
SELECT * FROM employee WHERE name LIKE '_m%';

/* ================================
   7. IN / BETWEEN
================================ */
SELECT * FROM employee WHERE age IN (24, 28);
SELECT * FROM employee WHERE salary BETWEEN 45000 AND 65000;

/* ================================
   8. ORDER BY
================================ */
SELECT * FROM employee ORDER BY age ASC;
SELECT * FROM employee ORDER BY salary DESC;

/* ================================
   9. LIMIT / TOP
================================ */
SELECT * FROM employee LIMIT 2;          -- MySQL
-- SELECT TOP 2 * FROM employee;        -- SQL Server

/* ================================
   10. UPDATE QUERY
================================ */
UPDATE employee SET salary = 52000 WHERE id = 1;

/* ================================
   11. DELETE QUERY
================================ */
DELETE FROM employee WHERE id = 4;

/* ================================
   12. AGGREGATE FUNCTIONS
================================ */
SELECT COUNT(*) FROM employee;
SELECT SUM(salary) FROM employee;
SELECT AVG(salary) FROM employee;
SELECT MAX(age) FROM employee;
SELECT MIN(age) FROM employee;

/* ================================
   13. GROUP BY
================================ */
SELECT city, COUNT(*) FROM employee GROUP BY city;

/* ================================
   14. HAVING
================================ */
SELECT city, COUNT(*)
FROM employee
GROUP BY city
HAVING COUNT(*) > 1;

/* ================================
   15. JOINS
================================ */
SELECT e.name, d.dept_name
FROM employee e
INNER JOIN department d ON e.dept_id = d.id;

SELECT *
FROM employee e
LEFT JOIN department d ON e.dept_id = d.id;

SELECT *
FROM employee e
RIGHT JOIN department d ON e.dept_id = d.id;

/* ================================
   16. SUBQUERY
================================ */
SELECT * FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);

/* ================================
   17. CONSTRAINTS (EXAMPLE)
================================ */
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 18),
    email VARCHAR(50) UNIQUE,
    city VARCHAR(30) DEFAULT 'Pune'
);

/* ================================
   18. INDEX
================================ */
CREATE INDEX idx_name ON employee(name);
DROP INDEX idx_name ON employee;

/* ================================
   19. VIEW
================================ */
CREATE VIEW emp_view AS
SELECT name, salary FROM employee;

SELECT * FROM emp_view;

/* ================================
   20. STORED PROCEDURE
================================ */
DELIMITER //
CREATE PROCEDURE GetEmployees()
BEGIN
    SELECT * FROM employee;
END //
DELIMITER ;

CALL GetEmployees();

/* ================================
   21. FUNCTION
================================ */
DELIMITER //
CREATE FUNCTION GetFixedAge()
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN 25;
END //
DELIMITER ;

/* ================================
   22. TRANSACTION
================================ */
START TRANSACTION;
UPDATE employee SET salary = salary + 1000 WHERE id = 2;
COMMIT;

START TRANSACTION;
DELETE FROM employee WHERE id = 99;
ROLLBACK;

/* ================================
   23. UNION / UNION ALL
================================ */
SELECT city FROM employee
UNION
SELECT city FROM student;

SELECT city FROM employee
UNION ALL
SELECT city FROM student;

/* ================================
   24. CASE STATEMENT
================================ */
SELECT name,
CASE
    WHEN age >= 25 THEN 'Senior'
    ELSE 'Junior'
END AS category
FROM employee;

/* ================================
   25. EXISTS
================================ */
SELECT * FROM employee e
WHERE EXISTS (
    SELECT 1 FROM department d WHERE d.id = e.dept_id
);

/* ================================
   26. ALTER TABLE
================================ */
ALTER TABLE employee ADD experience INT;
ALTER TABLE employee DROP experience;
ALTER TABLE employee MODIFY city VARCHAR(100);

/* ================================
   27. NULL CHECK
================================ */
SELECT * FROM employee WHERE city IS NULL;
SELECT * FROM employee WHERE city IS NOT NULL;

/* ================================
   28. COMMENTS
================================ */
-- This is a single-line comment
/* This is a multi-line comment */
