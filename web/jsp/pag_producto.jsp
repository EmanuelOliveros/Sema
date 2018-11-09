<%-- 
    Document   : pag_producto
    Created on : 9/11/2018, 01:06:16 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Producto</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" 
        crossorigin="anonymous">
    <style>
        .container{
            display: flex;
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
            background-image: url("https://images.pexels.com/photos/264554/pexels-photo-264554.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
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
        <div class="container">
            <div class="col-6 producto">
                <div class="img">
                    <img class="img-thumbnail" src="https://i.ebayimg.com/images/g/o84AAOSwLnBarSD~/s-l300.jpg" alt="producto">
                </div>
                <div class="caracteristicas">
                    <div class="marca">
                        <h3>
                            Marca
                        </h3>
                        Samsung
                    </div>
                    <div class="modelo">
                        <h3>
                            Modelo
                        </h3>
                        Galaxy S9+ plus
                    </div>
                </div>
                <div class="descripcion" >
                    <h3>
                        Descripción
                    </h3>
                    <p>
                        Celular último modelo con lo más fiable en calidad, doble cámara trasera, 
                        batería de larga duración, 128 Gb de almacenamiento, 6GB ram y garantía de 1 año.
                    </p>
                </div>
            </div>
            <div class="col-6 especificaciones">
                <div class="titulo">
                    <h2>
                        Celular Libre Samsung Galaxy S9+ Plus 128gb / 6 RAM 4g
                    </h2>
                </div>
                <div class="precio">
                    <p>$2.399.000</p>
                </div>
                <div class="opciones_de_pago">
                    <p>36 cuotas de $66.639</p> 
                </div>
                <div class="envio">
                    <p>Envío Gratis a Nivel Nacional</p>
                </div>
                <div class="comprar">
                    <button src="CompraProducto" name="comprar" type="button" class="btn btn-light">Comprar</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

