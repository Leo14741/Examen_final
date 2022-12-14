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
            <h3 class="card-title text-center">Login</h3>
            <div class="card-text">
                <!--<div class="alert alert-danger alert-dismissible fade show" role="alert">Incorrect username or password.</div> -->
                <form method="post" action="<%=request.getContextPath()%>/SessionServlet">
                    <!-- to error: add class "has-danger" -->
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email</label>
                        <div style="height: 5px; display: block;"></div>
                        <input type="text" class="form-control form-control-sm" id="exampleInputEmail1"
                               name="inputEmail" placeholder="Put your username">
                    </div>
                    <div style="height: 10px; display: block;"></div>
                    <div class="form-group">
                        <label for="exampleInputPassword1" align="center">Password</label>
                        <div style="height: 5px; display: block;"></div>
                        <input type="password" class="form-control form-control-sm" id="exampleInputPassword1"
                               name="inputPassword" placeholder="Put your password">
                    </div>
                    <% if (request.getParameter("error") != null) { %>
                    <div style="height: 5px; display: block;"></div>
                    <div class="text-danger mb-2">Error en usuario o contrase??a</div>
                    <% }%>
                    <div align="center">
                        <button type="submit" class="btn btn-primary btn-block">Sign in</button>
                        <div style="height: 5px; display: block;"></div>
                        <div>
                            <a href="<%=request.getContextPath()%>/SessionServlet?action=registrarse"> Registrarse </a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>