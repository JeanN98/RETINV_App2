/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import java.util.List;
import model.categoriaArticulo;

/**
 *
 * @author Stalin
 */
public interface gestionarCategoria {
    public void regsitrarCategoria( categoriaArticulo categoria);
    public void eliminarCategoria();
    public List< categoriaArticulo> listarCategoria();
    public void modificarCategoria();
    public void buscarCategoria();
}
