<%--
  Created by IntelliJ IDEA.
  User: DANA
  Date: 29/11/2022
  Time: 13:49
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
<form method="POST" action="<%=request.getContextPath()%>/UsuarioServlet?action=crearImpresion">
    <p>Ingrese la información:</p>

    <div class="mb-3">>
        <select class="form-select" aria-label="Grosor" name="Grosor">
            <option value="fino">fino</option>
            <option value="grueso">grueso</option>
        </select>
    </div>

    <div class="mb-3">>
        <select class="form-select" aria-label="Color de la Linea" name="Color">
            <option value="rojo">rojo</option>
            <option value="negro">negro</option>
        </select>
    </div>

    <div class="mb-3">>
        <select class="form-select" aria-label="Material" name="Material">
            <option value="acrilico">acrilico</option>
            <option value="mdf">mdf</option>
            <option value="carton">carton</option>
        </select>
    </div>

    <div class="mb-3">
        <label class="form-label" name="Dimensiones">Dimensiones</label>
        <input type="email" class="form-control" id="Largo" placeholder="Ingrese las Dimensiones">

    </div>

    <div class="mb-3">
        <label for="URLDeLaImagen" class="form-label">URL de la Imagen</label>
        <input type="text" class="form-control" id="URLDeLaImagen" name="URL">
    </div>

</form>
</body>
</html>
