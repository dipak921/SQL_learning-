select * from Employee_Details;

/*
A stored procedure is a set of structured query language (SQL)
statements with are stored in a relational database management 
system as a group, so it can be multiple program.
- Types of Stored Procedures.
 1. System Stored Procedures.
 2. User Define stored procedures.

 WORK TO DO....
 1. Stored Procedure example
 2. Store Procedure  wiht single parameter.
 3. Store procedure with multiple parameters, changing the parameters oreder.
 4. Alter with Stored Procedure.
 5. Seeing the text of the sp sp_helptext
 6. drop with stored Proceure

 Microsoft uses sp_prefix for system stored proceudres.
 7. Using WITH ENCRYPITION in stored proceures.
 sp_help
*/


create procedure spGetEmployees
as
begin
select name,gender from Employee_Details;
end

spGetEmployees;
-- second method to solve
execute spGetEmployees;


create procedure spGetEmployeesById
@id int 
as
begin
select * from Employee_Details where id = @id;
end

execute spGetEmployeesById 3;

create procedure spGetEmployeesByIdANDName
@id int,
@name varchar(50)
as
begin
select *from Employee_Details where id = @id and 
name = @name
end


execute spGetEmployeesByIdANDName 3,'Rahul Kumar';

execute spGetEmployeesByIdANDName 'Rahul Kumar', 3; -- show error

alter procedure spGetEmployeesByIdANDName
@id int,
@name varchar(50)
as
begin
select name , salary from Employee_Details where id = @id and 
name = @name
end



alter procedure spGetEmployeesByIdANDName
@id int,
@name varchar(50)
with encryption
as
begin
select name , salary from Employee_Details where id = @id and 
name = @name
end

execute spGetEmployeesByIdANDName 3,'Rahul Kumar';

sp_helptext spGetEmployeesByIdANDName;


-- delete store procedure
drop procedure spGetEmployeesByIdANDName;