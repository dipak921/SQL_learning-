/* How To Add and Drop SQL Constraints Using ALTER Command  */
/*
ALTER WITH SQL CONSTRAINTS - The alter table statement is used to add,delete,or modify columns in an exxisting table
1. NOT NULL
2. UNIQUE
3. PRIMARY KEY
4. FOREIGN KEY
5. CHECK
6. DEFAULT
*/
create table Voter(
Voter_Id int,
Voter_Name varchar(30),
Voter_Age int );

select * from Voter;

/* NOT NULl */
alter table Voter alter column Voter_Name varchar(30) not null;
insert into Voter (Voter_Id,Voter_Age)values (1,20);

/*reomve not null */
alter table Voter alter column Voter_Name varchar(30) null;

delete Voter where Voter_Id = 1;
/* UNIQUE */
alter table Voter add unique(Voter_Id);
insert into Voter values(2,'Aditi',23);
 /* remove constraint unique */
 alter table Voter drop constraint [UQ__Voter__E2882764F42114CE];

 /* Primary key */
 alter table Voter alter column Voter_ID int not null;

 alter table Voter add primary key (Voter_Id);
 /* dro primary key */
  alter table Voter drop constraint PK__Voter__E2882765AD126EF4;


  /* foregin  key */

  create table Voter_City(
  C_Id int ,
  C_Name varchar(40),
  Voter_Id int
  );

  select *from Voter;
  select *from Voter_City;

  alter table Voter_City add foreign key (Voter_Id)
  references Voter(Voter_id);

  /* drop foreign key */

  alter table Voter_City drop constraint [FK__Voter_Cit__Voter__1AD3FDA4];

  /* check */
  alter table Voter add check(Voter_Age >= 18);

  insert into Voter values(4,'Nikita',17);
  insert into Voter values(3,'Aditya',24);

  alter table Voter drop constraint [CK__Voter__Voter_Age__1BC821DD];

  /* default */
  alter table Voter add default 18 for Voter_Age;

    insert into Voter (Voter_Id, Voter_Name) values(5,'Sakshi');

	select * from Voter;