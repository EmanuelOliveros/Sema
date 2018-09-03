<%-- 
    Document   : galeria
    Created on : 27/08/2018, 09:08:54 AM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Galería</title>
        <style>
        .contenedor {
            display:  flex;
            justify-content:  center;
            flex-wrap:  wrap;
        }
        .elemento {
            margin: 1rem;
        }
        .elemento>img {
            width: 200px;
        }
    </style>
    <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <span class="border border-primary"></span>
    <header>
    	<div class="header">
            <div class="logotipo">
                    <img src="imagenes/logo.png"/>
            </div>
            <div class="buscar">
                <div class="form-group">       
                    <label for="exampleInputEmail1">Busque su mondá</label>
                    <input type="text" name="buscar" placeholder="Buscar"/>
                </div>
            </div>
       	</div> <br>
        <nav>
             <ul>
                <li><a href="http://localhost:8080/WebApplication1/Inicio" >INICIO</a></li>
                <li><a href="http://localhost:8080/WebApplication1/Categorias">CATEGORÍAS</a></li>
                <li><a href="http://localhost:8080/WebApplication1/Acerca">ACERCA DE</a></li>
                <li><a href="http://localhost:8080/WebApplication1/Index">CONTÁCTENOS</a></li>
                <li><a href="http://localhost:8080/WebApplication1/Galeria">GALERÍA</a></li>
             </ul>
       </nav>
        <br>
    </header>
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
    <footer>
            <p>Developmen - By SEMA </p>
    </footer>
        
    </body>
</html>
