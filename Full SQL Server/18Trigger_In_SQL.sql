/*
TRIGGER
A Trigger is a special kind of stored procedure that automatically 
executes when an event occurs the database server.
- There are 3 types of triggers
1. DML TRIGGERS (DATA MANIPULATION LANGUAGE) INSERT, UPDATE, DELETE
2. DDL TRIGGERS (DATA DEFINITION LANGUAGE) CREATE, ALTER
3. LOGON TRIGGERS

DML TRIGGERS ARE FIRED AUTOMATICALLY IN RESPOSONSE TO DML EVENTS 
(INSERT, UPDATE AND DELETE)

DML TRIGGERS CAN OF 2 TYPES
1. AFTER TRIGGERS (ALSO CALLED FOR TRIGGERS)
2. INSTEAD OF TRIGGERS
*/



-- Create the table
CREATE TABLE tbl_Student (
    Id INT PRIMARY KEY,
    Name VARCHAR(50),
    Gender VARCHAR(10),
    Class VARCHAR(10),
    Fees INT
);

-- Insert 10 values
INSERT INTO tbl_Student (Id, Name, Gender, Class, Fees) VALUES
(1, 'Amit Sharma', 'Male', '10A', 1500),
(2, 'Priya Verma', 'Female', '10B', 1600),
(3, 'Rahul Singh', 'Male', '9A', 1400),
(4, 'Sneha Patil', 'Female', '9B', 1450),
(5, 'Vikram Rao', 'Male', '8A', 1300),
(6, 'Anjali Mehta', 'Female', '8B', 1350),
(7, 'Karan Joshi', 'Male', '7A', 1200),
(8, 'Neha Kulkarni', 'Female', '7B', 1250),
(9, 'Rohit Desai', 'Male', '6A', 1100),
(10, 'Pooja Nair', 'Female', '6B', 1150);

select * from tbl_Student;

create trigger tr_Student_forinsert 
on tbl_Student
after insert 
as 
begin
 print 'Something happened to the student table';
 end

 INSERT INTO tbl_Student (Id, Name, Gender, Class, Fees) VALUES
(11, 'Sagar Mali', 'Male', '10A', 1750);

-- exsting table inserted 
alter trigger tr_Student_forinsert 
on tbl_Student
after insert 
as 
begin
 select *from inserted
 end

  INSERT INTO tbl_Student (Id, Name, Gender, Class, Fees) VALUES
(12, 'Sagar Patil', 'Male', '10A', 15650);

-- delete 
alter trigger tr_Student_forDelete 
on tbl_Student
after delete 
as 
begin
 select *from deleted
 end

 delete from tbl_Student where id = 9;


