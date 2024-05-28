<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Clientes</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <style>
            body {
                background-color: #f8f9fa;
            }

            .container {
                max-width: 1200px;
                margin: 20px auto;
            }

            .card {
                background-color: #ffffff;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }

            .btn-primary, .btn-warning, .btn-danger {
                border-radius: 20px;
                padding: 10px 20px;
                font-weight: bold;
            }

            .btn-primary {
                background-color: #2d8fd5;
                border-color: #2d8fd5;
            }

            .btn-primary:hover {
                background-color: #1c6ca4;
                border-color: #1c6ca4;
            }

            .btn-warning {
                background-color: #ffc107;
                border-color: #ffc107;
            }

            .btn-warning:hover {
                background-color: #e0a800;
                border-color: #e0a800;
            }

            .btn-danger {
                background-color: #dc3545;
                border-color: #dc3545;
            }

            .btn-danger:hover {
                background-color: #b02a37;
                border-color: #b02a37;
            }

            .table th, .table td {
                vertical-align: middle;
            }
        </style>
    </head>
    <body>

        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12">
                    <div class="card mt-3">
                        <div class="card-body">
                            <h2 class="text-center mb-4">Gestión de Clientes</h2>
                            <form action="Controlador?menu=Clientes" method="POST">
                                <div class="mb-3">
                                    <label for="txtDni" class="form-label">DNI</label>
                                    <input type="text" value="${cliente.getDni()}" id="txtDni" name="txtDni" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="txtNombres" class="form-label">Nombres</label>
                                    <input  type="text" value="${cliente.getNom()}" id="txtNombres" name="txtNombres" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="txtDir" class="form-label">Dirección</label>
                                    <input  type="text" value="${cliente.getDir()}" id="txtDir" name="txtDir" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="txtEstado" class="form-label">Estado</label>
                                    <input  type="text" value="${cliente.getEstado()}" id="txtEstado" name="txtEstado" class="form-control">
                                </div>
                                <div class="text-center">
                                    <button type="submit" name="accion" value="Agregar" class="btn btn-primary me-2">Agregar</button>
                                    <button type="submit" name="accion" value="Actualizar" class="btn btn-primary">Actualizar</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-12">
                    <div class="card mt-3">
                        <div class="card-body">
                            <h2 class="text-center mb-4">Lista de Clientes</h2>
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>DNI</th>
                                        <th>NOMBRE</th>
                                        <th>DIRECCIÓN</th>
                                        <th>ESTADO</th>
                                        <th>ACCIONES</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="cl" items="${clientes}">
                                        <tr>
                                            <td>${cl.getId()}</td>
                                            <td>${cl.getDni()}</td>
                                            <td>${cl.getNom()}</td>
                                            <td>${cl.getDir()}</td>
                                            <td>${cl.getEstado()}</td>
                                            <td>
                                                <a class="btn btn-warning me-2" href="Controlador?menu=Clientes&accion=Editar&id=${cl.getId()}">Editar</a>
                                                <a class="btn btn-danger" href="Controlador?menu=Clientes&accion=Eliminar&id=${cl.getId()}">Eliminar</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>