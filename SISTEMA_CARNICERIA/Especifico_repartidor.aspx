﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Especifico_repartidor.aspx.cs" Inherits="SISTEMA_CARNICERIA.Especifico_repartidor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Carnicería San Tomás</title>
    <link href="../css/profile.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>

</head>
<body>
    <form id="form1" runat="server">
        <header>
            <nav>
                <ul>
                     <li class="logo"><a class="a-nav" href="Index.aspx"><img  src="./img/carne.png" alt=""/></a> <a class="a-nav" href="Index.aspx">Carnicería San Tomás</a>  </li>
                    <li class="logo-central"><img src="./img/vaca.png" alt=""/>
                     </li>
                     <li class="user"><a class="a-nav" href="Profile.aspx"><i style="margin-right: 4px;" class="far fa-user"></i>Mario</a></li>
                </ul>
            </nav>
        </header>

        <div style=" width: 100%; display:flex; justify-content:center">
            <div style="width:100%; display:flex; justify-content:center">
                <a style="background:#618c61" href="Pedidos.aspx" class="btn user_btn">Regresar</a>  
            </div>          
        </div>

        <div style="display:flex; margin-bottom: 250px;">
                <div class="info-personal" style="width:20%; display:flex; flex-wrap: wrap !important; justify-content: center;margin-top: 20px;"> 
                        <h3 style="min-width: 100%; display: flex; ">Pedidos Cobrados por los repartidores</h3>  
                        <div  style="width: 100%; max-height:200px; overflow: hidden; display: flex;justify-content: center;">
                            <img style="max-height: 200px;" src="./img/pedidos.jpg" alt=""/>
                        </div>        
                </div>

                
                      <%--  COMIENZA EL DESPLIEGUE DE PEDIDOS EN EL SIGUIENTE DIV --%>
                <div style="width: 80%; display:flex; flex-wrap:wrap; margin-top: 60px; background-color:greenyellow;"> 
                    <asp:DropDownList  ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" ></asp:DropDownList>
                    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    </asp:GridView>
                    <asp:Calendar ID="Calendar1" runat="server"  OnSelectionChanged="Calendar1_SelectionChanged" ></asp:Calendar>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Consultar" />
                    <br />
                    
                    <br />
                &nbsp;</div>    
            


        </div>
        

         <footer>   
            <div>
                <div style="color: white; display: flex; justify-content: space-around; font-size: 20px; ">
                    <p>Integrantes:</div>
                <ul>
                    <li>
                        Roman Antonio Isidor Guinto
                    </li>
                    <li>
                        Pedro Apellido Apellido
                    </li>
                    <li>
                        Efrain Granados Rodríguez
                    </li>
                </ul>
            </div>
        </footer>

    </form>
</body>
</html>