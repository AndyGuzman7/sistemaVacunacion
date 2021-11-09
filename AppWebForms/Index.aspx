<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="AppWebForms.Index" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentHeader" runat="server">

   <div class="container">
      

        <div class="row" style=" width:100%">
            <div class="col-sm-8">
                <div style="width: 100%;">
                    <p class="fontTitle" style="display: inline-block;">Cuidando</p>
                    <p class="fontTitle" style="display: inline-block; color: #3bafbf">la vida</p>
                </div>

                <div style="width: 100%; display: inline-block;">
                    <p class="fontSubTitle">
                        Las palabras amables pueden ser breves y fáciles de pronunciar, pero  sus ecos son realmente infinitos. Avada Health se enfoca en usted como  si fuera nuestra propia familia.
                    </p>
                </div>


            </div>

            <div class="col-sm-4">
                <div class="containerHoursConsult" style="width:100%;">
                    <div style="width: 100%; text-align: center; display: inline-block;">
                        <h3 style="width: 100%; text-align: center;">Horas de Consulta</h3>
                    </div>
                    <div style="height: 5px; background-color: deepskyblue;"></div>
                    <div class="row" style="width: 100%; text-align: center; display: flex">
                        <div class="col-6" style="width: 100%;">
                            Lunes - Viernes
                        </div>
                        <div class="col-6" style="width: 100%;">
                            8:00 – 5:00
                        </div>
                    </div>

                    <div class="row" style="width: 100%; text-align: center;">
                        <div class="col-6" style="width: 100%; display: inline-block">
                            Sabado
                        </div>
                        <div class="col-6" style="width: 100%; display: inline-block">
                            9:00 – 5:00
                        </div>
                    </div>

                    <div class="row" style="width: 100%; text-align: center; display: flex">
                        <div class="col-6" style="width: 100%;">
                            Domingo
                        </div>
                        <div class="col-6" style="width: 100%;">
                            11:00 – 4:00
                        </div>
                    </div>


                </div>
            </div>
        </div>

    </div>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>

