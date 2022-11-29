<%--
  Created by IntelliJ IDEA.
  User: DANA
  Date: 29/11/2022
  Time: 12:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Inicio de Sesion</title>
    <meta name="description" content="Core HTML Project">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/basic.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>

<body>
<div class="global-container">
    <div class="card login-form">
        <div class="card-body">
            <h3 class="card-title text-center">Registrarse</h3>
            <div class="card-text">
                <!--<div class="alert alert-danger alert-dismissible fade show" role="alert">Incorrect username or password.</div> -->
                <form method="post" action="<%=request.getContextPath()%>/SessionServlet">
                    <!-- to error: add class "has-danger" -->

                    <div class="form-group">
                        <label for="exampleInputNombre">Nombre:</label>
                        <div style="height: 5px; display: block;"></div>
                        <input type="text" class="form-control form-control-sm"
                               id="exampleInputNombre" name="inputNombre" placeholder="Ingrese su Nombre">
                    </div>
                    <div style="height: 10px; display: block;"></div>

                    <div class="form-group">
                        <label for="exampleInputApellido">Apellido:</label>
                        <div style="height: 5px; display: block;"></div>
                        <input type="text" class="form-control form-control-sm"
                               id="exampleInputApellido" name="inputApellido" placeholder="Ingrese su Apellido">
                    </div>
                    <div style="height: 10px; display: block;"></div>

                    <div class="form-group">
                        <label for="exampleInputCorreo">Correo:</label>
                        <div style="height: 5px; display: block;"></div>
                        <input type="text" class="form-control form-control-sm"
                               id="exampleInputCorreo" name="inputCorreo" placeholder="Ingrese su Correo">
                    </div>
                    <div style="height: 10px; display: block;"></div>

                    <div class="form-group">
                        <label for="exampleInputContrasena">Contraseña:</label>
                        <div style="height: 5px; display: block;"></div>
                        <input type="text" class="form-control form-control-sm"
                               id="exampleInputContrasena" name="inputContrasena" placeholder="Ingrese su Contrasena">
                    </div>
                    <div style="height: 10px; display: block;"></div>

                    <div class="form-group">
                        <label for="exampleInputContrasena2">Repetir Contraseña:</label>
                        <div style="height: 5px; display: block;"></div>
                        <input type="text" class="form-control form-control-sm"
                               id="exampleInputContrasena2" name="inputContrasena2" placeholder="Ingrese su Contrasena Repetida">
                    </div>
                    <div style="height: 10px; display: block;"></div>


                    <div class="form-group">
                        <label for="exampleInputTipo">Tipo de Usuario:</label>
                        <div style="height: 5px; display: block;"></div>
                        <input type="text" class="form-control form-control-sm"
                               id="exampleInputTipo" name="inputTipo" placeholder="Ingrese su Tipo de Usuario">
                    </div>
                    <div style="height: 10px; display: block;"></div>

                    <% if (request.getParameter("errorContrasenas") != null) { %>
                    <div class="text-danger mb-2">Las contraseñas no son iguales.</div>
                    <% } %>

                    <% if (request.getParameter("errorCorreo") != null) { %>
                    <div class="text-danger mb-2">Este correo ya existe.</div>
                    <% } %>

                    <div align="center">
                        <button type="submit" class="btn btn-primary btn-block">Sign in</button>
                        <div style="height: 5px; display: block;"></div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>