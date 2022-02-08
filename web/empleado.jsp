<%-- 
    Document   : empleado
    Created on : 21 ene. 2022, 8:51:39
    Author     : Stalin
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" %>
<%@ page import = "Services.empleadoService"%> 
<%@ page import = "Services.empleadoServiceImp"%> 
<%@ page import = "model.empleado"%> 

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>RETINVTL</title>
	<link rel="stylesheet" href="resources/css/normalize.css">
	<link rel="stylesheet" href="resources/css/sweetalert2.css">
	<link rel="stylesheet" href="resources/css/material.min.css">
	<link rel="stylesheet" href="resources/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" href="resources/css/jquery.mCustomScrollbar.css">
	<link rel="stylesheet" href="resources/css/main.css">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="resources/js/jquery-1.11.2.min.js"><\/script>')</script>
	<script src="resources/js/material.min.js" ></script>
	<script src="resources/js/sweetalert2.min.js" ></script>
	<script src="resources/js/jquery.mCustomScrollbar.concat.min.js" ></script>
	<script src="resources/js/main.js" ></script>
</head>
<body>
	<!-- Notifications area -->
	<section class="full-width container-notifications">
		<div class="full-width container-notifications-bg btn-Notification"></div>
	    <section class="NotificationArea">
	        <div class="full-width text-center NotificationArea-title tittles">Notificaciones </div>

	    </section>
	</section>
	<!-- navBar -->
	<div class="full-width navBar">
		<div class="full-width navBar-options">
			<i class="zmdi zmdi-more-vert btn-menu" id="btn-menu"></i>	
			<div class="mdl-tooltip" for="btn-menu">Menu</div>
			<nav class="navBar-options-list">
				<ul class="list-unstyle">
					
					<li class="btn-exit" id="btn-exit">
						<i class="zmdi zmdi-power"></i>
						<div class="mdl-tooltip" for="btn-exit">Cerrar sesión</div>
					</li>
					<li class="text-condensedLight noLink" ><small>Nombre de usuario</small></li>
				
				</ul>
			</nav>
		</div>
	</div>
