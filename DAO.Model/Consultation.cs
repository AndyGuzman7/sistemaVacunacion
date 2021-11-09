using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO.Model
{
    public class Consultation
    {
        public int IdConsultation { get; set; }
        public DateTime StartDate { get; set; }
        public TimeSpan StartTime { get; set; }
        public TimeSpan EndTime { get; set; }
        public int TimeVacunation { get; set; }



        public Consultation()
        {

        }

        /// <summary>
        /// Select
        /// </summary>
        /// <param name="idConsultation"></param>
        /// <param name="startDate"></param>
        /// <param name="startTime"></param>
        /// <param name="endTime"></param>
        /// <param name="timeVacunation"></param>
        public Consultation(int idConsultation, DateTime startDate, TimeSpan startTime, TimeSpan endTime, int timeVacunation)
        {
            IdConsultation = idConsultation;
            StartDate = startDate;
            StartTime = startTime;
            EndTime = endTime;
            TimeVacunation = timeVacunation;
        }

        /// <summary>
        /// Insert
        /// </summary>
        /// <param name="startDate"></param>
        /// <param name="startTime"></param>
        /// <param name="endTime"></param>
        /// <param name="timeVacunation"></param>
        public Consultation(DateTime startDate, TimeSpan startTime, TimeSpan endTime, int timeVacunation)
        {
            StartDate = startDate;
            StartTime = startTime;
            EndTime = endTime;
            TimeVacunation = timeVacunation;
        }
    }
}
