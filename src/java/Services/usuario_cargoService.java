/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import model.usuario_cargo;



/**
 *
 * @author Stalin
 */
public interface usuario_cargoService {
       
    public void regsitrarUsuarios(usuario_cargo usu);
    public void eliminarUsuarios ();
    public void listarrUsuarios();
    public void modificarrUsuarios();
    public usuario_cargo buscarrUsuarios(String ci_usuarioCargo);
    
}
