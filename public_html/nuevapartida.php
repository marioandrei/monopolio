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
								partida
								
									partida_id int NOT NULL,
									fecha TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
									fecha_fin    TIMESTAMP,
									dinero_ganador_partida int,
									ganador_partida int,
									numero_jugadores int default 0,
									
									numero_tarjetas int NOT NULL DEFAULT 32,
									hoteles_por_defecto int NOT NULL DEFAULT 12,
									casa_por_defecto int NOT NULL DEFAULT 3
-->		<?php 
			if (!$_SESSION["nueva_partida_creada"]){ ?>
			<form name="NuevaPartida" method="POST" action="insert_partida.php">
			  <label> Numero de Jugadores</label>
			  <input type="text" name="num_jugadores" size="30"><br> 
			  <input type="submit" name="submit" value="Guardar">

			
			</form>
		<?php } 
		else{ ?>
			    <?php

			    $dbconn = pg_connect('host=localhost dbname=c_9 user=alumnodb password='.$_SESSION["mypassword"])
			         or die('Could not connect: ' . pg_last_error());

			     // consultar  PSQL todas las partidas abiertas de ese jugador
				$result = pg_prepare($dbconn, "my_query2", 'SELECT * FROM jugador');
				if (!$result) {die("Can't prepare '$sql': " . pg_last_error());}
				$result = pg_execute($dbconn, "my_query2", array());
				$numrows = pg_numrows($result);

			    echo("<p>Jugadores</p><br/>
			    		<form method=\"POST\" action=\"insert_participacion.php\">");
				
				for($j = 1; $j <= $_SESSION["num_jugadores"] ; $j++) {

					echo("<select name=\"jugador_$j\">");
						for ($i = 1; $i <= $numrows; $i++) {
							$row = pg_fetch_array($result, $i-1, PGSQL_BOTH);

					  	echo"<option value=\"".$row["jugador_id"]."\">"."ID:".$row["jugador_id"]." ".$row["alias"]."</option>";
						}		
					echo '</select>';		
				}
				echo("<input type=\"submit\" name=\"submit\" id=\"submit\" value=\"submit\"/>  </form>");
				
				


				// Free resultset
			     pg_free_result($result);
			     
			     // Closing connection
			     pg_close($dbconn);




			     ?>	
		

		<?php }	?>

 			 
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
