using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO.Model
{
    public class Appointment
    {
        public int IdAppointment { get; set; }
        public int IdConsultation { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }


        public Appointment()
        {

        }


        /// <summary>
        /// Select
        /// </summary>
        /// <param name="idAppointment"></param>
        /// <param name="idConsultation"></param>
        /// <param name="startTime"></param>
        /// <param name="endTime"></param>
        public Appointment(int idAppointment, int idConsultation, DateTime startTime, DateTime endTime)
        {
            IdAppointment = idAppointment;
            IdConsultation = idConsultation;
            StartTime = startTime;
            EndTime = endTime;
        }

        /// <summary>
        /// Insert
        /// </summary>
        /// <param name="idConsultation"></param>
        /// <param name="startTime"></param>
        /// <param name="endTime"></param>
        public Appointment(int idConsultation, DateTime startTime, DateTime endTime)
        {
            IdConsultation = idConsultation;
            StartTime = startTime;
            EndTime = endTime;
        }
    }
}
