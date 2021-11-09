using DAO.Implementacion;
using DAO.Interfaces;
using DAO.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO.Implementation
{
    public class ConsultationImpl : IConsultation
    {
        public int Delete(Consultation t)
        {
            throw new NotImplementedException();
        }

        public int Insert(Consultation t)
        {
            throw new NotImplementedException();
        }

        public DataTable Select()
        {
            
            string query = @"SELECT*FROM Consultation WHERE startDate = CONVERT(DATE,CURRENT_TIMESTAMP)
";
            DataTable dt = new DataTable();
            try
            {
                
                SqlCommand command = DataBase.CreateBasicCommand(query);

                dt = DataBase.ExecuteDataTableCommand(command);
               
            }
            catch (Exception ex)
            {
               
            }
            return dt;
        }

        public int Update(Consultation t)
        {
            throw new NotImplementedException();
        }
    }
}
