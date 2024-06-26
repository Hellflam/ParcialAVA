<%
    HttpSession val = request.getSession();
    if(val != null && val.getAttribute("user") != null){
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Principal</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <style>
            body {
                background-color: #f8f9fa;
            }

            .navbar {
                background-color: #17a2b8;
            }

            .navbar-brand, .navbar-toggler {
                border: none;
                color: #fff;
            }

            .nav-link {
                margin-left: 15px;
                border: none;
                color: #fff;
            }

            .dropdown-toggle, .dropdown-menu {
                border: none;
                color: #fff;
            }

            .dropdown-item {
                color: #212529;
            }

            .dropdown-divider {
                border-color: #fff;
            }
            
            .dropdown-menu{
                margin-left: -125px;
            }

            .iframe-container {
                margin: 20px;
                height: 850px;
            }

            iframe {
                height: 100%;
                width: 100%;
                border: none;
            }
        </style>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
                <a class="navbar-brand" href="Principal.jsp">Home</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="Controlador?menu=Producto&accion=SELECT" target="myFrame">Producto</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Controlador?menu=Empleado&accion=SELECT" target="myFrame">Empleado</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Controlador?menu=Clientes&accion=SELECT" target="myFrame">Clientes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Controlador?menu=NuevaVenta&accion=default" target="myFrame">Nueva venta</a>
                        </li>
                    </ul>
                    <div class="dropdown">
                        <button class="btn btn-outline-light dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                            ${usuario.getNom()}
                        </button>
                        <ul class="dropdown-menu text-center">
                            <li>
                                <a class="dropdown-item" href="#">
                                    <img src="imagenes/perfil.png" alt="60" width="60">
                                </a>
                            </li>
                            <li><a class="dropdown-item" href="#">${usuario.getUser()}</a></li>
                            <li><a class="dropdown-item" href="#">usuario@gmail.com</a></li>
                            <div class="dropdown-divider"></div>
                            <form action="Validar" method="POST">
                                <button name="accion" value="Salir" class="dropdown-item" href="#">Salir</button>
                            </form>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>

        <div class="iframe-container">
            <iframe name="myFrame"></iframe>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
<%}else{
    request.getRequestDispatcher("error.jsp").forward(request, response);
} %>