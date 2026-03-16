/*
Build a simple SQL-based system to store, mangem and report student detail and their subject-wise marks.
- Maintain Student personal records
- Record marks for different subject 
- Generate useful report : averages, top scorers, student count 
- Perform basic CRUDE (Create, Read, Update,Delete)  Operations
*/
create database studentManagementDB;
use studentManagementDB;

-- create frist table

create table students (
student_id int primary key auto_increment,
student_name varchar(50),
student_gender enum ("M","F"),
student_contact varchar(30),
student_email varchar(50)
);

create table subjectt(
subject_id int primary key auto_increment,
subject_name varchar(50)
);


create table marks(
mark_id int primary key auto_increment,
student_id int,
subject_id int,
marks int ,
foreign key (student_id) references students(student_id),
foreign key (subject_id) references subjectt(subject_id)
);

DELIMITER $$

CREATE PROCEDURE addStudent(
    student_name VARCHAR(50),
    student_gender ENUM('M','F'),
    student_contact VARCHAR(30),
    student_email VARCHAR(50)
)
BEGIN
    INSERT INTO students(student_name, student_gender, student_contact, student_email)
    VALUES(student_name, student_gender, student_contact, student_email);
END $$

DELIMITER ;

CALL addStudent('Rahul','M','9876543210','rahul@gmail.com');
CALL addStudent('Priya','F','9876543211','priya@gmail.com');
CALL addStudent('Amit','M','9876543212','amit@gmail.com');
CALL addStudent('Sneha','F','9876543213','sneha@gmail.com');
CALL addStudent('Rohit','M','9876543214','rohit@gmail.com');

select * from students;

-- --------------------------------------------------------------------------------

INSERT INTO subjectt (subject_name)
VALUES 
('Mathematics'),
('Science'),
('English'),
('History'),
('Computer');

select * from subjectt;

-- -----------------------------------------------------------------------
insert into marks (student_id,subject_id,marks)
values 
(1,1,59),(1,2,69),(1,3,45),(1,4,78),(1,5,79),

(2,1,65),(2,2,70),(2,3,60),(2,4,75),(2,5,80),

(3,1,55),(3,2,68),(3,3,72),(3,4,64),(3,5,77),

(4,1,80),(4,2,85),(4,3,78),(4,4,82),(4,5,88),

(5,1,60),(5,2,62),(5,3,58),(5,4,66),(5,5,70);


select *from marks;
-- -------------------------------------------------------------------------------
-- LOGICAL WORKING

select m.mark_id, m.marks, s.subject_name,student_name from marks as m 
join subjectt s on m.subject_id = s.subject_id
join students st on m.student_id = st.student_id
 order by mark_id;
-- --------------------------------------------------------------------------------

SELECT 
s.student_id, 
s.student_name,
SUM(m.marks) AS sum, AVG(m.marks) as avgValue 
FROM students s 
JOIN marks m ON s.student_id = m.student_id
GROUP BY s.student_id, s.student_name ;
-- ---------------------------------------------------------------------------------

SELECT COUNT(*) AS total_students
FROM students;





