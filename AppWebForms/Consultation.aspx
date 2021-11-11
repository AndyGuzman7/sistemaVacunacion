<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consultation.aspx.cs" Inherits="AppWebForms.Consultation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
      
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   

	  <link rel="stylesheet" href="~/Styles/SConsultation.css"/>
    <title>Ejemplos</title>  
  </head>
  <body>
     <form runat="server">
    <div>
      <div class="imageBg">
           <div class="textH container">
                <p>PROGRAMANDO <span style="color: rgb(35, 170, 170); margin-right: 15px;"> HORARIO </span>
                </p><br/>
                <h3 style="font-size: 22PX;color:white">
                    Estamos aquí para usted y podemos programar una cita las 24 horas del día, los 7 días de la semana. Si el consultorio no está abierto, podemos derivarlo a uno de nuestros médicos de guardia en su hospital cercano.
                </h3>
            </div>  
      </div>
  
      <section>
          <div class="container containerH">
              <div class="contactInfo">

                      <div class="form-group">
                          <label for="txtNumberVaccine">Nro Vacunas</label><br />
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" validationgroup="grupoValidacion1" runat="server" ErrorMessage="Solo se permiten números mayores a 0" ForeColor="Red"  Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtNumberVaccine" ValidationExpression="^[1-9][0-9]*$"></asp:RegularExpressionValidator>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" validationgroup="grupoValidacion1" runat="server" ErrorMessage="Debe insertar el número de vacunas" ForeColor="Red"  Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtNumberVaccine"></asp:RequiredFieldValidator>
                          
                          <input type="number" runat="server" class="form-control" id="txtNumberVaccine" placeholder="Nro Vacunas "/>
                          
                      
                      </div>
                      <div class="form-group">
                          <label for="txtDateInit">Fecha Inicio</label><br />
                          <asp:RangeValidator ID="rvreqby" runat="server" Display="Dynamic" validationgroup="grupoValidacion1" ControlToValidate="txtDateInit" ErrorMessage="No se permiten fechas pasadas" ForeColor="Red" Type="Date"></asp:RangeValidator>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" validationgroup="grupoValidacion1" runat="server" ErrorMessage="Debe insertar la fecha de inicio" ForeColor="Red"  Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtDateInit"></asp:RequiredFieldValidator>
                          <input type="date" runat="server" class="form-control" id="txtDateInit" placeholder="Fecha"/>
                      </div> 
                      <div class="form-group">
                          <label for="txtTimeStart">Hora Inicio</label><br />

                          
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" validationgroup="grupoValidacion1" runat="server" ErrorMessage="Debe insertar la hora de inicio" ForeColor="Red"  Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtTimeStart"></asp:RequiredFieldValidator>
                          <input type="time" runat="server" class="form-control" id="txtTimeStart" placeholder="Hora Inicio"/>
                          <asp:CompareValidator ID="CompareValidator1" runat="server" validationgroup="grupoValidacion1" ErrorMessage="La Hora de Inicio debe ser menor a la Hora Fin" Operator="GreaterThan" ForeColor="Red"  Display="Dynamic" SetFocusOnError="true"  ControlToValidate="txtTimeEnd" ControlToCompare="txtTimeStart"></asp:CompareValidator>
                          
                      </div>
                      <div class="form-group">
                          <label for="txtTimeEnd">Hora Fin</label><br />
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" validationgroup="grupoValidacion1" runat="server" ErrorMessage="Debe insertar la hora de fin" ForeColor="Red"  Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtTimeEnd"></asp:RequiredFieldValidator>
                          <input type="time" runat="server" class="form-control" id="txtTimeEnd" placeholder="Hora Fin"/>
                      </div>

                      <div class="form-group">
                          <label for="txtTimeVaccionation">Tiempo</label><br />
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" validationgroup="grupoValidacion1" runat="server" ErrorMessage="Solo se permiten números mayores a 0" ForeColor="Red"  Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtTimeVaccionation" ValidationExpression="^[1-9][0-9]*$"></asp:RegularExpressionValidator>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" validationgroup="grupoValidacion1" runat="server" ErrorMessage="Debe insertar el tiempo" ForeColor="Red"  Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtTimeVaccionation"></asp:RequiredFieldValidator>
                          <input type="number" runat="server" class="form-control" id="txtTimeVaccionation" placeholder="Tiempo en min."/>
                      </div>
                  
                  
              </div>


              <div class="contactForm">
                  <div class="formBox">
                    

                 <div style="width:100%;" >
                      <div id="btn2" style="text-align: right; margin-bottom:20px">
                    <input type="button"  data-toggle="modal" data-target="#exampleModal" style="background-color: #077ebc" class="btn btn-primary text" value="AÑADIR" />
                    </div>

                     <div style="background-color:#D9D9D9;text-align:center;padding:20px; border-style:inset; border-width:10px; border-color:deepskyblue,darkgrey">
                        <div style="text-align:center;">
                            <asp:Label ID="lblText" Font-Size="40px" runat="server" Text=""></asp:Label>
                            
                        </div> 
                         <asp:Label ID="lblErrorValid" Font-Size="25px" ForeColor="Red" runat="server" Text=""></asp:Label>
                      <asp:GridView ID="gvSelectNurses"  Font-Size="Large" Width="100%" runat="server" CellPadding="0"  AutoGenerateColumns="False">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

                          <Columns>
                              <asp:BoundField DataField="Ci" HeaderText="CI">
                              <FooterStyle Font-Bold="True" />
                              </asp:BoundField>
                              <asp:BoundField DataField="FullNameString" HeaderText="Nombre Completo" />
                          </Columns>

                          <EditRowStyle  BackColor="#999999" />
                          <FooterStyle  BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                          <HeaderStyle  BackColor="#54b4d4" Font-Bold="True" ForeColor="White" />
                          <PagerStyle  BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                          <RowStyle  BackColor="#F7F6F3" ForeColor="#333333" />
                          <SelectedRowStyle  BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    
  
                      </asp:GridView>
                     </div> 
                     
                     <div>
                         <asp:Button ID="btnConsultationCreate" OnClick="btnConsultationCreate_Click" causesvalidation="true" validationgroup="grupoValidacion1" CssClass="btn btn-outline-info mt-5" Font-Bold="true" Font-Size="Medium" Width="100%" runat="server" Text="Programar" />
                     </div>
  
                 </div>
                  </div>
                  
                 
              </div>
          </div>
      </section>
  </div>
 
      


