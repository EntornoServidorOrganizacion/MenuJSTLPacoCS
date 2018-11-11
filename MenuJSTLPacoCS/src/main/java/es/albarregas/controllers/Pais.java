/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TreeMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author paco
 */
@WebServlet(name = "Pais", urlPatterns = {"/Pais"})
public class Pais extends HttpServlet {


    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession();;
        String url = null;
        
        //preguntar antes que nada, si existe una sesion con el atributo paises if()
        
        Locale locales[] = SimpleDateFormat.getAvailableLocales();
        //la clave es el nombre y el valor es el código en el treeMap
        /*for (int i = 0; i < locales.length; i++) {
            System.out.println(locales[i].getDisplayCountry() + " " + locales[i].getLanguage()+"_"+locales[i].getCountry());
        }*/
        
        
        TreeMap<String, String> mapaPaises = new TreeMap<String, String>();
        for (int i = 0; i < locales.length; i++) {
            if(!locales[i].getDisplayCountry().equals("")){
                mapaPaises.put(locales[i].getDisplayCountry(), (locales[i].getLanguage()+"_"+locales[i].getCountry()));
            }
            
        }
        
        sesion.setAttribute("paises", mapaPaises);
        url = "i18n/Paises/listaPaises.jsp";
        request.getRequestDispatcher(url).forward(request, response);
    }


}
