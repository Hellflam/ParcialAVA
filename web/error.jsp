<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Error</title>
        <style>
            body {
                font-family: sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f8f9fa;
            }

            .container {
                width: 500px;
                margin: 50px auto;
                text-align: center;
                max-width: 1200px;
            }

            .header {
                background-color: #17a2b8;
                border-color: #111111;
                color: #ffffff;
                padding: 20px;
            }

            .header h1 {
                font-size: 24px;
                margin: 0;
            }

            .content {
                padding: 20px;
                border: 1px solid #ddd;
            }

            .content p {
                font-size: 16px;
                line-height: 1.5;
            }

            .button {
                border-radius: 20px;
                padding: 10px 20px;
                font-weight: bold;
                background-color: #2d8fd5;
                border-color: #2d8fd5;
                color: #ffffff;
            }

            .button:hover {
                background-color: #1c6ca4;
                border-color: #1c6ca4;
            }

            p{
                border-color: #111111;
            }

            a {
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <h1>Inicio de Sesion</h1>
            </div>
            <div class="content">
                <p>Se ha producido un error..</p>
                <p>Hemos detectado un error y no hemos podido completar tu solicitud. Vuelve a intentarlo más tarde.</p>
                <a href="index.jsp" class="button">Regresar</a>
            </div>
        </div>
    </body>
</html>
