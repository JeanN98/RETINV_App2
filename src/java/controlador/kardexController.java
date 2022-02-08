/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import Services.gestionarArticulo;
import Services.gestionarArticuloImp;
import Services.gestionarKardex;
import Services.gestionarKardexImp;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.articulo;
import model.kardex;

/**
 *
 * @author Stalin
 */
public class kardexController extends HttpServlet {

  gestionarKardex karService = new  gestionarKardexImp();
 
  gestionarArticulo art = new gestionarArticuloImp();
   
  DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
   Date dateToStr = new Date(System.currentTimeMillis());
   String fecha_actual = dateFormat.format(dateToStr );
  
  
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("accion");
        
       if (action.equals("ingresar")){
        String NOMBRE_ARTICULO = request.getParameter("NOMBRE_ARTICULO");
        String DESCRIPCION_ARTICULO =request.getParameter("DESCRIPCION_ARTICULO"); 
        int   CANTIDAD_ARTICULO = Integer.parseInt(request.getParameter("CANTIDAD_ARTICULO"));
        String TIPO_KARDEX = request.getParameter("TIPO_KARDEX"); 
        
        articulo arti  = art.buscarArticulo(NOMBRE_ARTICULO);
        
         kardex kardexa = new kardex (1,1,fecha_actual, DESCRIPCION_ARTICULO,  CANTIDAD_ARTICULO,  arti.getPRECIO_UNITARIO()*CANTIDAD_ARTICULO , TIPO_KARDEX,arti.getPRECIO_UNITARIO()*CANTIDAD_ARTICULO  );  
        try {
        
         karService.regsitrarKardex(kardexa);
         request.getRequestDispatcher("exito.jsp").forward(request, response);
        }catch(Exception e ){
         request.getRequestDispatcher("fracaso.jsp").forward(request, response);
        }
       }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