<!-- navLateral -->
<section class="full-width navLateral">
		<div class="full-width navLateral-bg btn-menu"></div>
		<div class="full-width navLateral-body">
			<div class="full-width navLateral-body-logo text-center tittles">
				<i class="zmdi zmdi-close btn-menu"></i> Inventario 
			</div>
			<figure class="full-width" style="height: 77px;">
				<div class="navLateral-body-cl">
					<img src="assets/img/avatar-male.png" alt="Avatar" class="img-responsive">
				</div>
				<figcaption class="navLateral-body-cr hide-on-tablet">
					<span>
						Nombre Completo de usuario<br>
						
					</span>
				</figcaption>
			</figure>
			<div class="full-width tittles navLateral-body-tittle-menu">
				<i class="zmdi zmdi-desktop-mac"></i><span class="hide-on-tablet">&nbsp; PANEL</span>
			</div>
			<nav class="full-width">
				<ul class="full-width list-unstyle menu-principal">
					<li class="full-width">
						<a href="home.jsp" class="full-width">
							<div class="navLateral-body-cl">
								<i class="zmdi zmdi-view-dashboard"></i>
							</div>
							<div class="navLateral-body-cr hide-on-tablet">
								INICIO
							</div>
						</a>
					</li>
					<li class="full-width divider-menu-h"></li>
					<li class="full-width">
						<a href="#!" class="full-width btn-subMenu">
							<div class="navLateral-body-cl">
								<i class="zmdi zmdi-case"></i>
							</div>
							<div class="navLateral-body-cr hide-on-tablet">
								ADMINISTRACIÓN
							</div>
							<span class="zmdi zmdi-chevron-left"></span>
						</a>
						<ul class="full-width menu-principal sub-menu-options">
							<li class="full-width">
								<a href="sucursal.jsp" class="full-width">
									<div class="navLateral-body-cl">
										<i class="zmdi zmdi-balance"></i>
									</div>
									<div class="navLateral-body-cr hide-on-tablet">
										SUCURSALES
									</div>
								</a>
							</li>
							<li class="full-width">
								<a href="categorias.jsp" class="full-width">
									<div class="navLateral-body-cl">
										<i class="zmdi zmdi-label"></i>
									</div>
									<div class="navLateral-body-cr hide-on-tablet">
										CATEGORIAS
									</div>
								</a>
							</li>
						</ul>
					</li>
					<li class="full-width divider-menu-h"></li>
					<li class="full-width">
						<a href="#!" class="full-width btn-subMenu">
							<div class="navLateral-body-cl">
								<i class="zmdi zmdi-face"></i>
							</div>
							<div class="navLateral-body-cr hide-on-tablet">
								USUARIOS
							</div>
							<span class="zmdi zmdi-chevron-left"></span>
						</a>
						<ul class="full-width menu-principal sub-menu-options">
							<li class="full-width">
								<a href="admin.jsp" class="full-width">
									<div class="navLateral-body-cl">
										<i class="zmdi zmdi-account"></i>
									</div>
									<div class="navLateral-body-cr hide-on-tablet">
										ADMINISTRADORES
									</div>
								</a>
							</li>
							<li class="full-width">
								<a href="gerentes.jsp" class="full-width">
									<div class="navLateral-body-cl">
										<i class="zmdi zmdi-accounts"></i>
									</div>
									<div class="navLateral-body-cr hide-on-tablet">
										GERENTES 
									</div>
								</a>
							</li>
							<li class="full-width">
								<a href="empleado.jsp" class="full-width">
									<div class="navLateral-body-cl">
										<i class="zmdi zmdi-accounts"></i>
									</div>
									<div class="navLateral-body-cr hide-on-tablet">
										EMPLEADOS
									</div>
								</a>
							</li>
						</ul>
					</li>
					<li class="full-width divider-menu-h"></li>
					<li class="full-width">
						<a href="articulos.jsp" class="full-width">
							<div class="navLateral-body-cl">
								<i class="zmdi zmdi-washing-machine"></i>
							</div>
							<div class="navLateral-body-cr hide-on-tablet">
								PRODUCTOS
							</div>
						</a>
					</li>
					<li class="full-width divider-menu-h"></li>
					<li class="full-width">
						<a href="kardex.jsp" class="full-width">
							<div class="navLateral-body-cl">
								<i class="zmdi zmdi-widgets"></i>
							</div>
							<div class="navLateral-body-cr hide-on-tablet">
								KARDEX
							</div>
						</a>
					</li>
					<li class="full-width divider-menu-h"></li>
					<li class="full-width">
						<a href="inventario.jsp" class="full-width">
							<div class="navLateral-body-cl">
								<i class="zmdi zmdi-store"></i>
							</div>
							<div class="navLateral-body-cr hide-on-tablet">
								INVENTARIO
							</div>
						</a>
					</li>
					<li class="full-width divider-menu-h"></li>
					
				</ul>
			</nav>
		</div>
	</section>
