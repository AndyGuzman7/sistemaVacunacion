using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO.Model;
using DAO.Implementation;

namespace AppWebForms
{
    public partial class Consultation : System.Web.UI.Page
    {
        List<NurseData> nurses;

        ConsultationM c;
        ConsultationImpl consultationImpl = new ConsultationImpl();




        protected void Page_Load(object sender, EventArgs e)
        {
            this.gvSelectNurses.DataSource = null;
            this.gvSelectNurses.DataBind();
            nurses = new List<NurseData>();
            this.gvSelectNurses.DataSource = nurses;
            this.gvSelectNurses.DataBind();

            if (nurses.Count == 0)
            {
                lblErrorValid.Text = "";
                lblText.Text = "Agrega a los enfermer@s encargados del día";
            }
            else
            {
                lblText.Text = "";
                
            }
        }
        protected void Page_Init(object sender, EventArgs e)
        {
            rvreqby.MinimumValue = DateTime.Now.Date.ToString("dd-MM-yyyy");
            rvreqby.MaximumValue = DateTime.Now.Date.AddYears(90).ToString("dd-MM-yyyy");



            nurses = new List<NurseData>();
            this.gvSelectNurses.DataSource = nurses;
            this.gvSelectNurses.DataBind();

            if (nurses.Count == 0)
            {
                lblErrorValid.Text = "";
                lblText.Text = "Agrega a los enfermer@s encargados del día";
            }
            else
            {
                
                lblText.Text = "";
            }
        }

        protected void btnAddNurses_ServerClick(object sender, EventArgs e)
        {

            nurses = new List<NurseData>();
            foreach (GridViewRow row in gvNurse.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox chkRow = (row.Cells[0].FindControl("chkRow") as CheckBox);
                    if (chkRow.Checked)
                    {
                        byte id = byte.Parse(row.Cells[1].Text);
                        string ci = row.Cells[2].Text;
                        string fullname = row.Cells[3].Text;
                        nurses.Add(new NurseData(id,ci,fullname));

                    }
                }
            }

            if (nurses.Count == 0)
            {
                lblErrorValid.Text = "";
                lblText.Text = "Agrega a los enfermer@s encargados del día";
            }
            else
            {

                DataClass.ListNurses = nurses;
                lblText.Text = "";
                
            }

            this.gvSelectNurses.DataSource = nurses;
            this.gvSelectNurses.DataBind();
            
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }



        protected void btnConsultationCreate_Click(object sender, EventArgs e)
        {
            if (DataClass.ListNurses.Count==0)
            {
                lblErrorValid.Text = "*Debe añadir enfermer@s";
            } 
            else
            {
                try
                {
                    lblErrorValid.Text = "";
                    int numVaccines = int.Parse(txtNumberVaccine.Value);
                    DateTime startDate = DateTime.Parse(txtDateInit.Value);
                    DateTime startTime = DateTime.Parse(txtTimeStart.Value);
                    DateTime endTime = DateTime.Parse(txtTimeEnd.Value);
                    int timeV = int.Parse(txtTimeVaccionation.Value);

                    c = new ConsultationM(numVaccines, startDate, startTime, endTime, timeV);

                    consultationImpl.Insert(c, DataClass.ListNurses);
                    Response.Write("Transaccion Completa");

                    DataClass.ListNurses = new List<NurseData>();
                    txtNumberVaccine.Value = null;
                    txtDateInit.Value = null;
                    txtTimeStart.Value = null;
                    txtTimeEnd.Value = null;
                    txtTimeVaccionation.Value = null;
                }
                catch (Exception)
                {

                    throw;
                }
                
            }
        }
    }
}