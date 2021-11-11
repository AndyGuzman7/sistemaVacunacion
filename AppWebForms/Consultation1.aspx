<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultation1.aspx.cs" Inherits="AppWebForms.Consultation1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<link rel="stylesheet" href="Styles/SConsultation.css"/>



    <div>
      <div class="imageBg" style="width:100%"></div>
  
      <section>
          <div class="container">
              <div class="contactInfo">
                  
                      <div class="form-group">
                          <label for="exampleInputEmail1">Nro Vacunas</label>
                          <input type="number" class="form-control" id="" placeholder="Nro Vacunas ">
                      </div>
                      <div class="form-group">
                          <label for="exampleInputPassword1">Hora Inicio</label>
                          <input type="date" class="form-control" id="" placeholder="Hora Inicio">
                          </span>
                      </div> 
                      <div class="form-group">
                          <label for="exampleInputPassword1">Hora Inicio</label>
                          <input type="time" class="form-control" id="" placeholder="Hora Inicio">
                      </div>
                      <div class="form-group">
                          <label for="exampleInputPassword1">Hora Inicio</label>
                          <input type="time" class="form-control" id="" placeholder="Hora Fin">
                      </div>
                      
                  
                  
                  
              </div>
              <div class="contactForm">
                  
                  <div class="formBox" style="text-align: right;">
                    <button id="btn2" class="btn btn-primary">
                      <i class="fa fa-user-plus" style="font-size:40px;"></i> 
                    </button>
                    
                    
                  </div>
  
              </div>
          </div>
      </section>
  </div>
 
      

<!-- Modal 2 - animado-->
<div id="modal2" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <!--      Para centrado-->
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">  

<!--  <div class="modal-dialog" role="document">-->
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

              <asp:GridView ID="gvNurse" Font-Size="Large" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="idEmployee" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" PageSize="5">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                              <asp:BoundField DataField="idEmployee" ControlStyle-Width="20px" ControlStyle-Height="20px" HeaderText="idEmployee" InsertVisible="False" ReadOnly="True" SortExpression="idEmployee" Visible="False" />
                              <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chbItem" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                              <asp:BoundField DataField="ci" HeaderText="ci" SortExpression="ci" />
                              <asp:BoundField DataField="Nombre Completo" HeaderText="Nombre Completo" SortExpression="Nombre Completo" ReadOnly="True" />
                          </Columns>
                          <EditRowStyle BackColor="#999999" />
                          <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                          <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
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
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" name="" runat="server" >Save changes</button>
      </div>
    </div>
  </div>
</div>    
         
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog " role="document">
<div class="modal-content modalStyle">
<div class="styleHeader">
<div class="modal-header">
<h5 class="modal-title" id="exampleModalLabel">Hora de Consulta</h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div> </div>
<div class="modal-body">
<h5>¿Esta seguro de la hora de su consulta?
</h5>
<div id="" class=""> <div class="cards">
<div class=" <% %> cardsContent ">
<div class="col-12 " style="text-align: center"> <div style="font-size: 22px;">
<asp:Label ID="lblHora" runat="server" ClientIDMode="Static"></asp:Label>
<i style="font-size: 20px" class="fas fa-syringe"></i>
</div>
<asp:HiddenField runat="server" Value="0" ID="txtIdHours" ClientIDMode="Static" /> </div> </div>
</div>
<div class="containerState">
<div style="width: 100%; height: 7px; margin: 10px 0; background-color: #808080">
<div style="height: 7px; width: 100%; background-color: royalblue">
</div> </div>
</div>
</div>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
<asp:Button ID="btnReservationNext" runat="server" Text="Siguiente" CssClass="btn btn-primary" />
</div>
</div>
</div>
</div>


<div id="itemLoop" class="" data-toggle="modal" data-target="#exampleModal" onclick="javascript:abrir_cerrar_reg();">click
</div>





      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SystemVacunationConnectionString %>" SelectCommand="SELECT [idEmployee], [ci], CONCAT(firstName ,' ' , lastName,'  ' ,secondLastName) AS 'Nombre Completo' FROM [Employees] WHERE ([role] = @role)">
          <SelectParameters>
              <asp:Parameter DefaultValue="NURSE" Name="role" Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>


</asp:Content>
