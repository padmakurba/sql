Create Database Sample1
Alter Database Sample1 Modify Name = Sample2

sp_renameDB 'Sample2','Sample1'
Drop Database Sample1

Use [Sample1]
GO
Create  Table tblGender
(
ID int NOT NULL Primary Key,
Gender nvarchar(20) NOT NULL )


Alter table tblPerson
add constraint tblPerson_GenderId_FK
FOREIGN KEY (GenderId) references  tblGender(ID)


Select * from tblPerson
Select * from tblGender

insert into tblPerson (ID,Name ,Email)Values(3,'paddu','p@p.com')
delete from tblPerson where ID=2

insert into tblGender (ID,Gender) Values (3,'Unknown')
insert into tblPerson (ID,Name,Email,GenderId) Values (2,'paddu','p@p.com',2)

insert into tblPerson (ID,  Name,Email) Values (3,'Simon','s@s.com')

insert into tblGender (ID,Gender) values(3,'Unknowm')

Alter table tblPerson 
add constraint DF_tblPerson_GenderId
Default 3 for GenderId


insert into tblPerson (ID, Name,Email) Values (5,'mike','m@m.com')
insert into tblPerson (ID,  Name,Email,GenderID) Values (5,'paddu','p@p.com',NULL)
insert into tblPerson (ID, Name,Email,GenderId) Values (6,'mike','m@m.com',1)



Alter table tblPerson
Drop Constraint DF_tblPerson_GenderID


insert into tblPerson (ID,  Name,Email,GenderID) Values (1,'Jade','j@j.com',2),
(2,'Mary','m@m.com',1),(3,'Martin','ma@ma.com',1),(4,'Rob','r@r.com',NULL),(5,'May','may@may.com',2),
(6,'Kristy','k@k.com',NULL)

Delete from tblGender where ID=3