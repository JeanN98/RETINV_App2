/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import model.kardex;

/**
 *
 * @author Stalin
 */
public interface gestionarKardex {
    public void regsitrarKardex(kardex kar);
    public void eliminarKardex();
    public void listarKardex();
    public void modificarKardex();
    public void buscarKardex();
}
