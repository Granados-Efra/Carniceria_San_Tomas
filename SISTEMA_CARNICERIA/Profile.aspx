<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="SISTEMA_CARNICERIA.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Carnicería San Tomás</title>
    <link href="../css/profile.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;1,400;1,500&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>


</head>
<body>
    <form id="form1" runat="server">
  <header>
        <nav>
            <ul>
                 <li class="logo"><a class="a-nav" href="Index.aspx"><img  src="./img/carne.png" alt=""/></a> <a class="a-nav" href="Index.aspx">Carnicería San Tomás</a>  </li>
                <li class="logo-central"><img src="./img/vaca.png" alt=""/></li>
                 <li class="user"><a class="a-nav" href="Profile.aspx"><i style="margin-right: 4px;" class="far fa-user"></i><%=Session["Nombres"].ToString()%></a></li>
            </ul>
        </nav>
    </header>
    
    <div>
        <h1> Perfil de usuario</h1>
        <p> 
            &nbsp;</p>
        <h2 id="welcome"> ¡Bienvenido  <%=Session["Nombres"].ToString()%>!</h2>
        <p> 
            &nbsp;</p>
        <p> &nbsp;</p>

        <div style="min-width: 100%; display: flex; margin-bottom: 200px; justify-content:center;">

           <div class="row" >

                
            <div class="col-md-6 info-personal" style="width:50%; display:flex; flex-wrap: wrap !important; justify-content: center; margin-top: 20px;"> 
                <h3 style="min-width: 100%; display: flex; justify-content:center; margin-left:0 !important; margin-bottom:50px">Pedidos</h3>  
                <div style="width: 100%; max-height:250px; overflow: hidden; display: flex; justify-content: center; ">
                    <img style="max-height: 100px; " src="./img/chop.png" alt=""/>
                </div> 

                 
                <div style="width: 100%; display:flex; justify-content:center">
                    <a style="margin-right: 15px;" href="Nuevo_Pedido.aspx" class="btn btn-danger btn-lg"> <i  style="margin-right:15px;"class="fas fa-shopping-basket"></i> Nuevo Pedido</a> 
                    <a  style="margin-left: 15px;"  href="Pedidos.aspx" class="btn btn-info btn-lg"> <i style="margin-right:15px;" class="fas fa-clipboard-list"></i> Ver mis pedidos</a>
                </div>       
            </div>

               <div class="col-md-6 info-personal" style="width:50%; display:flex; flex-wrap: wrap !important; justify-content: center; margin-top: 20px;"> 
                <h3 style="min-width: 100%; display: flex; justify-content:center; margin-left:0 !important; margin-bottom:50px">Repartidores</h3>  
                <div style="width: 100%; max-height:250px; overflow: hidden; display: flex; justify-content: center;">
                    <img style="max-height: 100px; " src="./img/delivery.png" alt=""/>
                </div> 

                 
                <div style="width: 100%; display:flex; justify-content:center">
                    <a style="margin-right: 15px;" href="Registro_repartidor.aspx" class="btn btn-danger btn-lg"> <i  style="margin-right:15px;"class="fas fa-motorcycle""></i> Dar de alta repartidor</a> 
                    
                </div>       
            </div>

               <div class="col-md-6 info-personal" style="width:50%; display:flex; flex-wrap: wrap !important; justify-content: center; margin-top: 70px;"> 
                <h3 style="min-width: 100%; display: flex; justify-content:center; margin-left:0 !important; margin-bottom:50px">Carniceros</h3>  
                <div style="width: 100%; max-height:250px; overflow: hidden; display: flex; justify-content: center;">
                    <img style="max-height: 100px; " src="./img/butcher.png" alt=""/>
                </div> 

                 
                <div style="width: 100%; display:flex; justify-content:center"> 
                    <a style="margin-right: 15px;" href="Registro_carnicero.aspx" class="btn btn-danger btn-lg"> <i  style="margin-right:15px;"class="fas fa-knife-kitchen""></i> Dar de alta carnicero</a> 
                    
                </div>       
            </div>

                <div class="col-md-6 info-personal" style="width:50%; display:flex; flex-wrap: wrap !important; justify-content: center; margin-top: 70px;"> 
                <h3 style="min-width: 100%; display: flex; justify-content:center; margin-left:0 !important; margin-bottom:50px">Revisión de despachos y cobros</h3>  
                <div style="width: 100%; max-height:250px; overflow: hidden; display: flex; justify-content: center;">
                    <img style="max-height: 100px; " src="./img/find.png" alt=""/>
                </div> 

                 
                <div style="width: 100%; display:flex; justify-content:center"> 
                    <a style="margin-right: 15px;" href="Especifico_carnicero.aspx" class="btn btn-danger btn-lg"> <i  style="margin-right:15px;"class="fas fa-knife-kitchen"></i> Despachos de carniceros</a> 
                    <a style="margin-right: 15px;" href="Especifico_repartidor.aspx" class="btn btn-info btn-lg"> <i  style="margin-right:15px;"class="fas fa-motorcycle""></i> Cobros de repartidores</a> 

                </div>       
            </div>

               <div class="col-md-12 info-personal" style="width:50%; display:flex; flex-wrap: wrap !important; justify-content: center; margin-top: 70px;"> 
                <h3 style="min-width: 100%; display: flex; justify-content:center; margin-left:0 !important; margin-bottom:50px">Usuarios</h3>  
                <div style="width: 100%; max-height:250px; overflow: hidden; display: flex; justify-content: center;">
                    <img style="max-height: 100px; " src="./img/team.png" alt=""/>
                </div> 

                 
                <div style="width: 100%; display:flex; justify-content:center"> 
                    <a style="margin-right: 15px;" href="Ver_clientes.aspx" class="btn btn-danger btn-lg"> <i  style="margin-right:15px;"class="fas fa-users"></i> Ver todos los usuarios</a> 

                </div>       
            </div>




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
