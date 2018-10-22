
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
        
        .principal .section {
            
            padding: 45px 15px 255px;
            text-align:center;
            color: #000;
        }
        table {
          
          margin-top: 3%;
          width: 100px;
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
                        <li><a href="#" class="link"> INICIO</a></li>
                        <li><a href="Categorias" class="link">CATEGORIAS</a></li>
                        <li><a href="Acerca" class="link">ACERCA DE</a></li>
                        <li><a href="Index" class="link">CONTACTO</a></li>
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
        
        <div class="section">
            <h1>Formulario para nuevos productos</h1>
        
            <form name="nueva-imagen" action="NuevoProducto" method="POST">
                <input id="idproductos" type="hidden" name="idproductos" />
                <span>nombre del producto</span><input id="nombre" type="text" name="nombre" />
                <span>precio del producto</span><input id="precio" type="text" name="precio" />
                <span>tipo</span>
                <select name="tipo">
                    <%
                    for(Tipo t : listaTipos) {%>
                    <option value="<%= t.id%>"><%= t.nombre%></option>
                    <%
                    }%>
                </select>
                <button type="submit">Guardar Producto</button>
            </form>
                <table border="1" class="table table-hover table-dark"">
                    <thead>
                        <tr>
                            <th scope="col">id producto</th>
                            <th scope="col">nombre del producto</th>
                            <th scope="col">precio</th>
                            <th scope="col">editar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        for(Imagen i : listaImagenes) {%>
                        <tr>
                            <td class="bg-primary"><%= i.idproductos%></td>
                            <td class="bg-success"><%= i.nombre%></td>
                            <td class="bg-danger"><%= i.precio%></td>
                            <td class="bg-info"><image class="edit" onclick="editarImagen(<%= i.idproductos%>, '<%= i.nombre%>', '<%= i.precio%>')" src="https://icon-icons.com/icons2/906/PNG/512/pencil_icon-icons.com_69999.png" /></td>
                        </tr>
                        <%
                        }%>
                    </tbody>
                </table>
                <script>
                    function editarImagen(id, nombre, precio){
                        //alert(id + " " + nombre + " " + ruta);
                        var inputId = document.getElementById("idproductos");
                        var inputNombre = document.getElementById("nombre");
                        var inputPrecio = document.getElementById("precio");
                    
                        inputId.value = id;
                        inputNombre.value = nombre;
                        inputPrecio.value = precio;
                    }
               </script>
            </div>
        </body>
</html>
