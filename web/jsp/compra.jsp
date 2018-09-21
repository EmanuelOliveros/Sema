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
            .formulario_compra {
                display: flex;
                margin: 2%;
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
        <form action="">
            <div class="formulario_compra">
                <div class="Datos_personales">
                    <h2>Datos personales</h2>
                    <div>
                        <h5>E-mail</h5>
                        <input type="email" placeholder="E-mail">
                    </div>
                    <div>
                        <h5>Nombre completo</h5>
                        <input type="text" placeholder="Nombre completo de quién recibe el producto">
                    </div>
                    <div>
                        <h5>Teléfono</h5>
                        <input type="text" placeholder="número de quién recibe el producto">
                    </div>
                </div>
                <div class="dirección">
                    <h2>Dirección de envío</h2>
                    <div>
                        <h5>País</h5>
                        <select>
                            <option value="">Selecciona el país</option>
                            <option value="">Colombia</option>
                        </select>
                    </div>
                    <div>
                        <h5>Ciudad</h5>
                        <select>
                            <option value="">Selecciona la ciudad</option>
                            <option value="">Medellín</option>
                            <option value="">Bogotá</option>
                            <option value="">Cali</option>
                            <option value="">Barranquilla</option>
                        </select>
                    </div>
                    <h5>Dirección de la residencia</h5>
                    <div>
                        <input type="text" placeholder="digite su dirección de residencia">
                    </div>
                </div>
                <div class="confirmar_producto">
                    <h2>Confirmar producto</h2>
                    <div>
                        <h5>Nombre del producto</h5>
                        <input type="text" placeholder="digite el nombre del producto">
                    </div>
                    <div>
                        <h5>Especificaciones del producto</h5>
                        <input type="text" placeholder="digite las especificaciones del producto">
                    </div>
                    <div>
                        <h5>Cantidad a pedir</h5>
                        <input type="text" placeholder="Digite la cantidad de productos">
                    </div>
                </div>
                <div class="metodo_de_pago">
                    <h2>Método de pago</h2>
                    <div>
                        <h5>¿Cómo quieres pagar?</h5>
                        <select>
                            <option value="">Selecciona método de pago</option>
                            <option value="">Paypal</option>
                            <option value="">Tarjeta de crédito</option>
                            <option value="">Efectivo</option>
                            <option value="">- otro -</option>
                        </select>
                    </div>
                    <div>
                        <h5>Recomendaciones adicionales</h5>
                        <input type="text" placeholder="Digite recomendaciones adicionales">
                    </div>
                    <div>
                        <h5>Confirmar método</h5>
                        <input type="checkbox"><input type="submit">
                    </div>
                </div>
            </div>
            <div class="enviar">
                        <button type="submit" class="">Confirmar datos</button>
            </div>
        </form>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
