<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Nuevo_pedido.aspx.cs" Inherits="SISTEMA_CARNICERIA.Nuevo_pedido" %>

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


       <h1 style="display:flex; justify-content:center; margin-top:70px;" >Nuevo pedido</h1>
        <div style="display:flex; margin-bottom: 50px; margin-top:50px;">

                <div class="info-personal" style="width:40%; display:flex; flex-wrap: wrap !important; justify-content: center;margin-top: 20px;"> 
                    <div  style="width: 100%; overflow: hidden; display: flex; justify-content: center; margin-top:40px;">
                        <img style="max-height:250px; " src="./img/pig.png" alt=""/>
                    </div>   

                </div>




                <div style="width: 60%; display:flex; flex-wrap:wrap; margin-top: 60px;">  

                    <div style="width:100%; display: flex; margin-bottom: 20px;">
                        <div class="etiqueta" style="width:20%">
                            <asp:Label Text="Nombre del producto" runat="server" />  
                        </div>
                        <div class="form-group" style="width:40%">
                            <asp:TextBox  CssClass="form-control" style="margin-left:20px"  ID="TextBox1" runat="server" placeholder="Nombre"> </asp:TextBox>
                        </div>
                    </div>

                    <div style="width:100%; display: flex; margin-bottom: 20px;">
                        <div class="etiqueta" style="width:20%">
                             <asp:Label Text="Peso" runat="server" /> 
                        </div>
                        <div class="form-group" style="width:40%">
                           <asp:TextBox CssClass="form-control" style="margin-left:20px" ID="TextBox2" runat="server" placeholder="Peso(kg)"> </asp:TextBox> 
                        </div>               
                    </div>   

                     <div style="width:100%; display: flex; margin-bottom: 20px;">
                         <div class="etiqueta" style="width:20%">
                            <asp:Label Text="Cantidad" runat="server" /> 
                        </div>
                        <div class="form-group" style="width:40%">
                           <asp:TextBox CssClass="form-control" style="margin-left:20px" ID="TextBox3" runat="server" placeholder="Precio por kilo"></asp:TextBox> 
                        </div>         
                    </div> 

                     <div style="width:100%; display: flex;margin-bottom: 20px;">
                         <div class="etiqueta" style="width:20%">
                            <asp:Label Text="Precio final" runat="server" /> 
                        </div>
                        <div class="form-group" style="width:40%">
                           <asp:TextBox CssClass="form-control" style="margin-left:20px" ID="TextBox4" runat="server" placeholder="Precio en pesos (mxn)"></asp:TextBox> 
                        </div>
                    </div> 

                    <div style="width:100%; display: flex;margin-bottom: 20px;">
                        <div class="etiqueta" style="width:20%">
                             <asp:Label  Text="Nota especial" runat="server" />
                        </div>
                        <div class="form-group" style="width:40%">
                           <asp:TextBox  CssClass="form-control"  style="margin-left:20px;" ID="TextBox5" runat="server" Height="117px"  placeholder="Intrucciones especiales"> </asp:TextBox> 
                        </div>                       
                    </div> 


                    <div style="width:100%; display: flex;margin-bottom: 20px;">
                        <div style="width:20%">
                            <asp:Label CssClass="etiqueta" Text="Recoge en tienda o envío a dom." runat="server" />  
                        </div>
                        <div style="width:40%">
                            <asp:DropDownList style="padding:8px; margin-left:20px;" CssClass="custom-select" ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem Value="0">Recoger en tienda</asp:ListItem>
                                <asp:ListItem Value="1">Envío a domicilio</asp:ListItem>

                            </asp:DropDownList>
                        </div>     
                    </div>

                    <div style="width:100%; display: flex;margin-bottom: 20px;">
                        <div style="width:20%">
                             <asp:Label CssClass="etiqueta" Text="Método de pago:" runat="server" /> 
                        </div>
                        <div style="width:40%">
                            <asp:DropDownList style="padding:8px; margin-left:20px;" CssClass="custom-select" ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem Value="0">Al recoger en tienda</asp:ListItem>
                                <asp:ListItem Value="0">Método Electrónico</asp:ListItem>
                                <asp:ListItem Value="1">Pagar al repartidor</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </div>               
                    </div>   



                    <div style=" width: 100%; display:flex;">
                        <div style="width:25%;">
                            <a href="Profile.aspx" class="btn btn-danger btn-lg">Regresar</a>  
                        </div>
                        <div style="width:25%;">
                                <asp:Button CssClass="btn btn-success btn-lg" ID="Button1" runat="server" Text="Comprar" OnClick="Button1_Click" />                                         
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