<%-- 
    Document   : galeria
    Created on : 27/08/2018, 09:08:54 AM
    Author     : Usuario
--%>

<%@page import="modelos.Tipo"%>
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
            font-size: 20px;
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
            
            background-image: url("https://cdn.shopify.com/s/files/1/0374/5725/files/Shop_Wall.jpg?16880021683970843960");
            padding: 245px 15px 255px;
            text-align:center;
            color: aliceblue;
        }
        .principal .section h1{
            font-family: nimbus-sans,sans-serif;
            font-weight:500;
            font-size: 60px;
            line-height:60px;
            padding-top: 15px;
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
       
        .section .opciones{
            width: 1000px;
        }
        
        .section .info{
            margin-left: 20%;
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
                        <h4><a class="button darkk" href="#">SEMA-WEBSITE</a></h4>
                </div>
                    <ul>
                        <li><a href="Inicio" class="link"> INICIO</a></li>
                        <li><a href="Categorias" class="link">CATEGORIAS</a></li>
                        <li><a href="Acerca" class="link">ACERCA DE</a></li>
                        <li><a href="#" class="link">CONTACTO</a></li>
                        <li><a href="Galeria" class="link">GALERIA DE PRODUCTOS</a></li>
                        <li><a href="Compra" class="link">COMPRAR</a></li>
                        
                        
                    </ul>
                    <div class="login">
                        <ul>
                        <li class="customers"><a href="#" class="link">LOGIN</a></li>
                        <li class="customers"><a href="#" class="link">CREATE ACCOUNT</a></li>
                        </ul>
                    </div>
            </div>
        </div>
        
        <%@page import="java.util.List" %>
        <%@page import="modelos.Tipo" %>
        
    
    <%@page import="java.util.List" %>
    <%@page import="modelos.Imagen" %>
    <%
        List<Tipo> listaTipos = (List<Tipo>)request.getAttribute("tipos");
        %>
    <%
    List<Imagen> listaImagenes = (List<Imagen>)request.getAttribute("imagenes");
    %>
    <div class="section">
    <h1>Formulario para nuevas imágenes de la galeria</h1>
        <form name="nueva-imagen" action="Galeria" method="POST">
            <span>nombre</span><input type="text" name="nombre" />
            <span>ruta</span><input type="text" name="ruta" />
            <button type="submit">Guardar imagen</button>
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
</body>
</html>
