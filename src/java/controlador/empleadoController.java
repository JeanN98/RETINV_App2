/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import Services.empleadoService;
import Services.empleadoServiceImp;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.empleado;

/**
 *
 * @author Stalin
 */
public class empleadoController extends HttpServlet {
    
       empleadoService empleService = new   empleadoServiceImp();
       
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("accion");
        
      if (action.equals("ingresar")){
                String CI_EMPLEADO = request.getParameter("CI_EMPLEADO");
                String NOMBRE_EMPLEADO = request.getParameter("NOMBRE_EMPLEADO");
                String APELLIDO_EMPLEADO = request.getParameter("APELLIDO_EMPLEADO");
                String DIRECCION_EMPLEADO = request.getParameter("DIRECCION_EMPLEADO");
                String FECHA_EMPLEADO = request.getParameter("FECHA_EMPLEADO");
                int  ID_BODEGA = Integer.parseInt(request.getParameter("ID_BODEGA"));
              
                
                empleado empleado = new empleado ( CI_EMPLEADO, NOMBRE_EMPLEADO.concat(APELLIDO_EMPLEADO),DIRECCION_EMPLEADO , FECHA_EMPLEADO, "01-01-1999",ID_BODEGA);
                try {
                     empleService.regsitrarEmpleado(empleado);
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
