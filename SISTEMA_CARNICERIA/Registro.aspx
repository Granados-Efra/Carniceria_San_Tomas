<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="SISTEMA_CARNICERIA.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Carnicería San Tomás</title>
    <link href="../css/profile.css" rel="stylesheet" />
    <script src="js/sweetalert2.all.min.js"></script>
    <script src="js/codigo.js"></script>
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
                     <li class="user"><a class="a-nav" href="#"></a></li>
                </ul>
            </nav>
        </header>


       <h1 style="display:flex; justify-content:center;" >Registro</h1>
        <div style="display:flex; margin-bottom: 50px; margin-top:50px;">
                
                <div class="info-personal" style="width:40%; display:flex; flex-wrap: wrap !important; justify-content: center;margin-top: 20px;"> 
                    <div  style="width: 100%; overflow: hidden; display: flex; justify-content: center; margin-top:40px;">
                        <img style="max-height:250px; " src="./img/user_info.png" alt=""/>
                    </div>   

                </div>
                
                   
    

                <div style="width: 60%; display:flex; flex-wrap:wrap; margin-top: 60px;">  

                    <div style="width:100%; display: flex">
                        <div class="etiqueta" style="width:20%">
                            <asp:Label Text="Nombre" runat="server" />  
                        </div>
                        <div class="campo" style="width:80%">
                            <asp:TextBox style="margin-left:20px"  ID="TextBox1" runat="server"> Nombre </asp:TextBox>
                        </div>
                    </div>

                    <div style="width:100%; display: flex;">
                        <div class="etiqueta" style="width:20%">
                             <asp:Label Text="Apellido Paterno" runat="server" /> 
                        </div>
                        <div class="campo" style="width:80%">
                           <asp:TextBox style="margin-left:20px" ID="TextBox2" runat="server"> Apellido Paterno</asp:TextBox> 
                        </div>               
                    </div>   

                     <div style="width:100%; display: flex;">
                         <div class="etiqueta" style="width:20%">
                            <asp:Label Text="Apellido Materno" runat="server" /> 
                        </div>
                        <div class="campo" style="width:80%">
                           <asp:TextBox style="margin-left:20px" ID="TextBox3" runat="server">Apellido Materno</asp:TextBox> 
                        </div>         
                    </div> 

                     <div style="width:100%; display: flex;">
                         <div class="etiqueta" style="width:20%">
                            <asp:Label Text="Celular" runat="server" /> 
                        </div>
                        <div class="campo" style="width:80%">
                           <asp:TextBox style="margin-left:20px" ID="TextBox4" runat="server">Celular</asp:TextBox> 
                        </div>
                    </div> 

                    <div style="width:100%; display: flex;">
                        <div class="etiqueta" style="width:20%">
                             <asp:Label  Text="Correo Electrónico" runat="server" />
                        </div>
                        <div class="campo" style="width:80%">
                           <asp:TextBox  style="margin-left:20px;" ID="TextBox5" runat="server"> Correo Electrónico</asp:TextBox> 
                        </div>                       
                    </div> 


                    <div style="width:100%; display: flex">
                        <div style="width:20%">
                            <asp:Label CssClass="etiqueta" Text="Colonia" runat="server" />  
                        </div>
                        <div style="width:80%">
                            <asp:TextBox CssClass="campo" style="margin-left:20px"  ID="TextBox6" runat="server"> Colonia </asp:TextBox>
                        </div>
                    </div>

                    <div style="width:100%; display: flex;">
                        <div style="width:20%">
                             <asp:Label CssClass="etiqueta" Text="Calle y número" runat="server" /> 
                        </div>
                        <div style="width:80%">
                           <asp:TextBox CssClass="campo" style="margin-left:20px" ID="TextBox7" runat="server"> Calle y número</asp:TextBox> 
                        </div>               
                    </div>   

                     <div style="width:100%; display: flex;">
                         <div style="width:20%">
                            <asp:Label CssClass="etiqueta" Text="Municipio" runat="server" /> 
                        </div>
                        <div style="width:80%">
                           <asp:TextBox CssClass="campo" style="margin-left:20px" ID="TextBox8" runat="server">Municipio</asp:TextBox> 
                        </div>         
                    </div> 

                     <div style="width:100%; display: flex;">
                         <div style="width:20%">
                            <asp:Label CssClass="etiqueta" Text="Ciudad" runat="server" /> 
                        </div>
                        <div style="width:80%">
                           <asp:TextBox CssClass="campo" style="margin-left:20px" ID="TextBox9" runat="server">Ciudad</asp:TextBox> 
                        </div>
                    </div> 

                    <div style="width:100%; display: flex;">
                        <div style="width:20%">
                             <asp:Label CssClass="etiqueta" Text="Referencia" runat="server" />
                        </div>
                        <div style="width:80%">
                           <asp:TextBox CssClass="campo" style="margin-left:20px" ID="TextBox10" runat="server"> Referencia</asp:TextBox> 
                        </div>                       
                    </div> 


                    <div style="width:100%; display: flex;">
                        <div style="width:20%">
                            <asp:Label CssClass="etiqueta" Text="Características" runat="server" /> 
                        </div>
                        <div style="width:80%">
                            <asp:TextBox CssClass="campo" style="margin-left:20px" ID="TextBox11" runat="server" Height="59px" Width="299px"> Características de la casa, imagino</asp:TextBox> 
                        </div>    
                    </div> 


                    <div style="width:100%;  display: flex;">
                        <div style="width:20%">
                            <asp:Label CssClass="etiqueta" Text="CP" runat="server" /> 
                        </div>
                        <div style="width:80%">
                            <asp:TextBox CssClass="campo" style="margin-left:20px" ID="TextBox12" runat="server">Código Postal</asp:TextBox> 
                        </div>
                    </div> 



                     <div style=" width: 100%; display:flex;">
                        
                        <div style="width:25%;">
                                <asp:Button CssClass="btn user_btn" ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />                                         
                               
                        </div>
                     </div>
                </div>             
        </div>


       <div style="display: flex; justify-content: center; flex-wrap: wrap; margin-bottom: 200px;">
           <h1 style="width: 100%; justify-content: center">Iniciar sesión</h1>
           <asp:Button CssClass="btn user_btn" ID="Button2" runat="server" Text="Iniciar sesión como:" OnClick="Button2_Click" />

           <div style="width: 100%; justify-content: center; display: flex;">
               <asp:DropDownList Style="margin: auto; justify-content: center;" ID="DropDownList1" runat="server" Height="48px" Width="300px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
               <br />
               <br />
               <br />


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
