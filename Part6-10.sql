select * from tblPerson
Alter Table tblPerson 
ADD AGE int;

insert into tblPerson values(9,'sara','s@s.com',2,-220)

insert into tblPerson values(8,'sam','s@s.com',2,NULL)
delete from tblPerson where ID= 7

ALter Table tblPerson
Drop constraint CK_tblPerson_AGE

Alter table tblPerson
add constraint CK_Person_AGE CHECK (AGE>0 AND AGE<150)



select * from dbo.tblPerson1
insert into tblPerson1 values('jhon')
insert into tblPerson1 values('kim')
delete from tblPerson1 where Personid= 1
insert into tblPerson1 values(1,'samson')

--An explicit value for the identity column in table 'tblPerson1' can only be specified when a column list is used and IDENTITY_INSERT is ON.
SET IDENTITY_INSERT tblPerson1 on
insert into tblPerson1 (PersonId,Name)values(1,'samson')
delete from tblPerson1
--resetting identity colomn
DBCC CHECKIDENT (tblPerson1,RESEED,0)


--Part-8 to get the last generated identity column value
Create table test1(id int identity(1,1),Value nvarchar(20))
Create table test2(id int identity(1,1),Value nvarchar(20))
insert into test1 values('x')
select * from test1
select * from test2
create Trigger trforinsert on Test1 for Insert
as
Begin
    Insert into Test2 values('yyy')
End

select SCOPE_IDENTITY()
select @@IDENTITY

--User1
insert into test2 values('zzz')
select SCOPE_IDENTITY()
select @@IDENTITY
select IDENT_CURRENT('test2')



--Part-9 Unique key
select * from tblPerson

Alter table tblPerson 
Add Constraint UQ_tblPerson_Email Unique(Email)

delete from tblPerson where id=8
delete from tblPerson

insert into tblPerson values(1,'abc','a@a.com',1,20)
insert into tblPerson values(2,'xyz','a@a.com',1,20)

Alter table tblPerson
drop constraint UQ_tblPerson_Email