<%-- 
    Document   : kardex
    Created on : 21 ene. 2022, 8:48:56
    Author     : Stalin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
	<!-- navBar -->
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
				<i class="zmdi zmdi-shopping-cart"></i>
			</div>
			<div class="full-width header-well-text">
				<p class="text-condensedLight">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde aut nulla accusantium minus corporis accusamus fuga harum natus molestias necessitatibus.
				</p>
			</div>
		</section>
		<div class="full-width divider-menu-h"></div>
		<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
			<div class="mdl-tabs__tab-bar">
				<a href="#tabNewKardex" class="mdl-tabs__tab is-active">NUEVO</a>
				<a href="#tabListKardex" class="mdl-tabs__tab">LISTA</a>
			</div>

		<div class="mdl-tabs__panel is-active" id="tabNewKardex">
			<div class="mdl-grid">
				<div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--12-col-desktop">
					<div class="full-width panel mdl-shadow--2dp">
						<div class="full-width panel-tittle bg-primary text-center tittles">
							NUEVO KARDEX
						</div>
						<div class="full-width panel-content">
                                                    <form action="kardexController">
								<div class="mdl-grid">
									<div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--6-col-desktop">
										<h5 class="text-condensedLight">Datos a ingresar</h5>

										<div class="mdl-textfield mdl-js-textfield">
											<select class="mdl-textfield__input" name="NOMBRE_ARTICULO">
												<option value="" disabled="" selected="">Selecciona una articulo</option>
												<option value="Articulo 1">Articulo 1</option>
												<option value="Articulo 2">Articulo 2</option>
											</select>
										</div>
										

										<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
											<input class="mdl-textfield__input" type="text" pattern="-?[A-Za-z0-9áéíóúÁÉÍÓÚ ]*(\.[0-9]+)?" id="Descripcion" name ="DESCRIPCION_ARTICULO">
											<label class="mdl-textfield__label" for="Descripcion">Descripcion</label>
											<span class="mdl-textfield__error">Descripcion Invalida</span>
										</div>
										<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
											<input class="mdl-textfield__input" type="text" pattern="-?[A-Za-z0-9áéíóúÁÉÍÓÚ ]*(\.[0-9]+)?" id="CantProduct" name="CANTIDAD_ARTICULO">
											<label class="mdl-textfield__label" for="cantProduct" >Cantidad</label>
											<span class="mdl-textfield__error">Ingrese solo numeros</span>
										</div>
										<div class="mdl-textfield mdl-js-textfield">
											<select class="mdl-textfield__input" name ="TIPO_KARDEX">
												<option value="" disabled="" selected="">Selecciona un tipo </option>
												<option value="ENTRADA">ENTRADA</option>
												<option value="SALIDA">SALIDA</option>
											</select>
										</div>
										
										<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
											
											<label class="mdl-textfield__label" for="NameProduct">Total</label>
											
										</div>
															
										<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
											
											<label class="mdl-textfield__label" for="NameProduct">Saldo</label>
											
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

		<div class="mdl-tabs__panel" id="tabListKardex">
			<div class="mdl-grid">
				<table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp full-width table-responsive">
					<thead>
						<tr>
							<th class="mdl-data-table__cell--non-numeric">FECHA</th>
							<th>ID KARDEX</th>
							<th>EMPLEADO</th>
							<th>ARTICULO</th>
							<th>DESCRIPCION</th>
							<th>CANTIDAD</th>
							<th>PRECIO TOTAL</th>
							<th>TIPO</th>
							<th>SALDO</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="mdl-data-table__cell--non-numeric">05/2/2011</td>
							<td>1</td>
							<td>Empleado 1</td>
							<td>Articulo 1</td>
							<td>texto texto</td>
							<td>55</td>
							<td>$55</td>
							<td>salida</td>
							<th>99</th>
							<td> <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent">
								editar
							  </button></td>
						</tr>
						
					</tbody>
				</table>
			</div>
		</div>
	</div>

	
	</section>
</body>
</html>