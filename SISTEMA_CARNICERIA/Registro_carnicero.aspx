<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro_carnicero.aspx.cs" Inherits="SISTEMA_CARNICERIA.Registro_carnicero" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Carnicería San Tomás</title>
    <script src="js/sweetalert2.all.min.js"></script>
    <script src="js/codigo.js"></script>
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

        <div style="display:flex; margin-bottom: 500px; margin-top:50px;">
                <div class="info-personal" style="width:40%; display:flex; flex-wrap: wrap !important; justify-content: center;margin-top: 20px;"> 
                        <h1 style="min-width: 100%; display: flex; padding-left: 255px;">Registro de carnicero</h1>  
                        <div style="width: 100%; max-height:200px; overflow: hidden; display: flex;justify-content: center;">
                            <img style="max-height: 200px;" src="./img/carnicero.jpg" alt=""/>
                        </div>        
                </div>

                <div style="width: 60%; display:flex; flex-wrap:wrap; margin-top: 60px;">  

                    <div style="width:100%; display: flex">
                        <div style="width:15%">
                            <asp:Label CssClass="etiqueta" Text="Nombre" runat="server" />  
                        </div>
                        <div style="width:85%">
                            <asp:TextBox CssClass="campo" style="margin-left:20px"  ID="TextBox1" runat="server"> Nombre </asp:TextBox>
                        </div>
                    </div>

                    <div style="width:100%; display: flex;">
                        <div style="width:15%">
                             <asp:Label CssClass="etiqueta" Text="Celular" runat="server" /> 
                        </div>
                        <div style="width:85%">
                           <asp:TextBox CssClass="campo" style="margin-left:20px" ID="TextBox2" runat="server"> Celular</asp:TextBox> 
                        </div>               
                    </div>   

                     <div style="width:100%; display: flex;">
                         <div style="width:15%">
                            <asp:Label CssClass="etiqueta" Text="Correo" runat="server" /> 
                        </div>
                        <div style="width:85%">
                           <asp:TextBox CssClass="campo" style="margin-left:20px" ID="TextBox3" runat="server">Correo</asp:TextBox> 
                        </div>         
                    </div> 

                     <div style="width:100%; display: flex;">
                         <div style="width:15%">
                            <asp:Label CssClass="etiqueta" Text="Experiencia" runat="server" /> 
                        </div>
                        <div style="width:85%">
                           <asp:TextBox CssClass="campo" style="margin-left:20px" ID="TextBox4" runat="server" MaxLength="2">Experiencia en años</asp:TextBox> 
                        </div>
                    </div> 

                    

                    <div style=" width: 100%; display:flex;">
                        <div style="width:25%;">
                            <a style="background:#618c61" href="Profile.aspx" class="btn user_btn">Regresar</a>  
                        </div>
                        <div style="width:25%;">
                                <asp:Button CssClass="btn user_btn" ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />                                         
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
