<?php 
session_start();
session_unset();
session_destroy();

session_start();

// variables de la conexion 
$_SESSION["myhost"]="localhost";
$_SESSION["mydbname"]="c_9";
$_SESSION["myuser"]="alumnodb";
$_SESSION["mypassword"]="alumnodb";

 ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" >
	
	
	
	<head>
 		<?php include("inc/meta.php"); ?>
		<title>Monopoly - Login - Sistemas Informaticos 1</title>
	</head>
	
	<body>
		
		<!-- STATUS BAR -->
						
		<?php include('inc/navbar.php') ?>
		
		<!-- HEADER -->
		
		
		
		<div id="header">
			<div id="logo">
				<h1><a href="#home" title="Home Page">Sistemas Informaticos 1</a></h1>
				<h2>Practica 4</h2>
			</div>
		</div>
		<!-- CONTENT -->
		<div id="content-top-shadow"></div>
		<div id="content">
			<!-- PAGE WRAPPER -->
			<div id="page-wrapper">
			      			       
			<h3> LOGIN </h3>
			<p>Por favor ingrese sus credenciales de autenticacion para poder acceder:</p>			
			<div id="login">


			<section>
			<?php if ($_REQUEST["flag"]==1){
				echo("<p>El login o el password no es correcto</p>");
			} ?>
			<form method="POST" action="login.php">
			<label for="name">Name:</label><input type="text" name="loginusername" id="loginusername" size="25" required/>
			<label for="name">Password:</label><input type="password" name="loginpassword" id="loginpassword" size="25" required/>
			<p>
			<input type="submit" name="submit" id="submit" value="submit"/>
			</p>
			</form>
			
			</div>
			</section>
			<p>Si no cuentas con una cuenta, puedes <a href="nuevojugador.php">registrarte</a></p>

			</div>
			<!-- BLOG MODULE -->
			

			
			
			<div class="module" id="blog">
				<h4 class="module-header-bar">Ultimos Ganadores</h4>

				
					<?php 
					// Connecting, selecting database
					$conn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
					    or die('Could not connect: ' . pg_last_error());
					
					
					// Performing SQL query
					$result = pg_prepare($conn, "my_query", 'SELECT nombre, dinero,partida_id FROM jugador natural join participacion ORDER BY dinero DESC LIMIT 3');
					$result = pg_execute($conn, "my_query",array());
										
					// Printing results in HTML
					while ($rc = pg_fetch_array($result, null, PGSQL_ASSOC)) {
						
					    echo '<div class="blog_entry">
					    	<h5><a href="enlace" title="title">'.$rc["nombre"].'</a></h5>
					    		<p class="meta">'.$rc["dinero"].' &#8364; en la partida '.$rc["partida_id"].' + la fecha de fin';
					    	echo '<blockquote class="content">
					    		<p>
					    			Vivamus sed risus quis felis sagittis cursus. Duis blandit tristique turpis. Nulla feugiat vehicula metus.
					    		</p>
					    	</blockquote>';
					    	echo "</div>";
					    	
					}
					
					// Free resultset
					pg_free_result($result);
					
					// Closing connection
					pg_close($conn);
					?>
					
				
			</div>
			<div class="module" id="release_notes">
				<h4 class="module-header-bar">Ultimos Cambios</h4>
				
				<div class="note">
					<h5><a href="#" title="nuevo">Nuevo Login</a></h5>
					<blockquote>
						<p>El login comprueba el alias y el password en la base de datos, actualizando las variables en session.
						</p>
					</blockquote>
				</div>
				<div class="note ">
					<h5><a href="#" title="nuevo">Nuevo Tablero</a></h5>
					<blockquote>
						<p>
							El Tablero esta construido a partir de los valores de las casillas de bases de datos, incluso los colores son cargados desde ahi.							
						</p>
					</blockquote>
				</div>
				
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
		</div>
	</body>
</html>