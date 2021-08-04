<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Especifico_repartidor.aspx.cs" Inherits="SISTEMA_CARNICERIA.Especifico_repartidor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Carnicería San Tomás</title>
    <link href="../css/profile.css" rel="stylesheet" />
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
                     <li class="user"><a class="a-nav" href="Profile.aspx"><i style="margin-right: 4px;" class="far fa-user"></i><%=Session["Nombres"].ToString()%></a></li>
                     
                </ul>
            </nav>
        </header>

        <div style=" width: 100%; display:flex; justify-content:center">
            <div style="width:100%; display:flex; justify-content:center">
                <a style="background:#618c61" href="Profile.aspx" class="btn user_btn">Regresar</a>  
            </div>          
        </div>

        <div style="display:flex; flex-wrap:wrap; margin-bottom: 250px;">
                <div class="info-personal" style="width:20%; display:flex; flex-wrap: wrap !important; justify-content: center;margin-top: 20px;"> 
                         
                        <div  style="width: 100%; max-height:200px; overflow: hidden; display: flex;justify-content: center;">
                            <img style="max-height: 200px;" src="./img/find.png" alt=""/>
                        </div>        
                </div>
                
                
                      <%--  COMIENZA EL DESPLIEGUE DE PEDIDOS EN EL SIGUIENTE DIV --%>
                <div style="width: 80%; display:flex; flex-wrap:wrap; margin-top: 60px;"> 
                    <h1 style="min-width: 100%; display: flex; ">Pedidos entregados y cobrados por los repartidores</h1> 
                    <div style="width:20%; padding:20px; display:flex; flex-wrap:wrap; justify-content:center; align-content:start;">
                        <div>
                            <h5>Seleccione un repartidor:</h5>
                        </div>
                        <div>
                             <asp:DropDownList style="padding:8px; font-family:'Segoe UI'; font-size:18px;"  ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" ></asp:DropDownList>
                        </div>
                    </div>

                    <div style="width:20%; padding:20px; display:flex; flex-wrap:wrap; justify-content:center;">
                        <div>
                            <h5>Seleccione el día en específico:</h5>
                        </div>
                        <div>
                            <asp:Calendar ID="Calendar1" runat="server"  OnSelectionChanged="Calendar1_SelectionChanged" ></asp:Calendar>
                        </div>
                    </div>
                    <div style="width:20%; padding:20px; display:flex; flex-wrap:wrap; justify-content:center; align-content: start;">                
                        <div>
                             <asp:Button CssClass="btn btn-primary" style="padding:8px; font-family:'Segoe UI'; font-size:18px; margin-top:60px" ID="Button1" runat="server" OnClick="Button1_Click" Text="Consultar" />
                        </div>
                    </div>     
                    
                </div>    


            <div style="width:100%;display:flex; justify-content:center; flex-wrap:wrap; justify-content:center; margin-top:60px;">
                       
                      
                            <h3 style="width:100%; display:flex; justify-content:center;">Resultados de la consulta</h3>
                        
                        <div style="min-width:40%; text-align:center; font-size:40px;">
                             <asp:GridView CssClass="table table-striped table-bordered" style="min-width:100%;" ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                 <HeaderStyle CssClass="thead-dark" />
                                 <RowStyle Font-Bold="True" />
                         </asp:GridView>
                        </div>
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