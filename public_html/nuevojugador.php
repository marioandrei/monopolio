<?php session_start();
 ?>
 
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
 <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" >
 	<head>
 		<?php include("inc/meta.php"); ?> 		
 		<title>Monopoly - Nueva Partida - Sistemas Informaticos 1</title>
 	</head>
 	<body>
 		<!-- STATUS BAR -->
		<?php include('inc/navbar.php') ?>
		<div id="header">
			<div id="logo">
				<h1><a href="#home" title="Home Page">Sistemas Informaticos 1</a></h1>
				<h2>Practica 4</h2>
			</div>
		</div>
 		<!-- TITULO -->
 		<div id="titulo">
 			<h1><a href="#control_panel">Panel de Control</a>
 			</h1>
 		</div>
 		<!-- CONTENT -->
 		<div id="content-top-shadow"></div>
 		<div id="content">
 			<!-- PAGE WRAPPER -->
 			<div id="page-wrapper">
 			<h3>Formulario de nueva partida</h3>
										
<!--
								
	jugador_id int DEFAULT nextval('jugador_seq'),
	nombre varchar(40),
	alias varchar(40),
	password varchar(40),
	privilegios boolean DEFAULT FALSE,
	CONSTRAINT pk_jugador PRIMARY KEY (jugador_id)
-->
			<form name="NuevaJugador" method="POST" action="insert_jugador.php">
			  <label> Nombre</label>
			  <input type="text" name="nombre_registro" size="40"><br> 
  			  <label> Alias</label>
			  <input type="text" name="alias_registro" size="40"><br> 
  			  <label> Password</label>
			  <input type="text" name="password_registro" size="40"><br> 
			  <input type="submit" name="submit" value="Registrar">

			</form>
 			 			 
 			</div>
 
 		</div>
 		<div id="content-bottom-shadow"></div>
 		<div id="footer">
 			<div id="footer-image"></div>
 			<p id="footer-text">
 				Copyright &copy; 2011 Ignacio Sainz-Trapaga - Mario Pantoja<br />
 				All Rights Reserved
 			</p>
 		</div>
 	</body>
 </html>
