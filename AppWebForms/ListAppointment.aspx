<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListAppointment.aspx.cs" Inherits="AppWebForms.ListAppointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
    <div class="container">

        <div class="row mb-2">
            <div class="col-sm-12">
                <div style="width: 100%; text-align: center">
                    <p class="fontTitle" style="display: inline-block;">Concierte una</p>
                    <p class="fontTitle" style="display: inline-block; color: #3bafbf">cita</p>
                </div>

                <div style="width: 100%; display: inline-block;">
                    <p class="fontSubTitle">
                        Estamos aquí para usted y podemos programar una cita las 24 horas del día, los 7 días de la semana. Si el consultorio no está abierto, podemos derivarlo a uno de nuestros médicos de guardia en su hospital cercano.
                    </p>
                </div>


            </div>


        </div>

    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <style>
        .containerList {
            max-width: 1200px;
            padding: 40px 0;
            display: grid;
            grid-template-columns: 1fr;
        }

        .containerItems {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .cards {
            min-height: 80px;
            position: relative;
            overflow: hidden;
            width: 100%;
            background-size: cover;
            display: flex;
            align-items: center;
            background-position: center center;
            /*box-shadow: 0px 1px 5px 1px grey;*/
        }



        @media(max-width:1160px) {
            .containerItems {
                display: grid;
                grid-template-columns: repeat(4, 1fr);
                gap: 20px;
            }
        }

        @media(max-width:981px) {
            .containerItems {
                display: grid;
                grid-template-columns: repeat(3, 1fr);
                gap: 20px;
            }
        }


        @media(max-width:719px) {
            .containerItems {
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                gap: 20px;
            }
        }

        @media(max-width:523px) {
            .containerItems {
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                gap: 20px;
            }
        }

        .containerState {
            display: flex;
            grid-template-columns: repeat(1, 1fr);
            align-items: center;
        }

        .cardsContent {
            display: flex;
            align-items: center;
            padding: 0;
            width: 100%
        }

        #itemLoop {
            transition: all 300ms;
            box-shadow: 0px 1px 5px 1px grey;
        }

            #itemLoop:hover {
                cursor: pointer;
                transform: scale(1.05)
            }

        .containerInformation {
            border-radius: 5px;
            width: 100%;
            padding: 10px;
            color: #3bafbf;
            font-size: 15px;
            margin: 20px 0;
            display: flex;
            align-items: center;
            background-color: rgba(175, 223, 224, .4);
        }

        .inlineBlockTag {
            display: inline-block;
        }

        .containerSearch {
            width: 100%;
            margin: 20px 0;
            font-size: 15px;
        }
    </style>


    <div class="container col-sm-12">
        <div class="containerInformation">
            <i class="fas fa-info-circle inlineBlockTag"></i>
            <div style="width: 100%; display: inline-block;">
                <div class="">
                    Seleccione el horario que mas le guste para su consulta.
                </div>
            </div>
        </div>


    </div>
    <div class="container">
        <div class="containerSearch">


            <div class="form-group">
                <div class="col-sm-3">
                    <label>Seleccione un Horario</label>
                </div>

                <div class="col-sm-9">
                    <asp:DropDownList Font-Size="15px" Height="40px" CssClass="custom-select my-1 mr-sm-2" ID="ddlHoursApoitmet" OnSelectedIndexChanged="ddlHoursApoitmet_SelectedIndexChanged"
                        AutoPostBack="True"
                        runat="server">
                        <asp:ListItem Selected="True" Value="White"> White </asp:ListItem>
                        <asp:ListItem Value="Silver"> Silver </asp:ListItem>
                        <asp:ListItem Value="DarkGray"> Dark Gray </asp:ListItem>
                        <asp:ListItem Value="Khaki"> Khaki </asp:ListItem>
                        <asp:ListItem Value="DarkKhaki"> Dark Khaki </asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>

        </div>

    </div>

    <div class=" container containerList">
        <asp:DataList ID="DataList1" runat="server" CssClass="row containerItems" RepeatDirection="Horizontal" RepeatLayout="Flow">
            <ItemTemplate>
                <div id="itemLoop" class="">

                    <div class="cards">
                        <div class=" <% %> cardsContent ">

                            <div class="col-6">
                                <div style="font-size: 15px;">08:00-08:05</div>
                            </div>
                            <div class="col-6 " style="text-align: center">
                                <!--<i style="font-size: 20px" class="far fa-check-square"></i>
                                <i style="font-size: 20px" class="far fa-check-square"></i>
                                <i style="font-size: 20px" class="far fa-check-square"></i>
                                <i style="font-size: 20px" class="far fa-check-square"></i>
                                <i style="font-size: 20px" class="far fa-check-square"></i>
                                <i style="font-size: 20px" class="far fa-check-square"></i>
                                <i style="font-size: 20px" class="far fa-check-square"></i>
                                <i style="font-size: 20px" class="far fa-check-square"></i>
                                <i style="font-size: 20px" class="far fa-check-square"></i>-->


                                <div style="font-size: 22px;">
                                    10/12  <i style="font-size: 20px" class="fas fa-syringe"></i>
                                </div>


                            </div>

                        </div>
                    </div>
                    <div class="containerState">
                        <div style="width: 100%; height: 7px; margin: 10px 0; background-color: #808080">
                            <div style="height: 7px; width: 40%; background-color: royalblue">
                            </div>

                        </div>


                    </div>
                </div>

            </ItemTemplate>
        </asp:DataList>
    </div>

</asp:Content>
