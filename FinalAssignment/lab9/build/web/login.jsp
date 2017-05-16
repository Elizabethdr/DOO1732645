<%-- 
    Document   : login
    Created on : 3/05/2017, 06:37:53 PM
    Author     : arman
--%>

<%
  if(session.getAttribute("username") != null)
    response.sendRedirect("post.jsp");
%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <figure>
        <center><image src="Portada.png" border="4" alt="Portada" width="800" height="150"></center>
        </figure>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesión</title>
        <style type ="text/css">
            body{
                background:#ffe37f
        </style>
    </head>
    <body>
        <image style="position: absolute; left: 30px; top: 100px" src ="Columna1.jpg" border="2" alt="C.1" width="160px" height="600px" align="right">
        <image style="position: absolute; right: 20px; top: 100px" src ="Columna2.jpg" border="2" alt="C.2" width="160px" height="600px" align="left">
        <header>
            <center><h1>Bienvenido</h1></center>
        </br>
        <hr size= 5 noshade>
            <style>
            
                *{
                    font-family: Lucinda Sans, Arial, Helvetica, sans-serif, "Times New Roman", Times, serif;
            }
            body {
                width: 900px;
                margin: 0em auto;
                
            }
            header h1{
                font-size: 50px;
                margin: 0px;
                color: #006;
            }
            header h2{
                font-size: 30px;
                margin: 0px;
                color: #e82264;
                font-style: italic;
            }
            form{
                font-size: 17px;
                margin: 8px;
                color: #7f636c;
                font-style: oblique;
            }
            
            </style>
        </header>
        <form action="LoginController" method="POST">
            <br/>
            <center><label> Usuario: </label>
                <input type="text" name="username" /></center><br/>
            <br/>
            <center><label> Password </label>
            <input type="password" name="password"/>
            
            <input type="submit" name="Iniciar Sesión" value="Iniciar Sesión"/></center>
            <br><br>
            <hr size= 5 noshade>
            
        </form>
    </body>
</html>