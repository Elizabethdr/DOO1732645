<%-- 
    Document   : post
    Created on : May 2, 2017, 7:17:35 PM
    Author     : cesar
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%     
if(session.getAttribute("username") == null)
    response.sendRedirect("login.jsp");
%>
<html>
    <head>
        <figure>
        <center><image src="Portada.png" border="4" alt="Portada" width="800" height="150"></center>
        </figure>
        <title>Postear</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style type ="text/css">
            body{
                background:#ffe37f
        </style>
    </head>
    <body>
        <image style="position: absolute; left: 30px; top: 100px" src ="Columna1.jpg" border="2" alt="C.1" width="160px" height="600px" align="right">
        <image style="position: absolute; right: 20px; top: 100px" src ="Columna2.jpg" border="2" alt="C.2" width="160px" height="600px" align="left">
        <header>
            </br>
            <center><h1>Comparte tu receta </h1></br></center>
            <center><h2>ADELANTE</h2></center></br>
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
        <form method="POST" action="ComentariosControlador">
            <br>
            <center>Nombre: <input type="text" value="" name="nombre" placeholder="Inserte su nombre"></center><br>
            </br></br>
            <center>Cree su post:
            <textarea rows="7" cols="50" name="comentario"></textarea>
            <input type="submit">
            <input type="hidden" name="action" value="comentar">
            </center>
        </form>
    </body>
</html>
