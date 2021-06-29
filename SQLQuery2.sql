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

alter table EmployeePayroll
drop column Salary;

alter table EmployeePayroll 
add Basic_Pay float not null default 00000;

update EmployeePayroll set Basic_Pay = 100000 where EmployeeId =1;
update EmployeePayroll set Basic_Pay = 150000 where EmployeeId =2;
update EmployeePayroll set Basic_Pay = 200000 where EmployeeId =3;
update EmployeePayroll set Basic_Pay = 250000 where EmployeeId =4;
update EmployeePayroll set Basic_Pay = 100000 where EmployeeId =5;

alter table EmployeePayroll 
add Deductions float not null default 0;

alter table EmployeePayroll 
add Taxable_Pay float not null default 0;

alter table EmployeePayroll 
add Tax float not null default 0;

alter table EmployeePayroll 
add Net_Pay float not null default 0;


insert into EmployeePayroll(EmployeeName, Basic_Pay, StartingDate, Gender, PhoneNumber, Address, Deductions, Taxable_Pay, Tax, Net_Pay)
values('Terisa', 100000, convert (date,'2000-8-09'), 'female', 1234567890, 'India',2000, 5000, 2000, 80000);

update EmployeePayroll set Department = 'Sales' where EmployeeId = 6;