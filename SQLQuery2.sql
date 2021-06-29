create database payroll_service;
use [payroll-service];

create table EmployeePayroll(
EmployeeId int identity(1,1) primary key,
EmployeeName varchar(255) not null,
Salary float not null,
StartingDate Date not null
);

insert into EmployeePayroll(EmployeeName, Salary, StartingDate)
values('John', 100000, convert (date,'1996-10-10'));