/* Alter Command */
/* CHANGE DATABASE NAME */
alter database Practice modify name = Lerner;

/*Second method to change database name */
execute sp_renamedb 'Lerner','Practicr';
execute sp_renamedb 'Practicr','Practice';

/* CHANGE TABLE NAME */

execute sp_rename 'Employee','Emp1';

select * from Employee;

select * from Emp1;
select * from Student_Bio_Data;

/* ADD COLUM IN THE Student_Bio_Data */ 
alter table Student_Bio_Data add CITY varchar(20);

/* NOW ADD THE CITY OF STUDENT BIO DATA TABLE ONE BY ONE */

update Student_Bio_Data set CITY = 'Pune' where STDID = 101;

/* NOW I WANT TO DELETE SPECIFIC COLUM  */
alter table Student_Bio_Data drop column FATHER_NAME;

/* USIGN ALTER COMMAND CHANGE A DATATYPE */

alter table Student_Bio_Data alter column STD_NAME nvarchar(20);

/* --------INDENTITY
 -- > Auto-incremetn allows a unique number to be generated automatically when a new record is inserted into a table

 ----------AUTO INCREMENT

*/

create table Teacher (T_id int primary key identity,T_Name varchar(40) not null, T_Qualifications varchar(20), T_Salary varchar(30) not null);

select * from Teacher;

insert into Teacher values ('Annasaheb','BBA-CA','20000');
insert into Teacher values ('Yogesh','BCA','25000');
insert into Teacher values ('Pritam','BA','8000');
insert into Teacher values ('Baban','B.Com','10000');

drop table Teacher;

/* Range */

create table Teacher (T_id int primary key identity(100,5),T_Name varchar(40) not null, T_Qualifications varchar(20), T_Salary varchar(30) not null);

select * from Teacher;

insert into Teacher values ('Annasaheb','BBA-CA','20000');
insert into Teacher values ('Yogesh','BCA','25000');
insert into Teacher values ('Pritam','BA','8000');
insert into Teacher values ('Baban','B.Com','10000');

/* WHAT IS ALIAS IN SQL 
-- An alias only exists for the duration of that query.
-- An alias is created with the AS keyword.

*/

select * from Student_Bio_Data;

select stdid as Student_Id,std_name as Student_Name from Student_Bio_Data;
