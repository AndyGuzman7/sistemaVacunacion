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
          <form class="form-box px-3">
            <div class="form-input">
              <span><i class="fa fa-user"></i></span>
              <input type="text" name="" placeholder="Nombre de usuario" tabindex="10" required="required" />
            </div>
            <div class="form-input">
              <span><i class="fa fa-key"></i></span>
              <input type="password" name="" placeholder="Contraseña" required="required"/>
            </div>


            <div class="mb-5">
              <button type="submit" class="btn btn-block text-uppercase">
                Iniciar Sesion</button>
            </div>

            
          </form>
        </div>
      </div>
    </div>
  </div>
</body>
</html>

