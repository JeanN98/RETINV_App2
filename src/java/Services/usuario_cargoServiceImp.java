/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import dao.usuariio_cargoImp;
import dao.usuario_cargoDao;
import java.util.List;
import model.usuario_cargo;

/**
 *
 * @author Stalin
 */
public class usuario_cargoServiceImp implements  usuario_cargoService{

    @Override
    public void regsitrarUsuarios(usuario_cargo usu) {
      try {
          
        
         usuario_cargoDao usuDao = new usuariio_cargoImp();
            usuDao.save(usu);
            
        }catch(Exception e){
            System.out.println("Error al insertar los datos");
        }
    }

    @Override
    public void eliminarUsuarios() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void listarrUsuarios() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void modificarrUsuarios() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public usuario_cargo buscarrUsuarios(String ci_usuarioCargo) {
        usuario_cargo usuario = new usuario_cargo ();
          usuario_cargoDao usuDao  = new usuariio_cargoImp();
       
        
        try {
            //VALIDAR REGLAS NEGOCIO  
              
          
                
                List<usuario_cargo > listaUsario = usuDao.list();
                
                for(int i=0; i< listaUsario.size();i++)
                {
                    String CedulaAux = listaUsario.get(i).getCI_USUARIO_CARGO();
                    if (CedulaAux.equals(ci_usuarioCargo)){
                         usuario = listaUsario.get(i);
                    }
                    else{
                         throw new Exception("no se encontro un articulo con ese ID ");                        
                    }                                   
                }
                
          
        } catch (Exception e) {
           
        }
      return usuario;  
    }
}

    
    
    

