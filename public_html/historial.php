<?php session_start(); ?>
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
 <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" >
 	<head>
 		<?php include("inc/meta.php"); ?> 		
 		<title>Monopoly - HISTORIAL - Sistemas Informaticos 1</title>
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
 			<h1><a href="#">HISTORIAL</a>
 			</h1>
 		</div>
 		<!-- CONTENT -->
 		<div id="content-top-shadow"></div>
 		<div id="content">
 			<!-- PAGE WRAPPER -->
 			<div id="page-wrapper">
	
			<h3>HISTORIAL JUGADOR <?php echo($_SESSION["nombre_jugador"]);?></h3>

	
					 <div class="consulta">    
					     <?php
						// tabla consulta B
					    $dbconn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
					         or die('Could not connect: ' . pg_last_error());

						echo("<h4> CONSULTA 4 </h4>
								<p>SELECT * FROM compra_propiedad</p> <br />");

						// Performing SQL query
						$result = pg_prepare($dbconn, "my_query_1", 'SELECT * FROM participacion natural join jugador where jugador_id=$1');
						 if (!$result) {die("Can't prepare '$sql': " . pg_last_error());}
						$result = pg_execute($dbconn, "my_query_1", array($_SESSION["jugador_id"]));


						$numrows = pg_numrows($result);
						echo'<table class="table1">
							<thead>
								<tr>
									<th></th>
									<th scope="col" abbr="ID"> PARTIDA ID</th>
									<th scope="col" abbr="Precio">dinero </th>
								</tr>
							</thead>
							<tbody>';
						for ($i = 1; $i <= $numrows; $i++) {
							$row = pg_fetch_array($result, $i-1, PGSQL_BOTH);
						    echo ('<tr>');
						    	echo('<td>'.$row['partida_id'].'</td>');
						    	echo('<td>'.$row['dinero'].'</td>');
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