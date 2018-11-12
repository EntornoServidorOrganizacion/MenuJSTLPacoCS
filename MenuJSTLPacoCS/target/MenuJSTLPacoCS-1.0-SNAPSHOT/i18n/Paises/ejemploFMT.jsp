<%-- 
    Document   : ejemploFTM
    Created on : 8 nov. 2018, 12:45:07
    Author     : paco
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FMT</title>
    </head>
    <body>
        <%-- 
        
        <fmt:setLocale value="${idioma}"/>
        
        <fmt:bundle basename="gmt">
            <fmt:message var="gmt" key="${idioma}"/>
        </fmt:bundle>
        
        <fmt:bundle basename = "${codigo}">
            <p>Hola=<fmt:message key="hola"/></p>
            <p>Adios=<fmt:message key="adios"/></p>
        </fmt:bundle>
        
        
        --%>
        <h1>El país elegido es: ${pais}</h1><p>(Los valores por defecto son de Estados Unidos)</p>
        <fmt:setLocale value="en_US"/>
        <fmt:setBundle basename="en_US" var="eeuu"/>
        <p>Hola = <fmt:message key="hola" bundle="${eeuu}"/></p><br>
        <p>Adios = <fmt:message key="adios" bundle="${eeuu}"/></p><br>




        <h2>Horas</h2>
        <ul>
            <li>Hora formato corto: <fmt:formatDate type="time" timeStyle="short" timeZone="${gmt}"  value="${fecha}" /></li>
            <li>Hora formato medio: <fmt:formatDate type="time" timeStyle="medium" timeZone="${gmt}"  value="${fecha}" /></li>
            <li>Hora formato largo: <fmt:formatDate type="time" timeStyle="long" timeZone="${gmt}"  value="${fecha}" /></li>  
        </ul>
        <br/>
        <h2>Fecha</h2>
        <ul>   
            <li>Fecha formato corto: <fmt:formatDate type="date" dateStyle="short" timeZone="${gmt}"  value="${fecha}" /></li>
            <li>Fecha formato medio: <fmt:formatDate type="date" dateStyle="medium" timeZone="${gmt}"  value="${fecha}" /></li>
            <li>Fecha formato largo: <fmt:formatDate type="date" dateStyle="long" timeZone="${gmt}"  value="${fecha}" /></li>

        </ul>
        <br/>
        <h2>Números</h2>
        <ul>   
            <li><fmt:formatNumber type="currency" value="${numero}" /></li>
            <li><fmt:formatNumber type="number" groupingUsed="true" value="${numero}" /></li>
            <li><fmt:formatNumber type="number" maxIntegerDigits="3" value="${numero}" /></li>
            <li><fmt:formatNumber type="number" maxFractionDigits="6" value="${numero}" /></li>
            <li><fmt:formatNumber type="percent" maxIntegerDigits="4" value="${numero}" /></li>
            <li><fmt:formatNumber type="number" pattern="####.###" value="${numero}" /></li>
        </ul>
    </body>
</html>