<!-- pageContent -->
<section class="full-width pageContent">
	<section class="full-width header-well">
		<div class="full-width header-well-icon">
			<i class="zmdi zmdi-account"></i>
		</div>
		<div class="full-width header-well-text">
			<p class="text-condensedLight">
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde aut nulla accusantium minus corporis accusamus fuga harum natus molestias necessitatibus.
			</p>
		</div>
	</section>
	<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
		<div class="mdl-tabs__tab-bar">
			<a href="#tabNewAdmin" class="mdl-tabs__tab is-active">NUEVO</a>
			<a href="#tabListAdmin" class="mdl-tabs__tab">LISTA</a>
		</div>
		<div class="mdl-tabs__panel is-active" id="tabNewAdmin">
			<div class="mdl-grid">
				<div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--12-col-desktop">
					<div class="full-width panel mdl-shadow--2dp">
						<div class="full-width panel-tittle bg-primary text-center tittles">
							Nuevo Empleado
						</div>
						<div class="full-width panel-content">
							<form action="empleadoController">
								<div class="mdl-grid">
									<div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--6-col-desktop">
										<h5 class="text-condensedLight">Datos Empleado </h5>
										<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
											<input class="mdl-textfield__input" type="number" pattern="-?[0-9]*(\.[0-9]+)?" id="CIEmepleado" name="CI_EMPLEADO">
											<label class="mdl-textfield__label" for="CIEmepleado">CI</label>
											<span class="mdl-textfield__error">CI inválido</span>
										</div>
										<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
											<input class="mdl-textfield__input" type="text" pattern="-?[A-Za-záéíóúÁÉÍÓÚ ]*(\.[0-9]+)?" id="NameEmple" name="NOMBRE_EMPLEADO" >
											<label class="mdl-textfield__label" for="NameEmple">Nombre</label>
											<span class="mdl-textfield__error">Nombre inválido</span>
										</div>
										<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
											<input class="mdl-textfield__input" type="text" pattern="-?[A-Za-záéíóúÁÉÍÓÚ ]*(\.[0-9]+)?" id="LastNameAdmin" name="APELLIDO_EMPLEADO">
											<label class="mdl-textfield__label" for="LastNameAdmin">Apellido</label>
											<span class="mdl-textfield__error">Apellido inválido</span>
										</div>
                                                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
											<input class="mdl-textfield__input" type="text" id="addressAdmin" name="DIRECCION_EMPLEADO">
											<label class="mdl-textfield__label" for="addressAdmin">Dirección</label >
											<span class="mdl-textfield__error">Dirección inválida</span>
										</div>
                                                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
											<input class="mdl-textfield__input" type="text" id="addressAdmin" name="FECHA_EMPLEADO">
											<label class="mdl-textfield__label" for="addressAdmin">Fecha de Ingreso</label>
											<span class="mdl-textfield__error">Fecha Invalida inválida</span>
										</div>
                                               
										<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
											<input class="mdl-textfield__input" type="tel" pattern="-?[0-9+()- ]*(\.[0-9]+)?" id="idBodega" name="ID_BODEGA">
											<label class="mdl-textfield__label" for="idBodega">ID de la bodega</label>
											<span class="mdl-textfield__error">Id invalido</span>
										</div>
									
									</div>
			
								</div>
								<p class="text-center">
									 <input  class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored" type="submit" value="ingresar" name="accion"> 
								</p>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="mdl-tabs__panel" id="tabListAdmin">
                    
                    <% empleadoService empleado = new empleadoServiceImp();%>
                    
			<div class="mdl-grid">
				<div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--8-col-desktop mdl-cell--2-offset-desktop">
					<div class="full-width panel mdl-shadow--2dp">
						<div class="full-width panel-tittle bg-success text-center tittles">
							Lista de empleados
						</div>
						<div class="full-width panel-content">
							<!--<form action="#">
								<div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
									<label class="mdl-button mdl-js-button mdl-button--icon" for="searchAdmin">
										<i class="zmdi zmdi-search"></i>
									</label>
									<div class="mdl-textfield__expandable-holder">
										<input class="mdl-textfield__input" type="text" id="searchAdmin">
										<label class="mdl-textfield__label"></label>
									</div>
								</div>
							</form>-->
                                                        

                                                      
							<div class="mdl-grid">
                                                        <table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp full-width table-responsive">
                                                            <thead>
                                                            <tr>
                                                            <th class="mdl-data-table__cell--non-numeric">ID_EMPLEADO</th>
                                                            <th>CI Empleado</th>
                                                            <th>Nombre empleado</th>
                                                            <th>Direccion</th>
                                                            <th>Fecha</th>
                                                            <th>Bodega</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                            <% 
                                                             List<empleado> empleados = empleado.listarEmpleados();
                                                             for (int i =0; i<empleados.size();i++){
                                                                
                                                                out.println( "<tr>"  +  "<td class= \"mdl-data-table__cell--non-numeric\">" + 05/2/2011 +"</td>"+
                                                                 
                                                                  "<td>"+ empleados.get(i).getCI_EMPLEADO() +"</td>"+
                                                                 "<td>"+ empleados.get(i).getNOMBRE()+ "</td>" +
                                                               "<td>"+ empleados.get(i).getDIRECCION() + "</td>" +
                                                                "<td>" + empleados.get(i).getFECHA_INICIO()+ "</td>"+
                                                                "<td>" +empleados.get(i).getID_BODEGA() +"</td>"
                                                                  );  
                                                                }
                                                              %>  
                                                            </tbody>
                                                        </table>
			
                                                        </div>
                                                        
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
</body>
</html>