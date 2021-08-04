<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SISTEMA_CARNICERIA.pages.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Carnicería San Tomás</title>
    <link href="../css/index.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
</head>
<body>
    
     <header>
        <nav>
            <ul>
                <li class="logo"><a href="Index.aspx"><img  src="./img/carne.png" alt=""/></a> <a href="Index.aspx">Carnicería San Tomás</a>  </li>
                <li class="logo-central"><img src="./img/vaca.png" alt=""/></li>
                <li class="user"><a href="Registro.aspx"><i style="margin-right: 4px;" class="far fa-user"></i>Registro</a></li>
            </ul>
        </nav>
    </header>
    <div class="portada">
        <img src="./img/index.jpg" alt=""/>
    </div>
    <div class="contenedor-slogan">
        <h1>
            Carnicería <br/> <span style=" padding-left: 50px;"> San Tomás</span>
        </h1>
        <h2 style="margin-left: 80px;">
            La más perrona aquí claro que sí señor.
        </h2>
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
</body>
</html>
