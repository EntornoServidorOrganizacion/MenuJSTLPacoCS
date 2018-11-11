<%-- 
    Document   : ejemploFTM
    Created on : 8 nov. 2018, 12:45:07
    Author     : paco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FMT</title>
    </head>
    <body>
        <fmt:setLocale value="${sss}"/>
        <fmt:bundle basename = "gmt">
            <fmt:message key = "count.one"/><br/>
            <fmt:message key = "count.two"/><br/>
            <fmt:message key = "count.three"/><br/>
        </fmt:bundle>

        <!-- Change the Locale -->
        <fmt:setLocale value = "es_ES"/>
        <fmt:bundle basename = "gmt">
            <fmt:message key = "count.one"/><br/>
            <fmt:message key = "count.two"/><br/>
            <fmt:message key = "count.three"/><br/>
        </fmt:bundle>
            <c:set var="idioma" value="${idioma}"/>
            <c:set var="pais" value="${pais}"/>
            <c:set var="codIdioma" value="${codIdioma}"/>
            <c:set var="codPais" value="${codPais}"/>
            <h1>IDIOMA: ${idioma}</h1>
            <h1>PAIS: ${pais}</h1>
            <h1>CODIGO IDIOMA: ${codIdioma}</h1>
            <h1>CODIGO PAIS: ${codPais}</h1>

        <h2>Horas</h2>
        <ul>
            <li>Hora formato corto: <fmt:formatDate type="time" timeStyle="short" timeZone="${gmt}"  value="${fecha}" /></li>
            <li>Hora formato medio: <fmt:formatDate type="time" timeStyle="medium" timeZone="${gmt}"  value="${fecha}" /></li>
            <li>Hora formato largo: <fmt:formatDate type="time" timeStyle="long" timeZone="${gmt}"  value="${requestScope.fecha}" /></li>  
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
