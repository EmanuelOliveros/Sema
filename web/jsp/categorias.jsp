<%-- 
    Document   : categorias
    Created on : 27/08/2018, 09:28:44 AM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <style>
        .principal{
            display: flex;
            flex-direction: column;
            
        }
        .principal .header {
            display: flex;
            flex-flow: column;
        }
        .principal .header .uno{
            text-align: center;
            background: black;
            height: 55px;
            width: 100%;
            font-family: inherit;
        }
        .principal .header .nav {
            display: flex;
            justify-content: space-between;     
            height: 75px;
        }
        .principal .header .nav ul {
            display: flex;
            flex-direction: row;
            
        }        
        .principal .header .nav ul li{
            overflow: hidden;
        }        
        .principal .header .nav ul li a{
            text-decoration: none;
        }        
        .principal .header .nav ul li a:hover{
            background-color: black;
            
            color: #fff;
            
            
        }      
        .principal .header .uno .texto {
            margin-top: 1%;
        }
        .principal .header .nav .link{
            display: flex;
            justify-content: space-between;
            font-size: 12px;
            line-height: 16px;
            letter-spacing: 1px;
            color: #000;
            border: none;
            margin-top: 25px;
            padding: 8px 15px 9px;
            
        }
        

        .principal .header .nav .logo{
            margin-left:5%;

            
        }
        
        
        .principal .imagen img {
         height:580px;
         width: 100%;
        }
        .principal .section {
            background-image: url("https://images.pexels.com/photos/994523/pexels-photo-994523.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
            padding: 245px 15px 255px;
            text-align:center;
            color: aliceblue;
        }
        .principal .section h3{
            font-family: adobe-garamond-pro,sans-serif;
            font-style: normal;
            font-weight: font-weight;
            font-size:28px;
            line-height:34px;
        }
        .principal .section h2{
            font-family: nimbus-sans,sans-serif;
            font-weight:700;
            font-size: 60px;
            line-height:60px;
            padding-top: 15px;
        }
        .principal .section h4{
            font-family: nimbus-sans,sans-serif;
            font-weight:700;
            font-size: 16px;
            line-height: 16px;
            letter-spacing: 1px;
            width: 280px;
            margin: 0 auto;
            padding-top: 25px;
        }
        .button.dark{
            color: #fff;
            border:2px solid #fff;
        }
        .button.darkk{
            color: #000;
            border:2px solid #000;
        }        
        .button{
            font-family: nimbus-sans,sans-serif;
            font-weight: 700;
            font-size: 16px;
            line-height: 16px;
            cursor: pointer;
            letter-spacing: 1px;
            text-align: center;
            margin: 0;
            padding: 20px 10px;
            margin-top: 5%;
        }      
        .button{
            font-family: nimbus-sans,sans-serif;
            font-weight: 700;
            font-size: 16px;
            line-height: 16px;
            cursor: pointer;
            letter-spacing: 1px;
            text-align: center;
            margin: 0;
            padding: 20px 10px;
        }
        .section h4 a{
            text-decoration: none;
        }
        .principal .header .nav .logo{
            margin-top: 1.5%;
        }

        .nav .logo a:hover{
            font-size:20px;
            color: crimson;
            border-color:crimson;
            text-decoration: none;
        }
        .section .botones{
            display:flex;
            flex-direction: row;
        }
        footer{
            text-align: center;
            background: black;
            height: 55px;
            width: 100%;
            font-family: inherit;
            color:white;
        }
        footer p{
            margin-top: 1.2%;
        }
       
    </style>
    
</head>
<body>
    <div class="principal">
        <div class="header">
            <div class="uno">
                <div class="texto">
                    <font color="white">Join the Mailing List for your 10% Discount Code! </font>
                </div>
            </div>
            <div class="nav">
                <div class="logo">
                        <h4><a class="button darkk" href="Inicio">SEMA-WEBSITE</a></h4>
                </div>
                    <ul>
                        <li><a href="Inicio" class="link"> INICIO</a></li>
                        <li><a href="#" class="link">CATEGORIAS</a></li>
                        <li><a href="Acerca" class="link">ACERCA DE</a></li>
                        <li><a href="Index" class="link">CONTACTO</a></li>
                        <li><a href="Galeria" class="link">GALERIA DE PRODUCTOS</a></li>
                        <li><a href="Compra" class="link">COMPRAR</a></li>
                        <li><a href="NuevoProducto" class="link">NUEVO PRODUCTO</a></li>



                    </ul>
                    <div class="login">
                        <ul>
                        <li class="customers"><a href="#" class="link">LOGIN</a></li>
                        <li class="customers"><a href="RegistroUsuario" class="link">CREATE ACCOUNT</a></li>
                        </ul>
                    </div>
            </div>
        </div>
        
        <div class="section">
            <%@page import="java.util.List" %>
            <%@page import="modelos.Imagen" %>
            <%
                List<Imagen> listaImagenes = (List<Imagen>)request.getAttribute("imagenes");
            %>
            <h1>Galería de imágenes</h1>
            <div class="contenedor">
        
            <%
                Imagen imagen;
                for(int i = 0; i < listaImagenes.size(); i++){
                imagen = listaImagenes.get(i);%>

            <div class="elemento">
                <img src="<%= imagen.ruta %>">
                <div><%= imagen.nombre %></div>
            </div>
            <%
            }%>
        </div>
    </div>
    <footer>
            <p>Developmen - By SEMA </p>
    </footer>
        
    </body>
</html>
