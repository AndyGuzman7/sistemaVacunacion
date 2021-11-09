using DAO.Implementation;
using DAO.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppWebForms
{
    public partial class ListAppointment : System.Web.UI.Page
    {
        List<Appointment> listAppointments = new List<Appointment>();
        Appointment appointment = new Appointment();
        AppointmentImpl appointmentImpl = new AppointmentImpl();
        string hora;

        Consultation consultation = new Consultation();
        ConsultationImpl consultationImpl = new ConsultationImpl();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable tabla = new DataTable();

            // Variables para las columnas y las filas
            DataColumn column;
            DataRow row;
            // Se tiene que crear primero la columna asignandole Nombre y Tipo de datos    
            column = new DataColumn();
            column.DataType = System.Type.GetType("System.Int32");
            column.ColumnName = "Codigo";
            tabla.Columns.Add(column);

            // Se tienen que crear todas las columnas que queramos
            column = new DataColumn();
            column.DataType = Type.GetType("System.String");
            column.ColumnName = "Descripcion";
            tabla.Columns.Add(column);

            column = new DataColumn();
            column.DataType = Type.GetType("System.Decimal");
            column.ColumnName = "ValorUnitario";
            tabla.Columns.Add(column);

            // Se crea una fila por cada registro que necesitemos agregar    
            for (int i = 1; i < 50; i++)
            {
                row = tabla.NewRow();
                row["Codigo"] = i;
                row["Descripcion"] = "Nombre del codigo " + i.ToString();
                row["ValorUnitario"] = i * 2;
                tabla.Rows.Add(row);
            }



            DataList1.DataSource = tabla.DefaultView;
            DataList1.DataBind();
            AssigmentHours();
        }

        protected void ddlHoursApoitmet_SelectedIndexChanged(object sender, EventArgs e)
        {

            //Response.Write(ddlHoursApoitmet.SelectedItem.Value);
        }

        public void LoadDataDropDownList()
        {
            ConvertToAppointment(SelectAppointment());
            ListItem listItem = new ListItem();
            ddlHoursApoitmet.Items.Clear();
            foreach (var item in listAppointments)
            {
                listItem = new ListItem($" {item.StartTime.ToString("HH:MM")}-{item.EndTime.ToString("HH:MM")}", item.IdAppointment.ToString());
                ddlHoursApoitmet.Items.Add(listItem);
            }
        }


        public void ConvertToAppointment(DataTable dt)
        {
            listAppointments = new List<Appointment>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                listAppointments.Add(new Appointment(int.Parse(dt.Rows[i][0].ToString()),
                                                     int.Parse(dt.Rows[i][1].ToString()),
                                                     DateTime.Parse(dt.Rows[i][2].ToString()),
                                                     DateTime.Parse(dt.Rows[i][2].ToString())));
            }
        }


        public void AssigmentHours()
        {
            //Response.Write(consultation.StartTime.ToString());
            /* int starTime = int.Parse(consultation.StartTime.ToString("H"));
             int endTime = int.Parse(consultation.EndTime.ToString("H"));

             ListItem listItem = new ListItem();
             ddlHoursApoitmet.Items.Clear();
             for (int i = starTime; i < endTime; i++)
             {
                 listItem = new ListItem($" {i}:00-{i + 1}:00", $"{starTime.ToString()}|{endTime.ToString()}");
                 ddlHoursApoitmet.Items.Add(listItem);
             }*/
        }

        public void ConvertToConsultation(DataTable dt)
        {
            consultation = new Consultation(int.Parse(dt.Rows[0][0].ToString()),
                                            DateTime.Parse(dt.Rows[0][1].ToString()),
                                            TimeSpan.Parse(dt.Rows[0][2].ToString()),
                                            TimeSpan.Parse(dt.Rows[0][3].ToString()),
                                            int.Parse(dt.Rows[0][4].ToString())
                );
        }

        DataTable SelectAppointment()
        {
            DataTable dt = new DataTable();
            try
            {
                appointmentImpl = new AppointmentImpl();
                dt = appointmentImpl.Select();
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return dt;
        }


        DataTable SelectConsultation()
        {
            DataTable dt = new DataTable();
            try
            {
                consultationImpl = new ConsultationImpl();
                dt = consultationImpl.Select();
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return dt;
        }

        DataTable SelectAppointmentById()
        {
            DataTable dt = new DataTable();
            try
            {
                appointmentImpl = new AppointmentImpl();
                dt = appointmentImpl.Select();
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return dt;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }



        protected void div_clickItem(object sender, EventArgs e)
        {
            Response.Write("sasd");
        }

        protected void btnReservation_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnReservation_Click1(object sender, EventArgs e)
        {
           
        }

        protected void btnReservationNext_Click(object sender, EventArgs e)
        {
            string hora = lblHora.Text;
            string id = txtIdHours.Value;
            Response.Redirect("https://localhost:44325/AppointmentReservation");
        }
    }


}