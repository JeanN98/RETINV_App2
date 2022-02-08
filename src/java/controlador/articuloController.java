/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import Services.gestionarArticulo;
import Services.gestionarArticuloImp;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.articulo;

/**
 *
 * @author Stalin
 */
public class articuloController extends HttpServlet {

     gestionarArticulo art =new gestionarArticuloImp(); 
     
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("accion");
        
       if (action.equals("ingresar")){
            
               String cod_barras = request.getParameter("cod_barras");
                String nombre = request.getParameter("nombre_prod");
                String descripcion = request.getParameter("descrip_prod");                
                int categoria= Integer.parseInt(request.getParameter("categoria"));                
                int id_bodega= Integer.parseInt(request.getParameter("id_bodega"));
                String fecha_cad = request.getParameter("fecha_cad");
                float unidades = Float.parseFloat(request.getParameter("unidades"));
                float precio = Float.parseFloat(request.getParameter("precio"));   

                articulo articulo =  new   articulo ( categoria, id_bodega, cod_barras,nombre, precio*unidades, fecha_cad,  unidades, descripcion,  precio , "Bueno",  "Kilos");
                try{
                 art.regsitrarArticulo(articulo);
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
