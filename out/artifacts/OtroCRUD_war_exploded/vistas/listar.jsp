<%@ page import="ModeloDAO.PersonaDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="Modelo.Persona" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: alfonso.carrillo
  Date: 23/10/2019
  Time: 10:44 a. m.
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
    <h1>Personas</h1>
    <a class="btn btn-success" href="pepino?accion=add">Agregar Nuevo</a>
    <br><br>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th class="text-center">ID</th>
            <th class="text-center">DNI</th>
            <th class="text-center">NOMBRES</th>
            <th class="text-center">ACCIONES</th>
        </tr>
        </thead>
        <%
            PersonaDAO dao = new PersonaDAO();
            List<Persona> list = dao.listar();
            Iterator<Persona> iter = list.iterator();
            Persona per = null;
            while(iter.hasNext()) {
                per = iter.next();
        %>
        <tbody>
        <tr>
            <td class="text-center"><%= per.getId()%></td>
            <td class="text-center"><%= per.getDni()%></td>
            <td><%= per.getNom()%></td>
            <td class="text-center">
                <a class="btn btn-warning" href="pepino?accion=editar&id=<%= per.getId()%>">Edit</a>
                <a class="btn btn-danger" href="pepino?accion=eliminar&id=<%= per.getId()%>">Remove</a>
            </td>
        </tr>
        <%}%>
        </tbody>
    </table>
</div>
</body>
</html>
