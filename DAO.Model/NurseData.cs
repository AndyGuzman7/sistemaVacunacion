using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO.Model
{
    public class NurseData
    {
        public byte EmployeeID { get; set; }
        public string Ci { get; set; }
        public string FullNameString { get; set; }

        public NurseData(byte employeeID, string ci, string fullNameString)
        {
            EmployeeID = employeeID;
            Ci = ci;
            FullNameString = fullNameString;
        }
    }
}
