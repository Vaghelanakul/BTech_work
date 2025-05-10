alter proc pr_person_insert 
	
	@Firstname varchar(50),
	@Lastname varchar(50),
	@Salary decimal(8,2),
	@JoiningDate datetime,
	@DepartmentID	int,
	@DesignationID int
	as
	begin
		insert into person 
		values(
			@Firstname,
			@Lastname,
			@Salary,
			@JoiningDate,
			@DepartmentID,
			@DesignationID
		)
	end


create proc pr_person_delete
	@WorkerID int
	as
	begin
		delete from person where WorkerID=@WorkerID
	end


create proc pr_person_update
	@WorkerID int,
	@Firstname varchar(50),
	@Lastname varchar(50),
	@Salary decimal(8,2),
	@JoiningDate datetime,
	@DepartmentID	int,
	@DesignationID int
	as
	begin
		update person set 
		FirstName=@Firstname,
		LastName=@Lastname,
		Salary=@Salary,
		JoiningDate=@JoiningDate,
		DepartmentID=@DepartmentID,
		DesignationID=@DesignationID
		where WorkerID=@WorkerID
		end


create proc pr_designation_insert
	@DesignationID	int,
	@DesignationName varchar(100)
	as 
	begin
		insert into Designation values(
			@DesignationID,
			@DesignationName
		)
	end


create proc pr_designation_update
	@DesignationID int,
	@DesignationName varchar(100)
	AS
	begin
		update Designation set DesignationName=@DesignationName
		where DesignationID=@DesignationID
	end

create proc pr_designation_delete
	@DesignationID int
	as
	begin 
		delete from designation where DesignationID=@DesignationID
	end


create proc pr_department_insert
	@DepartmentID int,
	@DepartmentName varchar(100)
	as
	begin
		insert into DEPARTMENT values(@DepartmentID,@DepartmentName)
	end


create proc pr_department_update
	@DepartmentID int,
	@DepartmentName varchar(100)
	as
	begin
		update department set DepartmentName=@DepartmentName
		where DepartmentID=@DepartmentID
	end


create proc pr_department_delete
	@DepartmentID int
	as
	begin
		delete from department where DepartmentID=@DepartmentID
	end

exec pr_person_insert 'rahul','Anshu',56000,'01-jan-1990',12,2

select * from DEPARTMENT
select * from designation
select * from person



create function fun_person()
returns table
as
return (select * from [dbo].[EMP_DETAILS] where EMP_FNAME  like 'b%')


select * from fun_person()