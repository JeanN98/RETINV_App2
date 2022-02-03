/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Restricciones;

import dao.usuariio_cargoImp;
import dao.usuario_cargoDao;
import java.util.List;
import model.usuario_cargo;

/**
 *
 * @author Stalin
 */
public class validarUusarioImp  implements validarUsuario{

    @Override
    public boolean validarUsario(String usuario, String contracenia) {
      
         
     usuario_cargo usu = new usuario_cargo();
      
     usuario_cargoDao usuDao = new usuariio_cargoImp();
     
        try {
            //VALIDAR REGLAS NEGOCIO
                
                List<usuario_cargo> listaUsuarios = usuDao.list();
                
                for(int i=0; i<listaUsuarios.size();i++)
                {
                    usu = listaUsuarios.get(i);
                    if (usu.getCI_USUARIO_CARGO().equals(usuario) && usu.getCONTRACENIA().equals(contracenia) ){
                       return true; 
                    }                                 
                }
                
          
        } catch (Exception e) {
           
        }
       return false; 
      }
    
    
    
}
