<%-- 
    Document   : listaPaises
    Created on : 7 nov. 2018, 20:30:21
    Author     : paco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Elige un pais</title>
    </head>
    <body>
        <form action="Formatos" method="post">

            <c:set var="paises" value="${paises}"/>
            
            <select name="pais">
                <option value="-1" selected="true">Elige un país</option>
                <c:forEach var="pais" items="${paises}">
                    <option value="${pais.value}-${pais.key}">${pais.key}</option>
                </c:forEach>
            </select>

            <button type="submit" name="enviar" value="Enviar"/>Enviar
            <button type="submit" name="menu" value="Menu"/>Menú
        </form>
    </body>
</html>
