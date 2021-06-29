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

        /// <summary>
        /// method to get data from database using SqlConnection and SqlCommand passing sql query.
        /// </summary>
        public void GetData()
        {
            string connectionString = "Data Source=S;Initial Catalog=payroll-service;Integrated Security=True;Pooling=False";
            SqlConnection connection = new SqlConnection(connectionString);
            string query = @"SELECT EmployeeName, Gender, Department, PhoneNumber, Address, Basic_Pay, StartingDate FROM EmployeePayroll;";
            try
            {
                using (connection)
                {
                    SqlCommand command = new SqlCommand(query, connection);
                    connection.Open();
                    SqlDataReader dr = command.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            EmployeeName = dr.GetString(0);
                            Gender = dr.GetString(1);
                            Department = dr.GetString(2);
                            PhoneNumber = dr.GetInt64(3);
                            Address = dr.GetString(4);
                            BasicPay = dr.GetDouble(5);
                            StartingDate = dr.GetDateTime(6);
                            Console.WriteLine($"{EmployeeName} {Gender} {Department} {PhoneNumber} {Address} {BasicPay} {StartingDate}");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                connection.Close();
            }
        }
    }
}
