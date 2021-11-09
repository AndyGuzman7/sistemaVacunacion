<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppointmentReservation.aspx.cs" Inherits="AppWebForms.AppointmentReservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <link rel="stylesheet" href="~/Styles/SAppointmentReservation.css" />
</head>
<body>
    <div class="">
        <div class="imageBg">
            <div style="text-align: right;">
                <button style="margin: 50px;" class="btnCreate btn">HAGA UNA CITA</button>
                
            </div>
            <div class="textH container">
                <p>HAGA UNA <span style="color: rgb(35, 170, 170); margin-right: 15px;"> CITA </span>
                </p><br/>
                <h3 style="font-size: 22PX;">
                    Estamos aquí para usted y podemos programar una cita las 24 horas del día, los 7 días de la semana. Si el consultorio no está abierto, podemos derivarlo a uno de nuestros médicos de guardia en su hospital cercano.
                </h3>
            </div>          
            
            
        </div>
        <div class="container">
            <div class="row"  >
                <div class="formInfo col-md-8">
                  <h1 style="margin-top: 30px;">Citas el mismo día</h1>
                  <p>Estamos disponibles los 7 días de la semana y tenemos horarios de atención específicos con todos los médicos del personal. Fuera del horario normal de oficina, puede recibir un médico o una enfermera de guardia en el hospital cercano si es necesario.</p>
                
                  <form>
                    <div class="form-group">
                        <label for="">Nombre</label>
                        <input type="text" class="form-control" id="" placeholder="Nombre" required="required"/>
                    </div>
                    <div class="form-group">
                        <label for="">Correo Electronico</label>
                        <input type="email" class="form-control" id="" placeholder="name@example.com" required="required"/>
                    </div>
                    <div class="form-group">
                        <label for="">Número de telefono</label>
                        <input type="number" class="form-control" id="" placeholder="Número de telefono" required="required"/>
                    </div>
                    <div class="form-group">
                        <label for="">Ci</label>
                        <input type="text" class="form-control" id="" placeholder="Ci" required="required"/>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="" required="required"/>
                        <label class="form-check-label" for="">
                            Presenta sintomas del covid
                        </label>
                      </div>
                  </form>

                </div>

                
                <div class="formInfo2 col-md-4">
                </div>

            </div>
            <div class="row" style="margin-top: 20px; text-align: center;" >
                <div class="col-md-12">
                    <button style="width: 100%;" class="btn">RESERVAR CITA</button>
                </div>
                
            </div>
        </div>
    </div>
</body>
</html>
