<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    
    <title>registro</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
        
        .principal .header .nav .logo{
            margin-left:5%;            
        }              
            
        .principal .imagen img {
         height:580px;
         width: 100%;
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
         .tabla table {
          
          margin-top: 3%;
          width: 100px;
        }
         .edit {
            width: 50px;
            height: 50px;
        }
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
     <%@page import="java.util.List" %>     
        <%@page import="modelos.Usuario" %>
        <%        
        List<Usuario> listaUsuarios = (List<Usuario>)request.getAttribute("usuarios");
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
                        <li><a href="Inicio" class="link"> INICIO</a></li>
                        <li><a href="Categorias" class="link">CATEGORIAS</a></li>
                        <li><a href="Acerca" class="link">ACERCA DE</a></li>
                        <li><a href="Index" class="link">CONTACTO</a></li>
                        <li><a href="Galeria" class="link">GALERIA DE PRODUCTOS</a></li>
                        <li><a href="Compra" class="link">COMPRAR</a></li>
                        <li><a href="NuevoProducto" class="link">NUEVO PRODUCTO</a></li>



                        
                    </ul>
                    <div class="login">
                        <ul>
                        <li class="customers"><a href="#" class="link">LOGIN</a></li>
                        <li class="customers"><a href="#" class="link">CREATE ACCOUNT</a></li>
                        </ul>
                    </div>
            </div>
        </div>
    </div>
    <h2 class="titulo">Registro</h2>
    <h4>Crear cuenta</h4>
    
    <form name="nueva-registro" action="RegistroUsuario" method="POST">
        <div class="form-group">
            <label for="exampleInputEmail1">Email</label>
            <input name="email" type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Ingrese su email">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
                <label for="exampleInputEmail1">Usuario</label>
                <input name="usuario" type="text" class="form-control" id="usuario" aria-describedby="UsuarioHelp" placeholder="Ingrese su usuario">
                
            </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Contrase�a</label>
            <input name="contrase�a" type="password" class="form-control" placeholder="Ingrese su contrase�a">
        </div>        
        <button type="submit" class="btn btn-danger">Enviar</button>
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
                        for(Usuario i : listaUsuarios) {%>
                        <tr>
                            <td class="bg-primary"><%= i.idregistros%></td>
                            <td class="bg-success"><%= i.email%></td>
                            <td class="bg-danger"><%= i.usuario%></td>
                            <td class="bg-danger"><%= i.contrase�a%></td>
                            <td class="bg-info"><image class="edit" onclick="editarImagen(<%= i.idregistros%>, '<%= i.email%>', '<%= i.usuario%>', '<%= i.contrase�a%>')" src="https://icon-icons.com/icons2/906/PNG/512/pencil_icon-icons.com_69999.png" /></td>
                        </tr>
                        <%
                        }%>
                    </tbody>
                </table>
                <script>
                    function editarImagen(id, email,usuario, contrase�a){
                        //alert(id + " " + nombre + " " + ruta);
                        var inputId = document.getElementById("idregistros");
                        var inputEmail = document.getElementById("email");
                        var inputUsuario = document.getElementById("usuario");
                        var inputContrase�a = document.getElementById("contrase�a");
                    
                        inputId.value = id;
                        inputEmail.value = email;
                        inputUsuario.value = usuario;
                        inputContrase�a.value = contrase�a;
                    }
               </script>
</body>
</html>