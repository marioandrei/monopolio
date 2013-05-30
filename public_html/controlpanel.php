<?php session_start();
if(!$_SESSION["jugador_id"])
	header("location:./index.php");

$jugador_id=$_SESSION["jugador_id"];

if ($_REQUEST["clean"]) {
	session_start();
	session_unset();
	session_destroy();

	session_start();

	// variables de la conexion 
	$_SESSION["myhost"]="localhost";
	$_SESSION["mydbname"]="c_9";
	$_SESSION["myuser"]="alumnodb";
	$_SESSION["mypassword"]="alumnodb";
	$_SESSION["jugador_id"]=$_REQUEST["clean"];
	$jugador_id=$_SESSION["jugador_id"];
}
 ?>
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
 <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" >
 	<head>
 		<?php include("inc/meta.php"); ?> 		
 		<title>Monopoly - Panel de Control - Sistemas Informaticos 1</title>
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
 			<h3>Informacion sobre Usuario</h3>
			<p>BIENVENIDO <br />Su IP es: <?php echo($ip=$_SERVER['REMOTE_ADDR']); ?></p>
				<script type="text/javascript">
				<!--
				document.write('<p class="accent">Usted esta usando ' + BrowserDetect.browser + ' ' + BrowserDetect.version + ' sobre ' + BrowserDetect.OS + '!</p>');
				// -->
				</script>
			<div>				
 			
 			<?php
 			if ($_SESSION["privilegios"]==t) {
				echo('
				<h3>Opciones</h3>
				<p>Eliga una opcion</p><br />	
				<a href="controlinforme.php">Generar un Informe</a><br />
				<a href="nuevapartida.php">Crear Nueva Partida</a><br />');}
			else{
				echo '<a href="historial.php">Ver Historial</a><br />';
			}
			?>

 			</div>
 			
			 <div class="consulta">
			 
			 	<h4> Jugar! </h4>
			   
			     <?php

			    $dbconn = pg_connect('host=localhost dbname=c_9 user=alumnodb password='.$_SESSION["mypassword"])
			         or die('Could not connect: ' . pg_last_error());

			    /*
			     imprimir una lista de las partidas abiertas que contienen e a ese jugador!
			     
			     
			     en formato:
			     Elija que partida desea continuar
			     
			     un jugador_actual lo tenemos.
			     	SELECT jugador_id where nombre = $nombre_jugador(en login php metemos todos estos valores
			     	en SESSION[])
			     	guardamos este selecte en $jugador_id
			     buscamos toads las participaciones de ese jugador, así obtenemos las partidas
			     
			     SELECT participación where jugador_id=$jugador _id
			     
			     
			     imprimimos todos los IDs en el desplegable, para que pueda seleccionar cual empezar 
			     al darle click  (un input[submit])
			     
*/


		

			     // consultar  PSQL todas las partidas abiertas de ese jugador
				$result = pg_prepare($dbconn, "my_query2", 'SELECT * FROM partida natural join participacion WHERE jugador_id=$1');
				if (!$result) {die("Can't prepare '$sql': " . pg_last_error());}
				$result = pg_execute($dbconn, "my_query2", array($_SESSION["jugador_id"]));
				$numrows = pg_numrows($result);

				if ($numrows!=0){
			    	echo("<h3>Partidas Abiertas Disponibles</h3><br/>
			    		<form method=\"POST\" action=\"tablero.php\"> <select name=\"partida_id\">");
					for ($i = 1; $i <= $numrows; $i++) {
						$row = pg_fetch_array($result, $i-1, PGSQL_BOTH);

					    echo"<option value=\"".$row["partida_id"]."\">Partida ".$row["partida_id"]."</option>";
					}				
				
					echo("<input type=\"submit\" name=\"submit\" id=\"submit\" value=\"submit\"/> </select> </form>");
				}		

				// Free resultset
			     pg_free_result($result);
			     
			     // Closing connection
			     pg_close($dbconn);

			     ?>	
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
 	</body>
 </html>
