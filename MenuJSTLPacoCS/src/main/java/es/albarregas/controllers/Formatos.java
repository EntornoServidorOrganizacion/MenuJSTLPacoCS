/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Locale;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author paco
 */
@WebServlet(name = "Formatos", urlPatterns = {"/Formatos"})
public class Formatos extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = null;
        String codIdioma = "";
        String codPais = "";
        String pais = "";
        Date fecha = null;
        Locale idioma = null;
        Double numero = 20000d / 3;
        
        if(request.getParameter("pais").equals("-1")){
            url = "i18n/Paises/listaPaises.jsp";
        } else{
            if(request.getParameter("menu") != null){
                url = "index.jsp";
            } else if(request.getParameter("enviar") != null){
                codIdioma = request.getParameter("pais").substring(0, 2);
                codPais = request.getParameter("pais").substring(3, 5);
                String[] arrayPaisYCodigo = request.getParameter("pais").split("-");
                pais = arrayPaisYCodigo[1];
                fecha = new Date();
                idioma = new Locale(codIdioma, codPais);
                
                request.setAttribute("numero", numero);
                request.setAttribute("codIdioma", codIdioma);
                request.setAttribute("codPais", codPais);
                request.setAttribute("pais", pais);
                request.setAttribute("fecha", fecha);
                request.setAttribute("idioma", idioma);
                
                
                url = "/i18n/Paises/ejemploFMT.jsp";
            }
        }
        
        request.getRequestDispatcher(url).forward(request, response);
        

    }

}
