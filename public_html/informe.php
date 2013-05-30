<?php session_start();
if(!$_SESSION["jugador_id"])
	header("location:./index.php");
$_SESSION["partida_inf_id"]=$_REQUEST["partida_inf_id"];
 ?>
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
 <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" >
 	<head>
 		<?php include("inc/meta.php"); ?> 		
 		<title>Monopoly - Modulo Informes - Sistemas Informaticos 1</title>
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
 			<h1><a href="#control_panel">Modulo de Informes</a>
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
				
			<h3>Consultas</h3>


 		
			 <div class="consulta">    
			     <?php

			    $dbconn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
			         or die('Could not connect: ' . pg_last_error());
			     
				echo("<h4> Lista de Jugadores Actuales </h4> <br />");

				// Performing SQL query
				$result = pg_prepare($dbconn, "my_query", 'SELECT * FROM participacion natural join jugador WHERE partida_id=$1');
				 if (!$result) {die("Can't prepare '$sql': " . pg_last_error());}
				$result = pg_execute($dbconn, "my_query", array($_SESSION["partida_inf_id"]));

				
				$numrows = pg_numrows($result);
				echo'<table class="table1">
					<thead>
						<tr>
							<th></th>
							<th scope="col" abbr="ID">Jugador ID</th>
							<th scope="col" abbr="Nombre">Nombre Jugador</th>
							<th scope="col" abbr="Alias">Alias Jugador</th>
						</tr>
					</thead>
					
					<tbody>';
				for ($i = 1; $i <= $numrows; $i++) {
					$row = pg_fetch_array($result, $i-1, PGSQL_BOTH);
				    echo ('<tr>');
				    	echo('<th scope="row">Resultado '.$i.'</th> <td>'.$row['jugador_id'].'</td>');
				    	echo('<td>'.$row['nombre'].'</td>');
				    	echo('<td>'.$row['alias'].'</td>');
				    echo ('</tr>');
				}
				echo('</tbody>
				</table>');

	


			// Free resultset
		     pg_free_result($result);
		     
		     // Closing connection
		     pg_close($dbconn);
		     
		     
		     
			    $dbconn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
			         or die('Could not connect: ' . pg_last_error());
		
			   	
				$result = pg_prepare($dbconn, "my_query_", 'SELECT * FROM turno WHERE partida_id=$1 ORDER BY turno_id');
				if (!$result) {die("Can't prepare '$sql': " . pg_last_error());}
				$result = pg_execute($dbconn, "my_query_", array($_SESSION["partida_inf_id"]));
				$numrows = pg_numrows($result);




				$numrows = pg_numrows($result);
				echo'<table class="table1">
					<thead>
						<tr>
							<th></th>
							<th scope="col" abbr="IDT">TURNO ID</th>
							<th scope="col" abbr="IDJ">Jugador Actual</th>
						</tr>
					</thead>

					<tbody>';
				for ($i = 1; $i <= $numrows; $i++) {
					$row = pg_fetch_array($result, $i-1, PGSQL_BOTH);
				    echo ('<tr>');
				    	echo('<th scope="row"> </th> ');
				    	echo('<td>'.$row['turno_id'].'</td>');
				    	echo('<td>'.$row['jugador_actual'].'</td>');
				    echo ('</tr>');
				}
				echo('</tbody>
				</table>');

				
				


				// Free resultset
			     pg_free_result($result);
			     
			     // Closing connection
			     pg_close($dbconn);




					     ?>	
					
					 </div>	
	
	
					 <div class="consulta">    
					     <?php
						// tabla consulta B
					    $dbconn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
					         or die('Could not connect: ' . pg_last_error());

						echo("<h4> CONSULTA 4 </h4><br />");

						// Performing SQL query
						$result = pg_prepare($dbconn, "my_query_1", 'SELECT * FROM compra_propiedad natural join calle natural join movimiento where pertenece_a_partida=$1 and calle_id=propiedad_id');
						 if (!$result) {die("Can't prepare '$sql': " . pg_last_error());}
						$result = pg_execute($dbconn, "my_query_1", array($_SESSION["partida_inf_id"]));


						$numrows = pg_numrows($result);
						echo'<table class="table1">
							<thead>
								<tr>
									<th></th>
									<th scope="col" abbr="ID"> CASILLA ID</th>
									<th scope="col" abbr="Precio">Precio </th>
									<th scope="col" abbr="Nombre">Nombre Propiedad </th>
								</tr>
							</thead>
							<tbody>';
						for ($i = 1; $i <= $numrows; $i++) {
							$row = pg_fetch_array($result, $i-1, PGSQL_BOTH);
						    echo ('<tr>');
						    	echo('<th scope="row">Propiedad</th> <td>'.$row['propiedad_id'].'</td>');
						    	echo('<td>'.$row['precio'].'</td>');
						    	echo('<td>'.$row['nombre'].'</td>');
						    echo ('</tr>');
						}
						echo('</tbody>
						</table>');





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