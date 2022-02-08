/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import dao.articuloDao;
import dao.articuloImp;
import java.util.List;
import java.util.Scanner;
import model.articulo;

/**
 *
 * @author Stalin
 */
public class gestionarArticuloImp implements gestionarArticulo {


    @Override
    public void regsitrarArticulo(articulo art ) {
       try {
            
       articuloDao artDao = new articuloImp();
        artDao.save(art);
        
        }catch (Exception e){
            e.getMessage();
        }
    }

    @Override
    public void eliminarArticulo(int id_empleado) {
        
     
        articulo art = new articulo  ();
        articuloDao artDao = new articuloImp();
        
        artDao.delete(id_empleado);
    }

    @Override
    public List<articulo> listarArticulo() {
      
        articuloDao artDao = new articuloImp();
         List<articulo> art = artDao.list();
         return art;
    }
     
    
    

    @Override
    public void modificarArticulo(articulo articulo) {
       
          try {
            
       articuloDao artDao = new articuloImp();
        artDao.edit(articulo.getID_ARTICULO());
           
        }catch(Exception e){
            System.out.println("Error al insertar los datos");
        }
    }

    @Override
    public articulo buscarArticulo(String Nombre ) {
         
       
        articulo art = new articulo ();
          articuloDao artDao  = new articuloImp();
       
        
        try {
            //VALIDAR REGLAS NEGOCIO  
              
          
                
                List<articulo> listaArticulo =  artDao.list();
                
                for(int i=0; i< listaArticulo.size();i++)
                {
                
                    if (listaArticulo.get(i).getNOMBRE().equals(Nombre)){
                         art = listaArticulo.get(i);
                    }
                    else{
                         throw new Exception("no se encontro un articulo con ese ID ");                        
                    }                                   
                }
                
          
        } catch (Exception e) {
           
        }
        return art;
    }
    
}
