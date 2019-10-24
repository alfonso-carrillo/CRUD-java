<%--
  Created by IntelliJ IDEA.
  User: alfonso.carrillo
  Date: 24/10/2019
  Time: 10:46 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div class="col-lg-6">
            <h1>Agregar Persona</h1>
            <form action="pepino">
                ID: <br>
                <input class="form-control" type="text" name="txtDni">
                Nombre: <br>
                <input class="form-control" type="text" name="txtNom"><br>
                <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                <a href="pepino?accion=listar">Regresar</a>
            </form>
        </div>
    </div>
</body>
</html>
