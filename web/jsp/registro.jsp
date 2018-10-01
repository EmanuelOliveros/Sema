<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    
    <title>registro</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
    <h2 class="titulo">Registro</h2>
    <h4>Crear cuenta</h4>
    
    <form action="RegistroUsuario">
        <div class="form-group">
            <label for="exampleInputEmail1">Email</label>
            <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Ingrese su email">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
                <label for="exampleInputEmail1">Usuario</label>
                <input name="usuario" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="UsuarioHelp" placeholder="Ingrese su usuario">
                
            </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Contraseña</label>
            <input name="contrasena" type="password" class="form-control" placeholder="Ingrese su contraseña">
        </div>
        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
        <label class="form-check-label" for="exampleCheck1">Check me out</label>
        </div>
        <button type="submit" class="btn btn-danger">Enviar</button>
    </form>

</body>
</html>