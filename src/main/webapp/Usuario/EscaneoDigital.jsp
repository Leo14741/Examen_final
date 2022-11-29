<%--
  Created by IntelliJ IDEA.
  User: DANA
  Date: 29/11/2022
  Time: 13:50
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

<div>
    <p>Ingrese la información:</p>

    <div class="mb-3">>
        <select class="form-select" aria-label="Resolucion">
            <option value="Alta">Alta</option>
            <option value="Media">Media</option>
            <option value="Baja">Baja</option>
        </select>
    </div>

    <div class="mb-3">
        <label class="form-label">Dimensiones</label>

        <label for="Ancho" class="form-label">Ancho</label>
        <input type="email" class="form-control" id="Ancho" placeholder="Ingrese el Ancho">

        <label for="Largo" class="form-label">Largo</label>
        <input type="email" class="form-control" id="Largo" placeholder="Ingrese el Largo">

        <label for="Altura" class="form-label">Altura</label>
        <input type="email" class="form-control" id="Altura" placeholder="Ingrese el Altura">
    </div>


</div>

</body>
</html>
