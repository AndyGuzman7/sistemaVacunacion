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
    public partial class LoginAdmin : System.Web.UI.Page
    {
        EmployeeImpl employeeImpl;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLoginAdmin_Click(object sender, EventArgs e)
        {
            try
            {
                employeeImpl = new EmployeeImpl();
                DataTable dt = employeeImpl.LoginAdmin(txtUsername.Text, txtPassword.Text);

                if (dt.Rows.Count > 0)
                {
                    lblErrorLogin.Text = "Inicio de sesion exitoso";
                    Session["idAdmin"] = dt.Rows[0]["idEmployee"].ToString();
                    Session["UserNameAdmin"] = txtUsername.Text;
                    

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