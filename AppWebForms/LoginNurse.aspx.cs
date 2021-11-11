using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO.Implementation;
using System.Data;

namespace AppWebForms
{
    public partial class Login : System.Web.UI.Page
    {
        EmployeeImpl employeeImpl;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLoginNurse_Click(object sender, EventArgs e)
        {
            try
            {
                employeeImpl = new EmployeeImpl();
                DataTable dt = employeeImpl.LoginNurse(txtUsername.Text, txtPassword.Text);

                if (dt.Rows.Count>0)
                {
                    

                    DataTable dt2 = employeeImpl.VerifyNurse(short.Parse(dt.Rows[0]["idEmployee"].ToString()));
                    if (dt2.Rows.Count>0)
                    {
                        lblErrorLogin.Text = "Inicio de sesion exitoso";
                        Session["idNurse"] = dt.Rows[0]["idEmployee"].ToString();
                        Session["UserNameNurse"] = txtUsername.Text;
                    } 
                    else
                    {
                        lblErrorLogin.Text = "Hoy no esta a cargo de ninguna consulta";
                    }
                   
                }
                else
                {
                    lblErrorLogin.Text = "Nombre de Usuario y/o Contraseña incorrecta.";
                }

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}