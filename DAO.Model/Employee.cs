using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO.Model;

namespace DAO.Model
{
    public class Employee
    {
        public byte EmployeeID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string SecondLastName { get; set; }
        public string Ci { get; set; }
        public DateTime BirthDate { get; set; }
        public char Sex { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Role { get; set; }

        public string FullNameString { get; set; }

        public string FullName()
        {
            return FirstName + " " + LastName + " " + SecondLastName; 
        }

        public Employee(byte employeeID, string fullNameString, string ci)
        {
            EmployeeID = employeeID;
            FullNameString = fullNameString;
            Ci = ci;
        }

        public Employee(byte employeeID, string firstName, string lastName, string secondLastName, string ci, DateTime birthDate, char sex, string userName, string password, string role)
        {
            EmployeeID = employeeID;
            FirstName = firstName;
            LastName = lastName;
            SecondLastName = secondLastName;
            Ci = ci;
            BirthDate = birthDate;
            Sex = sex;
            UserName = userName;
            Password = password;
            Role = role;
        }

        public Employee(string firstName, string lastName, string secondLastName, string ci, DateTime birthDate, char sex, string userName, string password, string role)
        {
            FirstName = firstName;
            LastName = lastName;
            SecondLastName = secondLastName;
            Ci = ci;
            BirthDate = birthDate;
            Sex = sex;
            UserName = userName;
            Password = password;
            Role = role;
        }
    }
}
