<%@ page import="Beans.Servicio" %><%--
  Created by IntelliJ IDEA.
  User: DANA
  Date: 29/11/2022
  Time: 13:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Inicio de Sesion</title>
  <meta name="description" content="Core HTML Project">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="../css/basic.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>

  <div style="height: 100px; display: block;"></div>
  <div>
    <p>
      Bienvenido <%=usuario.getNombre()%>
    </p>
    <a type="button" class="btn btn-primary" href="<%=request.getContextPath()%>/SessionServlet?action=logout">CerrarSesion</a>
  </div>
  <div>
    <nav class="navbar navbar-expand-lg bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">Registrar Servicio</a>
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="true" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse show" id="navbarSupportedContent"
             style="">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" href="<%=request.getContextPath()%>/UsuarioServlet?action=impresion3D">Impresion 3D</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<%=request.getContextPath()%>/UsuarioServlet?action=corteLaser">Corte Laser</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<%=request.getContextPath()%>/UsuarioServlet?action=escaneo">Escaneo Digital 3D</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </div>
  <div style="height: 20px; display: block;"></div>
  <div>
    <table class="table">
      <thead>
      <tr>
        <th scope="col">Tipo de Servicio</th>
        <th scope="col">Fecha de Registro</th>
        <th scope="col">Tiempo de Realizacion</th>
        <th scope="col">Costo</th>
      </tr>
      </thead>
      <% for (Servicio servicio : listaServicios){%>
      <tbody>
      <% String tipoDeServicio;
        int id = servicio.getIdTipoDeServicio();
          switch (id){
            case 1:
              tipoDeServicio = "Impresión 3D";
            case 2:
              tipoDeServicio = "Corte Láser";
            case 3:
              tipoDeServicio = "Escaneo Digital 3D";
            default:
              tipoDeServicio = "Hay error";
          }
      %>
      <tr>
        <td><%= tipoDeServicio%></td>
        <td><%= servicio.getFechaDeRegistro()%></td>
        <td><%= servicio.getTiempo()%></td>
        <td><%= servicio.getCosto()%></td>
      </tr>
      </tbody>
      <%}%>
    </table>
  </div>

</body>
</html>
