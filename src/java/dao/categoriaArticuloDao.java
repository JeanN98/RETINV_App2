/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import model.categoriaArticulo;

/**
 *
 * @author Stalin
 */
public interface categoriaArticuloDao {
    public List<categoriaArticulo> list();    //prototipo metodo listar
    public categoriaArticulo edit(int id);    //prototipo metodo editar
    public boolean save (categoriaArticulo categoria);
    public boolean delete(int id);      //protot
}
