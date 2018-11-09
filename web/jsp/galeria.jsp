<%-- 
    Document   : nueva-imagen
    Created on : 12/09/2018, 08:21:27 AM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>JSP Page</title>
        <style>
            td>img.edit {
                width: 30px;
            }
            
            #customers {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 85%;               
                text-align: center;
                
            }   

            #customers td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #customers tr:nth-child(even){background-color: #f2f2f2;}

            #customers tr:hover {background-color: #ddd;}

            #customers th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #4CAF50;
                color: white;
            }
            
            tr td img{
                width: 50px;
            } 
            
            .tabla {
                margin-top:5%;
                margin-left: 15%;
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
        
        .principal .section {
            background-image: url("https://images.pexels.com/photos/886465/pexels-photo-886465.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
            padding: 215px 10px 225px;
        }

        .principal .header .nav .logo{
            margin-left:5%;

            
        }
        .button.darkk{
            color: #000;
            border:2px solid #000;
        }    
        .nav .logo a:hover{
            font-size:20px;
            color: crimson;
            border-color:crimson;
            text-decoration: none;
        }
        .principal .header .nav .logo{
            margin-top: 1.5%;
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
                        <li><a href="Categorias" class="link">CATEGORIAS</a></li>
                        <li><a href="Acerca" class="link">ACERCA DE</a></li>
                        <li><a href="Index" class="link">CONTACTO</a></li>
                        <li><a href="Galeria" class="link">GALERIA DE PRODUCTOS</a></li>
                        <li><a href="#" class="link">COMPRAR</a></li>
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
        
        <%@page import="java.util.List" %>
        <%@page import="modelos.Tipo" %>
        <%@page import="modelos.Imagen" %>
        
        <%
        List<Tipo> listaTipos = (List<Tipo>)request.getAttribute("tipos");
        List<Imagen> listaImagenes = (List<Imagen>)request.getAttribute("imagenes");
        %>
        <h1>Formulario para nuevas imágenes de la galeria</h1>
        <form name="nueva-imagen" action="Galeria" method="POST">
            <input id="idimagenes" type="hidden" name="idimagenes" />
            <span>nombre</span><input id="nombre" type="text" name="nombre" />
            <span>ruta</span><input id="ruta" type="text" name="ruta" />
            <span>tipo</span>
            <select name="tipo">
                <%
                for(Tipo t : listaTipos) {%>
                <option value="<%= t.id%>"><%= t.nombre%></option>
                <%
                }%>
            </select>
            <button type="submit">Guardar imagen</button>
        </form>
            <div class="tabla">
                <table  id="customers">
                    <thead>
                        <tr>
                            <th>id imagen</th>
                            <th>nombre</th>
                            <th>imagen</th>
                            <th>editar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        for(Imagen i : listaImagenes) {%>
                                                           
                        <tr>
                            <td><%= i.idimagenes%></td>
                            <td><%= i.nombre%></td>
                            <td> <img src="<%= i.ruta %>"></td>
                            <td><image class="edit" onclick="editarImagen(<%= i.idimagenes%>, '<%= i.nombre%>', '<%= i.ruta%>')" src="https://icon-icons.com/icons2/906/PNG/512/pencil_icon-icons.com_69999.png" /></td>
                        </tr>
                        <%
                        }%>
                    </tbody>
                </table>
                    
                <script>
                    function editarImagen(id, nombre, ruta){
                        //alert(id + " " + nombre + " " + ruta);
                        var inputId = document.getElementById("idimagenes");
                        var inputNombre = document.getElementById("nombre");
                        var inputRuta = document.getElementById("ruta");
                    
                        inputId.value = id;
                        inputNombre.value = nombre;
                        inputRuta.value = ruta;
                    }
                </script>
            </div>   
        s</div>
    </body>
</html>
