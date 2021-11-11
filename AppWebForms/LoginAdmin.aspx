<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="AppWebForms.LoginAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="~/Styles/SloginAdmin.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
  <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
</head>
<body style="font-family:Raleway">
    <div class="bg"></div>
    <div class="container">
    <div class="row px-3">
      <div class="col-lg-10 col-xl-9 card flex-row mx-auto px-0">
        <div class="img-left d-none d-md-flex"></div>

        <div class="card-body ">
          <h4 class="title text-center mt-5">
              Bienvenido!
          </h4>
          <form class="form-box px-3" runat="server">
            <div class="form-input">
              <span><i class="fa fa-user"></i></span>
               <asp:TextBox ID="txtUsername"  name="" placeholder="Nombre de usuario" runat="server" required="required"></asp:TextBox>
            </div>
            <div class="form-input">
              <span><i class="fa fa-key"></i></span>
                <asp:TextBox ID="txtPassword" TextMode="Password" placeholder="Contraseña" required="required" runat="server"></asp:TextBox>
            </div>
              <asp:Label ID="lblErrorLogin" runat="server" ForeColor="Red" Text=""></asp:Label>

            <div class="mb-5">
                <asp:Button ID="btnLoginAdmin" OnClick="btnLoginAdmin_Click" CssClass="btn btn-block btn-info text-uppercase" runat="server" Text="Iniciar Sesion" />

            </div>
            
          </form>
        </div>
      </div>
    </div>
  </div>
</body>
</html>

