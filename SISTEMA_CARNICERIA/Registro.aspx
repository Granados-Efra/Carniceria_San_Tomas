<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="SISTEMA_CARNICERIA.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Carnicería San Tomás</title>
    <link href="../css/profile.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="js/sweetalert2.all.min.js"></script>
    <script src="js/codigo.js"></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;1,400;1,500&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


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


       <h1  class="h1 mt-5 "style="display:flex; justify-content:center; " >Registro de nuevos usuarios</h1>
        <div style="display:flex; margin-bottom: 50px; margin-top:50px;">
                
                <div class="info-personal" style="width:40%; display:flex; flex-wrap: wrap !important; justify-content: center;margin-top: 20px;"> 
                    <div  style="width: 100%; overflow: hidden; display: flex; justify-content: center; margin-top:40px;">
                        <img style="max-height:250px; " src="./img/press-button.png" alt=""/>
                    </div>   

                </div>
                
                   
    

                <div style="width: 60%; display:flex; flex-wrap:wrap; margin-top: 60px;" >  

                    <div style="width:100%; display: flex">
                        <div class="etiqueta" style="width:20%">
                            <asp:Label Text="Nombre" runat="server" />  
                        </div>
                        <div class="form-group " style="width:40%">
                            <asp:TextBox style="margin-left:20px"  CssClass="form-control"  ID="TextBox1" runat="server" placeholder="Nombre"  >  </asp:TextBox>
                        </div>
                    </div>

                    <div style="width:100%; display: flex;">
                        <div class="etiqueta" style="width:20%">
                             <asp:Label Text="Apellido Paterno" runat="server" /> 
                        </div>
                        <div class="form-group" style="width:40%">
                           <asp:TextBox  CssClass="form-control"  style="margin-left:20px" ID="TextBox2" runat="server" placeholder="Apellido Paterno" > </asp:TextBox> 
                        </div>               
                    </div>   

                     <div style="width:100%; display: flex;">
                         <div class="etiqueta" style="width:20%">
                            <asp:Label Text="Apellido Materno" runat="server" /> 
                        </div>
                        <div class="form-group" style="width:40%">
                           <asp:TextBox  CssClass="form-control"  style="margin-left:20px" ID="TextBox3" runat="server" placeholder="Apellido Materno"></asp:TextBox> 
                        </div>         
                    </div> 

                     <div style="width:100%; display: flex;">
                         <div class="etiqueta" style="width:20%">
                            <asp:Label Text="Celular" runat="server" /> 
                        </div>
                        <div class="form-group" style="width:40%">
                           <asp:TextBox  CssClass="form-control"  style="margin-left:20px" ID="TextBox4" runat="server" placeholder="Celular"></asp:TextBox> 
                        </div>
                    </div> 

                    <div style="width:100%; display: flex;">
                        <div class="etiqueta" style="width:20%">
                             <asp:Label  Text="Correo Electrónico" runat="server" />
                        </div>
                        <div class="form-group" style="width:40%">
                           <asp:TextBox  CssClass="form-control"  style="margin-left:20px;" ID="TextBox5" runat="server" placeholder="Correo Electrónico" TextMode="Email"></asp:TextBox> 
                        </div>                       
                    </div> 


                    <div style="width:100%; display: flex">
                        <div style="width:20%">
                            <asp:Label CssClass="etiqueta" Text="Colonia" runat="server" />  
                        </div>
                        <div style="width:40%" class="form-group">
                            <asp:TextBox CssClass="form-control" style="margin-left:20px"  ID="TextBox6" runat="server" placeholder="Colonia">  </asp:TextBox>
                        </div>
                    </div>

                    <div style="width:100%; display: flex;">
                        <div style="width:20%">
                             <asp:Label CssClass="etiqueta" Text="Calle y número" runat="server" /> 
                        </div>
                        <div style="width:40%" class="form-group">
                           <asp:TextBox CssClass="form-control" style="margin-left:20px" ID="TextBox7" runat="server" placeholder ="Calle y número"> </asp:TextBox> 
                        </div>               
                    </div>   

                     <div style="width:100%; display: flex;">
                         <div style="width:20%">
                            <asp:Label CssClass="etiqueta" Text="Municipio" runat="server" /> 
                        </div>
                        <div style="width:40%" class="form-group">
                           <asp:TextBox CssClass=" form-control" style="margin-left:20px" ID="TextBox8" runat="server" placeholder ="Municipio"></asp:TextBox> 
                        </div>         
                    </div> 

                     <div style="width:100%; display: flex;">
                         <div style="width:20%">
                            <asp:Label CssClass="etiqueta" Text="Ciudad" runat="server" /> 
                        </div>
                        <div style="width:40%" class="form-group">
                           <asp:TextBox CssClass="form-control" style="margin-left:20px" ID="TextBox9" runat="server" placeholder ="Ciudad"></asp:TextBox> 
                        </div>
                    </div> 

                    <div style="width:100%; display: flex;">
                        <div style="width:20%">
                             <asp:Label CssClass="etiqueta" Text="Referencia" runat="server" />
                        </div>
                        <div style="width:40%" class="form-group">
                           <asp:TextBox CssClass="form-control" style="margin-left:20px" ID="TextBox10" runat="server" placeholder="Referencia"> </asp:TextBox> 
                        </div>                       
                    </div> 


                    <div style="width:100%; display: flex;">
                        <div style="width:20%">
                            <asp:Label CssClass="etiqueta" Text="Características" runat="server" /> 
                        </div>
                        <div style="width:40%" class="form-group">
                            <asp:TextBox CssClass="form-control" style="margin-left:20px" ID="TextBox11" runat="server" Height="70px" placeholder="Características de la casa"> </asp:TextBox> 
                        </div>    
                    </div> 


                    <div style="width:100%;  display: flex;">
                        <div style="width:20%" >
                            <asp:Label CssClass="etiqueta" Text="CP" runat="server" /> 
                        </div>
                        <div style="width:40%" class="form-group">
                            <asp:TextBox CssClass=" form-control" style="margin-left:20px" ID="TextBox12" runat="server" placeholder="Código Postal"></asp:TextBox> 
                        </div>
                    </div> 



                     <div style=" width: 100%; display:flex;">
                        
                        <div style="width:20%;">
                                <asp:Button CssClass="btn btn-success btn-lg" ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />                                         
                               
                        </div>
                     </div>
                </div>             
        </div>


       <div style="display: flex; justify-content: center; flex-wrap: wrap; margin-bottom: 200px;">
           <h1 style="width: 100%; justify-content: center; margin-left:0px;">Iniciar sesión</h1>
           <asp:Button  CssClass="btn btn-primary btn-lg" ID="Button2" runat="server" Text="Iniciar sesión como:" OnClick="Button2_Click" />

           <div style="width: 100%; margin-top:20px; justify-content: center; display: flex;" >
               <asp:DropDownList Style="margin: auto; justify-content: center;" ID="DropDownList1" runat="server" Height="48px" Width="300px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="custom-select custom-select-lg mt-4 mb-4"></asp:DropDownList>
               <br />
             
           </div>
           <asp:Button style="background-color:#28a029"  CssClass="btn btn-success btn-lg" ID="Button3" runat="server" OnClick="Button3_Click" Text="Actualizar lista de usuarios" />


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
                        Pedro De La Cruz Lucas
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
