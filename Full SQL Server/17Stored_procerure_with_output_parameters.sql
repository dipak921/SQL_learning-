-- Stored procerure with output parameters in sql

select * from MyEmployees

create procedure spGetEmployeesByGender
@Gender varchar(50),
@EmplouyeeCount int Output
as
begin
select @EmplouyeeCount = Count(Emp_Id) from MyEmployees
where Gender = @Gender;
end

Declare @TotalEmployee int
execute spGetEmployeesByGender 'Male', @TotalEmployee Output
select @TotalEmployee;