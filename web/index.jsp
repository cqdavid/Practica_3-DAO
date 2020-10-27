<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>Univ: DAVID CARANI QUISPE</p>
        <p>C.I. 6001668 L.P.</p>
        <br>
        <h1>PRODUCTOS</h1>
        <p><a href="ServletProductos?action=add">Nuevo producto</a></p>
        
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Producto</th>
                <th>Precio</th>
                <th>Cantidad</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${Productos}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.producto}</td>
                    <td>${item.precio}</td>
                    <td>${item.cantidad}</td>
                    <td><a href="ServletProductos?action=edit&id=${item.id}" >Modificar</a></td>
                    <td><a href="ServletProductos?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro'))">Eliminar</a></td>
                    
                </tr>
            </c:forEach>
        </table>
        
    </body>
</html>
