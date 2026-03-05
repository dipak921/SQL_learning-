create database Practice;

use Practice;

create table Student_Bio_Data (STDID int,
STD_NAME varchar(50),
FATHER_NAME varchar(30),
ROLL_NO int,
CLASS varchar(30),
)

select * from Student_Bio_Data;


/* the INSERT INTO statement is used to insert new records in a table*/
/* first way to insert value */
insert into Student_Bio_Data values(1,'Dipak','Annasaheb',12,'5th');
insert into Student_Bio_Data values(2,'Dinesh','Sagar',13,'6th');
insert into Student_Bio_Data values(3,'Rakesh','Sagar',11,'10th');

/* Second way to add data  */
insert into Student_Bio_Data(STDID,STD_NAME) values
(4,'Akash');

/* Update  */
update Student_Bio_Data set FATHER_NAME = 'Ram' where STDID =4;
update Student_Bio_Data set ROLL_NO = 10 where STDID =4;
update Student_Bio_Data set CLASS = '4th' where STDID =4;

/* DELETE FROM ID  */
delete from Student_Bio_Data where STDID = 1;

/* DELETE FROM NAME WHREW NAME IS AKASH */
delete from Student_Bio_Data where STD_NAME = 'Akash';

/* THE TRUNCATE TABLE COMMAND DELETES THE DATA INSIDE A TABLE BUT NOT THE TABLE ITSELF */
truncate table Student_Bio_Data;



