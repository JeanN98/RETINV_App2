/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import Services.usuario_cargoService;
import Services.usuario_cargoServiceImp;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.usuario_cargo;

/**
 *
 * @author Stalin
 */
public class adminController extends HttpServlet {

    String gerente = "admin.jsp";
    usuario_cargoService usuService = new  usuario_cargoServiceImp();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         String action = request.getParameter("accion");
         
        if (action.equals("ingresar")){
            
                String CI_ADMIN = request.getParameter("CI_ADMIN");
                String NOMBRE_ADMIN = request.getParameter("NOMBRE_ADMIN");
                String APELLIDO_ADMIN = request.getParameter("APELLIDO_ADMIN");
                String PHONE_ADMIN = request.getParameter("PHONE_ADMIN");
                String DIRECCION_ADMIN = request.getParameter("DIRECCION_ADMIN");
                String USUARIO_ADMIN= request.getParameter("USUARIO_ADMIN");
                String PASSWORD_ADMIN = request.getParameter("PASSWORD_ADMIN");
                
                usuario_cargo usuario =  new  usuario_cargo (CI_ADMIN, 0, NOMBRE_ADMIN.concat(APELLIDO_ADMIN), PHONE_ADMIN, DIRECCION_ADMIN, USUARIO_ADMIN, PASSWORD_ADMIN);
                try{
                 usuService.regsitrarUsuarios(usuario);
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
