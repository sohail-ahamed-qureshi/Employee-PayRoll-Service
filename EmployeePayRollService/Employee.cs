using System;
using System.Data.SqlClient;

namespace EmployeePayRollService
{
    /// <summary>
    /// details of Employee data
    /// </summary>
    class Employee
    {
        //properties of Model class
        public string EmployeeName { get; set; }
        public DateTime StartingDate { get; set; }
        public long PhoneNumber { get; set; }
        public string Address { get; set; }
        public string Gender { get; set; }
        public string Department { get; set; }
        public double BasicPay { get; set; }
        public double Deductions { get; set; }
        public double TaxablePay { get; set; }
        public double Tax { get; set; }
        public double NetPay { get; set; }

      
    }
}
