<%-- 
    Document   : index
    Created on : 21 ene. 2022, 8:35:54
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
<body class="cover">
	<div class="container-login">
		<p class="text-center" style="font-size: 80px;">
			<i class="zmdi zmdi-account-circle"></i>
		</p>
		<p class="text-center text-condensedLight">Inicie sesión con su cuenta</p>
		<form action="Controlador">
			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			    <input class="mdl-textfield__input" type="text" id="userName" name="usuario">
			    <label class="mdl-textfield__label" for="userName">Nombre de usuario</label>
			</div>
			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			    <input class="mdl-textfield__input" type="password" id="pass" name="contracenia">
			    <label class="mdl-textfield__label" for="pass">Contraseña</label>
			</div>
                    <div>
                    <input  class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored" type="submit" value="ingresar" name="accion"> <i style="color:blue;"class="zmdi zmdi-mail-send"></i> 
                    </div>
		</form>
	</div>
</body>
</html>
