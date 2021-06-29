create database payroll_service;
use [payroll-service];

create table EmployeePayroll(
EmployeeId int identity(1,1) primary key,
EmployeeName varchar(255) not null,
Salary float not null,
StartingDate Date not null
);

insert into EmployeePayroll(EmployeeName, Salary, StartingDate)
values('Terisa', 250000, convert (date,'1999-12-25'));

select * from EmployeePayroll;

select EmployeeName,Salary from EmployeePayroll Where EmployeeName = 'jonny';

select * from EmployeePayroll where StartingDate between CAST('1990-01-01' as date) and CAST('1996-01-01' as date);

alter table EmployeePayroll 
add Gender varchar(6);

update EmployeePayroll set Gender = 'male' where EmployeeName = 'John' or EmployeeName = 'jonny' or EmployeeName ='mahesh';

update EmployeePayroll set Gender = 'female' where EmployeeName = 'terisa';