/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import java.util.List;
import model.empleado;

/**
 *
 * @author Stalin
 */
public interface empleadoService {
    
    public void regsitrarEmpleado(empleado emple);
    public void eliminarEmpelado();
    public List<empleado> listarEmpleados();
    public void modificarEmpleados();
    public empleado buscarEmpleado(String ci_empleado);
}
