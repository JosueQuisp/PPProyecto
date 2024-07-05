<%-- 
    Document   : index
    Created on : 2 jul 2024, 13:51:47
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        #fon {
            background-image: url(recursos/imagenes/fondo.png); 
            background-size: cover; 
            background-repeat: no-repeat; 
            background-attachment: fixed; 
            background-position: center; 
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative; 
        }
        .logo {
            position: absolute;
            top: 20px; 
            left: 0px; 
        }
        .lin {
            border: solid white 2px;
            padding: 30px;
            width: 100%;
            max-width: 400px;
            border-radius: 15px;
           
        }
        .button-container {
            display: flex;
            justify-content: center;
        }
    </style>
</head>
<body id="fon"> 
    <div class="container">
       
        <div class="logo">
            <img src="recursos/imagenes/logoupeu.png" alt="Logo">
        </div>
    
        
        <div class="d-flex justify-content-center align-items-center min-vh-100">
            <div class="lin">
                <form action="controllogin" method="post" class="px-3 pt-1"  >
                    <h1 class="text-center text-white fs-5">INICIAR SESIÓN</h1>
                    <div class="form-group">
                        <label for="exampleInputEmail1" class="text-white mt-4" >Usuario o correo electrónico</label>
                        <input type="text" name="username" class="form-control mt-1" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1" class="text-white mt-5" >Contraseña</label>
                        <input type="password" name="clave" class="form-control mt-1" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    <div class="form-check mt-4">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label text-white" for="exampleCheck1">Recuérdame</label>
                    </div>
                    <div class="button-container mt-4">
                        <button type="submit" class="btn btn-warning w-50 text-white">Ingresar</button>
                    </div>
                    <h6 class="text-white text-center mt-3 fs-6">¿Has olvidado tu contraseña?</h6>
                </form>
            </div>
        </div>
        
        
        
        


    </div>
    
   
</body>

</html>
