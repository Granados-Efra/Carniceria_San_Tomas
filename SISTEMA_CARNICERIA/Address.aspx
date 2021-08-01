<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Address.aspx.cs" Inherits="SISTEMA_CARNICERIA.adress" %>

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

        <div style="display:flex; margin-bottom: 150px; margin-top:50px;">
                <div class="info-personal" style="width:40%; display:flex; flex-wrap: wrap !important; justify-content: center;margin-top: 20px;"> 
                        <h3 style="min-width: 100%; display: flex; padding-left: 255px;">Datos de ubicación</h3>  
                        <div style="width: 100%; max-height:200px; overflow: hidden; display: flex;justify-content: center;">
                            <img style="max-height: 200px;" src="./img/address.jpg" alt=""/>
                        </div>        
                </div>

                <div style="width: 60%; display:flex; flex-wrap:wrap; margin-top: 60px;">  

                    <div style="width:100%; display: flex">
                        <div style="width:15%">
                            <asp:Label CssClass="etiqueta" Text="Colonia" runat="server" />  
                        </div>
                        <div style="width:85%">
                            <asp:TextBox CssClass="campo" style="margin-left:20px"  ID="TextBox1" runat="server"> Colonia </asp:TextBox>
                        </div>
                    </div>

                    <div style="width:100%; display: flex;">
                        <div style="width:15%">
                             <asp:Label CssClass="etiqueta" Text="Calle y número" runat="server" /> 
                        </div>
                        <div style="width:85%">
                           <asp:TextBox CssClass="campo" style="margin-left:20px" ID="TextBox2" runat="server"> Calle y número</asp:TextBox> 
                        </div>               
                    </div>   

                     <div style="width:100%; display: flex;">
                         <div style="width:15%">
                            <asp:Label CssClass="etiqueta" Text="Municipio" runat="server" /> 
                        </div>
                        <div style="width:85%">
                           <asp:TextBox CssClass="campo" style="margin-left:20px" ID="TextBox3" runat="server">Municipio</asp:TextBox> 
                        </div>         
                    </div> 

                     <div style="width:100%; display: flex;">
                         <div style="width:15%">
                            <asp:Label CssClass="etiqueta" Text="Ciudad" runat="server" /> 
                        </div>
                        <div style="width:85%">
                           <asp:TextBox CssClass="campo" style="margin-left:20px" ID="TextBox4" runat="server">Ciudad</asp:TextBox> 
                        </div>
                    </div> 

                    <div style="width:100%; display: flex;;">
                        <div style="width:15%">
                             <asp:Label CssClass="etiqueta" Text="Referencia" runat="server" />
                        </div>
                        <div style="width:85%">
                           <asp:TextBox CssClass="campo" style="margin-left:20px" ID="TextBox5" runat="server"> Referencia</asp:TextBox> 
                        </div>                       
                    </div> 


                    <div style="width:100%; display: flex;">
                        <div style="width:15%">
                            <asp:Label CssClass="etiqueta" Text="Características" runat="server" /> 
                        </div>
                        <div style="width:85%">
                            <asp:TextBox CssClass="campo" style="margin-left:20px" ID="TextBox6" runat="server" Height="59px" Width="299px"> Características</asp:TextBox> 
                        </div>    
                    </div> 


                    <div style="width:100%;  display: flex;">
                        <div style="width:15%">
                            <asp:Label CssClass="etiqueta" Text="CP" runat="server" /> 
                        </div>
                        <div style="width:85%">
                            <asp:TextBox CssClass="campo" style="margin-left:20px" ID="TextBox7" runat="server">Código Postal</asp:TextBox> 
                        </div>
                    </div> 

                    <div style=" width: 100%; display:flex;">
                        <div style="width:25%;">
                            <a style="background:#618c61" href="Profile.aspx" class="btn user_btn">Regresar</a>  
                        </div>
                        <div style="width:25%;">
                                <asp:Button CssClass="btn user_btn" ID="Button1" runat="server" Text="Modificar" />                                         
                        </div>
                    </div>


                </div>             
        </div>
        

         <footer>   
            <div>
                <div style="color: white; display: flex; justify-content: space-around; font-size: 20px; ">
                    <p>Integrantes:</p>
                </div>
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
