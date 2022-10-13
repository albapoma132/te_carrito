<%@page import="java.util.ArrayList"%>
<%
   //verifica si existe la coleccion en el objeto session
   if(session.getAttribute("lista") == null){
   //inicializar la lista suxiliar
   ArrayList<String> lis = new ArrayList<String>();
   //creando un atributo con una coleccion vacia
   session.setAttribute("lista", lis);
   } 
   // se obtiene la coleccion lista que esta como atributo session
   ArrayList<String> lista = (ArrayList<String>)session.getAttribute("lista");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Carrito de compras</h1>
        <p>Inserte los productos que desee</p>
        <form action="ProcesaServlet" method="post">
            Producto: <input type="text" name="producto">
            <input type="submit" values="Enviar">   
        </form>
        <br>
        <a href="ProcesaServlet">Vaciar el carrito</a>
        <h3>Contenido del carrito:</h3>
        <ul>
            <%
               if(lista != null){
                   for(String item : lista){
            %>      
                  <li><%= item %></li>
            <%      
                    }
                }
            %>
        </ul>
    </body>
</html>
