create database hr;

use hr;

create table tbl_department(
dept_id int identity primary key,
dept_name nvarchar(50) not null unique
);



-- Insert 5 values
INSERT INTO tbl_department (dept_name)
VALUES 
    ('Human Resources'),
    ('Finance'),
    ('Information Technology'),
    ('Marketing'),
    ('Operations');

	select *from tbl_department;



	create table tbl_applicant_personal(
	ap_id int identity primary key,
	ap_name nvarchar(50) not null,
	ap_cninc nvarchar(30) not null unique,
	ap_phone1 nvarchar(30) not null unique,
	ap_phone2 nvarchar(30) not null unique,
	ap_email nvarchar(30) not null unique,
	ap_image nvarchar(max) not null,
	ap_gender int,
	ap_dob date
	);

create table tbl_ssc(
ssc_id int identity primary key,
ssc_percentage float,
ssc_institue nvarchar(100) not null,
ssc_doc nvarchar(max),
ssc_fk_ap_id int foreign key references tbl_applicant_personal(ap_id)
);

create table tbl_hsc(
hsc_id int identity primary key,
hsc_percentage float,
hsc_institue nvarchar(100) not null,
hsc_doc nvarchar(max),
hsc_fk_ap_id int foreign key references tbl_applicant_personal(ap_id)
);

create table tbl_grad(
grad_id int identity primary key,
grad_percentage float,
grad_institue nvarchar(100) not null,
grad_doc nvarchar(max),
grad_fk_ap_id int foreign key references tbl_applicant_personal(ap_id)
);

create table tbl_mas(
mas_id int identity primary key,
mas_percentage float,
mas_institue nvarchar(100) not null,
mas_doc nvarchar(max),
mas_fk_ap_id int foreign key references tbl_applicant_personal(ap_id)
);




