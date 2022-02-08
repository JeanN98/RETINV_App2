/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import Services.GestionarSucursalBodegaI;
import Services.GestionarSucursalBodegaImp;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bodega_sucursal;
import model.usuario_cargo;

/**
 *
 * @author Stalin
 */
public class sucursalController extends HttpServlet {

   
    GestionarSucursalBodegaI sucuService = new GestionarSucursalBodegaImp();
    usuario_cargo encargado = new usuario_cargo();
     
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("accion");
       encargado = sucuService.BuscarGerente(request.getParameter("CI_GERENTE_SUCURSAL"));
       
        if (action.equals("ingresar")){
                
                String RUC_SUCURSAL = request.getParameter("RUC_SUCURSAL");
                String NOMBRE_SUCURSAL = request.getParameter("NOMBRE_SUCURSAL");
                String DIRECCION_SUCURSAL = request.getParameter("DIRECCION_SUCURSAL");
                String TELEFONO_SUCURSAL = request.getParameter("TELEFONO_SUCURSAL");
                int  ID_GERENTE = encargado.getID_USUARIO_CARGO();

        bodega_sucursal sucursal = new bodega_sucursal ( RUC_SUCURSAL, NOMBRE_SUCURSAL ,DIRECCION_SUCURSAL ,TELEFONO_SUCURSAL , ID_GERENTE );
         try{
                 sucuService.CrearNuevaSucBod(sucursal, encargado);
                 
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
