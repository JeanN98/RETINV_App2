/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import model.articulo;

/**
 *
 * @author Stalin
 */
public interface gestionarArticulo {
    
    public void regsitrarArticulo(articulo art);
    public void eliminarArticulo(int id_empleado);
    public void listarArticulo();
    public void modificarArticulo(articulo articulo);
    public articulo buscarArticulo(int Id_Articulo);
    
}
