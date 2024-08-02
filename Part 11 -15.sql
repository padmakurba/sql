-- select specific columns or all columns
USE [Sample]
GO

SELECT [Id]
      ,[Name]
      ,[Email]
      ,[GenderId]
      ,[AGE]
      ,[city]
  FROM [dbo].[tblPerson]

GO


select * from tblPerson
delete from tblPerson
insert into tblPerson values(1,'Tom','t@t.com',1,23,'London')
insert into tblPerson values(2,'Jhon','j@j.com',1,20,'New york')
insert into tblPerson values(3,'Mary','mary.mary.com',2,21,'Sydney')
insert into tblPerson values(4,'Josh','josh.j.com',1,29,'London')
insert into tblPerson values(5,'Sara','sara@abc.com',2,25,'Mumbai')

alter table tblPerson
add city nvarchar(50)


--opereators and wild cards

select * from tblPerson

select distinct city from tblPerson
select * from tblPerson where city= 'london'
--who is not living in tlondon across all records
select * from tblPerson where city <>'london'
--or u can use this
select * from tblPerson where city !='london'
-- to find particular age records
select * from tblPerson where AGE =23 or AGE=20 or AGe=29
select * from tblPerson where AGE IN (20,23,29)
--between range
select * from tblPerson WHERE AGE BETWEEN 20 AND 25
--  specific letter start from 
select * from tblPerson where city LIKE 'L%'
-- to find correct email adddress to specify pattern
select * from tblPerson where EMAIL LIKE '%@%'
select * from tblPerson where EMAIL NOT LIKE '%@%'
-- to get one character before and after
select * from tblPerson where EMAIL LIKE '_@_.com'
-- any character stats with letter
select * from tblPerson where Name LIKE '[MST]%'
select * from tblPerson where Name LIKE '[^MST]%'

-- joining multiple conditions using ANd and OR operators
select * from tblPerson where (city ='London' or city ='Mumbai') AND Age > 25
 
 --selecting rows using order by
select * from tblPerson  order by Name Desc,Age Asc

-- selecting top n or top n percentage of rows
select top 3 * from tblPerson
select top 50 percent * from tblPerson
select top 3  Name,Age from tblPerson
-- to get elder age 
select top 1 * from tblPerson order by age DESC




-- group by
select SUM(Salary)from tblEmployee

select * from tblEmployee

Alter table tblEmployee
alter column Salary int


--grouping nby multiple columns
select city,SUM(Salary) as Total_salary 
from tblEmployee 
group by City

update tblEmployee
SET City='New York'
where ID=2


select City,Gender,SUM(Salary) as Total_salary 
from tblEmployee 
group by City,Gender
order by City

--usng multple aggregate functions
--total employees
select count(*) from tblEmployee
select count(Id) from tblEmployee

select City,Gender,SUM(Salary) as Total_salary,COUNT(ID) as [Total Employees]
from tblEmployee 
group by City,Gender
order by City

--using where clause
select Gender,City,SUM(Salary) as Total_salary,COUNT(ID) as [Total Employees]
from tblEmployee 
where Gender='Male'
group by Gender,City

--using having clause
select Gender,City ,SUM(Salary) as Total_salary,COUNT(ID) as [Total Employees]
from tblEmployee 
group by Gender,City
Having Gender ='Male'

select Gender,City ,SUM(Salary) as Total_salary,COUNT(ID) as [Total Employees]
from tblEmployee 
group by Gender,City
Having sum(salary) > 5000
