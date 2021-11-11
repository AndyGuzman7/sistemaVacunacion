using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DAO.Implementacion;
using DAO.Interfaces;
using DAO.Model;

namespace DAO.Implementation
{
    public class EmployeeImpl : IEmployee
    {
        public int Delete(IEmployee t)
        {
            throw new NotImplementedException();
        }

        public int Insert(IEmployee t)
        {
            throw new NotImplementedException();
        }

        public DataTable LoginAdmin(string userName, string password)
        {
            try
            {
                string query = @"SELECT idEmployee,userName, password, role
                             FROM Employees
                             WHERE role='ADMIN' AND userName=@userName AND password=HASHBYTES('md5',@password);";

                SqlCommand command = DataBase.CreateBasicCommand(query);
                command.Parameters.AddWithValue("@userName", userName);
                command.Parameters.AddWithValue("@password", password).SqlDbType = SqlDbType.VarChar;
                return DataBase.ExecuteDataTableCommand(command);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable LoginNurse(string userName, string password)
        {
            try
            {
                string query = @"SELECT idEmployee,userName, password, role
                             FROM Employees
                             WHERE role='NURSE' AND userName=@userName AND password=HASHBYTES('md5',@password);";

                SqlCommand command = DataBase.CreateBasicCommand(query);
                command.Parameters.AddWithValue("@userName", userName);
                command.Parameters.AddWithValue("@password", password).SqlDbType = SqlDbType.VarChar;
                return DataBase.ExecuteDataTableCommand(command);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable Select()
        {
            throw new NotImplementedException();
        }

        public int Update(IEmployee t)
        {
            throw new NotImplementedException();
        }

        public DataTable VerifyNurse(short id)
        {
            try
            {
                string query = @"SELECT E.firstName
                            FROM EmployeeConsultation EC
                            INNER JOIN Employees E ON E.idEmployee = EC.idEmployee
                            INNER JOIN Consultation C on C.idConsultation = EC.idConsultation
                            WHERE C.startDate = CONVERT(DATE, GETDATE()) AND EC.idEmployee = @idEmployee";

                SqlCommand command = DataBase.CreateBasicCommand(query);
                command.Parameters.AddWithValue("@idEmployee", id);

                return DataBase.ExecuteDataTableCommand(command);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}
