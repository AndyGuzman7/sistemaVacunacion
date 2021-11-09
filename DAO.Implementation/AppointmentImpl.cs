using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO.Implementacion;
using DAO.Interfaces;
using DAO.Model;

namespace DAO.Implementation
{
    public class AppointmentImpl : IAppointment
    {
        public int Delete(Appointment t)
        {
            throw new NotImplementedException();
        }

        public int Insert(Appointment t)
        {
            throw new NotImplementedException();
        }

        public DataTable Select()
        {
            string query = @"SELECT [idAppointment]
                                      ,[idConsultation]
                                      ,[startTime]
                                      ,[endTime]
                                        FROM [SystemVacunation].[dbo].[Appointment]";
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

        public int Update(Appointment t)
        {
            throw new NotImplementedException();
        }
    }
}
