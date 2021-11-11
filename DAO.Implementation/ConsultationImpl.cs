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
        public int Delete(ConsultationM t)
        {
            throw new NotImplementedException();
        }

        public int Insert(ConsultationM t)
        {
            throw new NotImplementedException();
        }

        public void Insert(ConsultationM c, List<NurseData> nurses)
        {
            List<SqlCommand> commands = new List<SqlCommand>();
            string queryP = @"INSERT INTO Consultation(numVaccines, startDate, startTime, endTime, timeVaccionation)
                            VALUES(@numVaccines, @startDate, @startTime, @endTime, @timeVaccionation)";

            string queryS = @"INSERT INTO EmployeeConsultation(idEmployee, idConsultation)
                            VALUES(@idEmployee, @idConsultation)";

            try
            {
                commands = DataBase.CreateNBasicCommand(1 + nurses.Count);

                short idConsultation = short.Parse(DataBase.GetGenerateIDTable("Consultation"));


                for (int h = 0; h < commands.Count; h++)
                {
                    if (h == 0)
                    {
                        commands[h].CommandText = queryP;
                        commands[h].Parameters.AddWithValue("@numVaccines", c.NumVaccines);
                        commands[h].Parameters.AddWithValue("@startDate", c.StartDate);
                        commands[h].Parameters.AddWithValue("@startTime", c.StartTime);
                        commands[h].Parameters.AddWithValue("@endTime", c.EndTime);
                        commands[h].Parameters.AddWithValue("@timeVaccionation", c.TimeVacunation);
 
                    }
                    else
                    {
                        commands[h].CommandText = queryS;
                        commands[h].Parameters.AddWithValue("@idEmployee", nurses[h - 1].EmployeeID);
                        commands[h].Parameters.AddWithValue("@idConsultation", idConsultation);
                        

                    }

                }

                DataBase.ExecuteNBasicCommand(commands);

             
            }
            catch (Exception ex)
            {
                 throw ex;
            }
        }

        public DataTable Select()
        {
            
            string query = @"SELECT*FROM Consultation WHERE startDate = CONVERT(DATE,CURRENT_TIMESTAMP)";
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

        public int Update(ConsultationM t)
        {
            throw new NotImplementedException();
        }
    }
}
