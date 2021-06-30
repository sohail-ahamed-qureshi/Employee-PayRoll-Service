using EmployeePayRollService;
using NUnit.Framework;

namespace NUnitDatabase.Test
{
    public class Tests
    {

        [Test]
        public void GivenSalaryAndName_UpdatesInDatebase()
        {
            //Arrange
            Employee employee = new Employee();
            bool result = employee.UpdateSalary("sohail", 5000000);
            bool expected = true;
            Assert.AreEqual(result,expected);
        }
    }
}