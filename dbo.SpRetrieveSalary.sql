CREATE PROCEDURE [dbo].[SpRetrieveSalary]
	@EmployeeName varchar(255)
AS
	SELECT Basic_Pay from EmployeePayroll Where EmployeeName = @EmployeeName;
RETURN 0
