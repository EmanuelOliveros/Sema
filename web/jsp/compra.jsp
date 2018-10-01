<%-- 
    Document   : compra
    Created on : 19/09/2018, 08:25:05 AM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
            .formulario_compra {
                display: flex;
                margin: 2%;
                background-color:rgba(255,2555,255,.8);
            }
            .Datos_personales {
                margin: 2%;
            }
            .dirección {
                margin: 2%;
            }
            .confirmar_producto {
                margin: 2%;
            }
            .metodo_de_pago {
                margin: 2%;
            }
            .enviar {
                text-align: center;
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
            <form action="Compra" method="POST">
                <div class="formulario_compra">
                    <div class="Datos_personales">
                        <h2>Datos personales</h2>
                        <div>
                            <h5>E-mail</h5>
                            <input type="email" name="email" placeholder="E-mail">
                        </div>
                        <div>
                            <h5>Nombre completo</h5>
                            <input type="text" name="nombre" placeholder="Nombre completo de quién recibe el producto">
                        </div>
                        <div>
                            <h5>Teléfono</h5>
                            <input type="text" name="telefono" placeholder="número de quién recibe el producto">
                        </div>
                    </div>
                    <div class="dirección">
                        <h2>Dirección de envío</h2>
                        <div>
                            <h5>País</h5>
                            <select name="pais" >
                                <option value="no-select">Selecciona el país</option>
                                <option value="Colombia">Colombia</option>
                            </select>
                        </div>
                        <div>
                            <h5>Ciudad</h5>
                            <select name="ciudad">
                                <option value="no-select">Selecciona la ciudad</option>
                                <option value="Medellin">Medellín</option>
                                <option value="Bogota">Bogotá</option>
                                <option value="Cali">Cali</option>
                                <option value="Barranquilla">Barranquilla</option>
                            </select>
                        </div>
                        <h5>Dirección de la residencia</h5>
                        <div>
                            <input type="text" name="direccion" placeholder="digite su dirección de residencia">
                        </div>
                    </div>
                    <div class="confirmar_producto">
                        <h2>Confirmar producto</h2>
                        <div>
                            <h5>Nombre del producto</h5>
                            <input type="text" name="nombre_producto" placeholder="digite el nombre del producto">
                        </div>
                        <div>
                            <h5>Especificaciones del producto</h5>
                            <input type="text" name="especificacion_producto" placeholder="digite las especificaciones del producto">
                        </div>
                        <div>
                            <h5>Cantidad a pedir</h5>
                            <input type="text" name="cantidad" placeholder="Digite la cantidad de productos">
                        </div>
                        
                    </div>
                    <div class="metodo_de_pago">
                        <h2>Método de pago</h2>
                        <div>
                            <h5>¿Cómo quieres pagar?</h5>
                            <select name="metodo_pago">
                                <option value="no-select">Selecciona método de pago</option>
                                <option value="paypal">Paypal</option>
                                <option value="tarjeta">Tarjeta de crédito</option>
                                <option value="efectivo">Efectivo</option>
                                <option value="otro">- otro -</option>
                            </select>
                        </div>
                        <div>
                            <h5>Recomendaciones adicionales</h5>
                            <input type="text" placeholder="Digite recomendaciones adicionales">
                        </div>
                        <div>
                            <h5>Costo</h5>
                            <input type="text" name="costo" placeholder="Digite el costo del producto">
                        </div>
                    </div>
                </div>
            <div class="enviar">
                        <button type="submit" class="">Confirmar datos</button>
            </div>
        </form>
        </div>
      </div>
    </body>
</html>