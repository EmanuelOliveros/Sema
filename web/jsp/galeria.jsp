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
        </style>
    </head>
    <body>
        
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
    </body>
</html>
