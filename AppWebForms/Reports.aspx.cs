using DAO.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppWebForms
{
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = "andyguzman117@gmail.com";
            string code = GenerateCode.GenerateCodes();
            EmailService.EnviarCodigoVerificacion(code, email);
        }
    }
}