<div id="exampleModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">  

    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Seleccionar enfermer@s...</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
              <asp:GridView ID="gvNurse" Font-Size="Large" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="idEmployee" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" PageSize="5">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                               <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkRow" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                              <asp:BoundField DataField="idEmployee" ReadOnly="True" SortExpression="idEmployee" ItemStyle-ForeColor="Transparent"/>
                             
                              <asp:BoundField DataField="ci" HeaderText="ci" SortExpression="ci" />
                              <asp:BoundField DataField="Nombre Completo" HeaderText="Nombre Completo" SortExpression="Nombre Completo" ReadOnly="True" />
                          </Columns>
                          <EditRowStyle BackColor="#999999" />
                          <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                          <HeaderStyle BackColor="#077ebc" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                          <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                          <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                          <SortedAscendingCellStyle BackColor="#E9E7E2" />
                          <SortedAscendingHeaderStyle BackColor="#506C8C" />
                          <SortedDescendingCellStyle BackColor="#FFFDF8" />
                          <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                      </asp:GridView>
  
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        <button name="btnAddNurses" id="btnAddNurses" runat="server" onserverclick="btnAddNurses_ServerClick" class="btn btn-primary">Guardar</button>
      </div>
    </div>
  </div>
</div>      

      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SystemVacunationConnectionString %>" SelectCommand="SELECT [idEmployee], [ci], CONCAT(firstName ,' ' , lastName,'  ' ,secondLastName) AS 'Nombre Completo' FROM [Employees] WHERE ([role] = @role)" OnSelecting="SqlDataSource1_Selecting">
          <SelectParameters>
              <asp:Parameter DefaultValue="NURSE" Name="role" Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>

</form>  
     
  </body>
</html>
