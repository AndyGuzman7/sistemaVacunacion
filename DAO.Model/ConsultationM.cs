using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO.Model
{
    public class ConsultationM
    {
        public int IdConsultation { get; set; }
        public int NumVaccines { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
        public int TimeVacunation { get; set; }



        public ConsultationM(int idConsultation, int numVaccines, DateTime startDate, DateTime startTime, DateTime endTime, int timeVacunation)
        {
            IdConsultation = idConsultation;
            NumVaccines = numVaccines;
            StartDate = startDate;
            StartTime = startTime;
            EndTime = endTime;
            TimeVacunation = timeVacunation;
        }

        public ConsultationM(int numVaccines, DateTime startDate, DateTime startTime, DateTime endTime, int timeVacunation)
        {
            NumVaccines = numVaccines;
            StartDate = startDate;
            StartTime = startTime;
            EndTime = endTime;
            TimeVacunation = timeVacunation;
        }
    }
}
