<%-- 
    Document   : buscar
    Created on : 15/03/2017, 09:58:40 PM
    Author     : seg-5
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="models.ComentariosPOJO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <figure>
        <image src="Portada.png" border="4" alt="Portada" width="800" height="150">
        </figure>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar</title>
        <style type ="text/css">
            body{
                background:#ffd58e
            }
        </style>
    </head>
    <body>
        <image style="position: absolute; left: 30px; top: 200px" src ="Col1.jpg" border="2" alt="C.1" width="160px" height="600px" align="right">
        <image style="position: absolute; right: 20px; top: 200px" src ="Col2.jpg" border="2" alt="C.2" width="160px" height="600px" align="left">
        <header>
            <center><h1> Buscas algo...</h1></center>
            <hr size= 5 noshade>
            <style>
                *{
                    font-family: Lucinda Sans, Arial, Helvetica, sans-serif, "Times New Roman", Times, serif;
            }
            body {
                width: 800px;
                margin: 0em auto;
            }
            header h1{
                font-size: 50px;
                margin: 0px;
                color: #c47215;
            }
            form{
                font-size: 20px;
                margin: 8px;
                color: #ba3559;
                font-style: oblique;
            }
            
            </style>
        </header>
        <form method="POST" action="ComentariosControlador">
            <br>
            Search a user's posts: <input type="text" value="" name="nombre" placeholder="Inserte su nombre"><br><br>
            Look for posts of the user: 
            <textarea rows="7" cols="50" name="comentario"></textarea>
            <input type="submit">
            <input type="hidden" name="action" value="buscar">
        </form>
        <%  if(session != null){
            ArrayList  comentarios = (ArrayList)session.getAttribute("comentarios");
            if(comentarios!=null){
        %>
                <table border="1">
                    <tr>
                        <th>USER: </th>
                        <th>POSTS: </th>
                    </tr>
                <% 
                    for(Object o : comentarios){
                        ComentariosPOJO comentario = (ComentariosPOJO) o;
                %>    
                    <tr>
                        <td><%=comentario.getNombre()%></td>
                        <td><%=comentario.getComentario()%></td>
                    </tr>
                <%  } %>    
                </table>
            <%  }
                }%>
        <center><a href="post.jsp"> Regresar </a></center>
        <style>
            body a{
                font-size: 25px;
                color: #aa600b
            }
        </style>
        <hr size= 5 noshade>
        <figure>
            <center><image src="Receta1.jpg" border="1" alt="Receta1" width="220" height="200"></center>
            <center><a href="Receta1.jsp">Espagueti a la auténtica Carbonara</a></center></br>
            <center><image src="Receta2.jpg" border="1" alt="Receta2" width="220" height="200"</center>
            <center><a href="Receta2.jsp">Muslos de pollo marinados</a></center></br>
            <center><image src="Receta3.jpg" border="1" alt="Receta3" width="220" height="200"</center>
            <center><a href="Receta3.jsp">Banderillas con queso</a></center></br>
        </figure>
    </body>
</html>
