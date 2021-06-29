create database payroll_service;
use [payroll-service];

create table EmployeePayroll(
EmployeeId int identity(1,1) primary key,
EmployeeName varchar(255) not null,
Salary float not null,
StartingDate Date not null
);

insert into EmployeePayroll(EmployeeName, Salary, StartingDate)
values('Ram', 100000, convert (date,'2000-8-09'));

select * from EmployeePayroll;

select EmployeeName,Salary from EmployeePayroll Where EmployeeName = 'jonny';

select * from EmployeePayroll where StartingDate between CAST('1990-01-01' as date) and CAST('1996-01-01' as date);

alter table EmployeePayroll 
add Gender varchar(6);

update EmployeePayroll set Gender = 'male' where EmployeeName = 'John' or EmployeeName = 'jonny' or EmployeeName ='mahesh';

update EmployeePayroll set Gender = 'female' where EmployeeName = 'terisa';

select count(EmployeeId) from EmployeePayroll;
select sum(salary) from EmployeePayroll where gender = 'male';
select avg(salary) from EmployeePayroll;
select min(salary) from EmployeePayroll;
select max(salary) from EmployeePayroll;

alter table EmployeePayroll 
add Department varchar(255) default 'TBD';

update EmployeePayroll set Department = 'Marketing' where EmployeeName = 'terisa';

alter table EmployeePayroll add PhoneNumber bigint;
alter table EmployeePayroll add Address varchar(255) not null default 'India';

update EmployeePayroll set PhoneNumber = 1234567890 where EmployeeName = 'terisa';
update EmployeePayroll set PhoneNumber = 0987654321 where EmployeeName = 'john';
