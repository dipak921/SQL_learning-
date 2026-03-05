/* Between Operator In SQL */
select * from Employee;
insert into Employee values(12,'Sakshi Kadam','Female',310000,'Sonai');

select * from Employee where Emp_Salary between 30000 and 35000;

/* SHOW ONLY TOP 5 Employee */
select top 5 * from Employee;

/* SHOW ONLY 6O PERCETN EMPLOYEE RECORD IN TABLE */
select top 60 percent * from Employee;

/* DISTINCT IN SQL IS USE FOR ONLY UNIQUE VALUE */
select distinct Emp_Name from Employee;

/* IN Operator in SQL */

/*-- This query selects all records from Employee table
  -- where the employee city is Pune, Nashik, or Delhi */
select *from Employee where Emp_City in('Pune','Nashik','Delhi');

/* -- This query selects all records from Employee table
   -- where the employee city is NOT Pune, Nashik, or Delhi */
select *from Employee where Emp_City not in('Pune','Nashik','Delhi');
