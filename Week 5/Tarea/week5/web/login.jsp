<%-- 
    Document   : login
    Created on : Feb 19, 2017, 07:37:20 PM
    Author     : Diana Elizabeth Diaz Rodriguez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesión</title>
    </head>
    <body>
        <h1> Bienvenido </h1>
        <form action="LoginController" method="POST">
            <br/>
            <label> Usuario: </label>
            <input type="text" name="username" />
            <br/>
            <br/>
            <label> Contraseña: </label>
            <input type="password" name="password" />
            <br/>
            <br/>
            <input type="submit" name="Iniciar sesión" id="Iniciar sesión" value="Iniciar sesión" />
        </form>
    </body>
</html>
