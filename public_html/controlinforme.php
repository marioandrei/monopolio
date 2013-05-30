<?php session_start();
if(!$_SESSION["jugador_id"])
	header("location:./index.php");

$jugador_id=$_SESSION["jugador_id"];

 ?>
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
 <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" >
 	<head>
 		<?php include("inc/meta.php"); ?> 		
 		<title>Monopoly - control de informes - Sistemas Informaticos 1</title>
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
 			<h1><a href="#control_panel">Control de informe</a>
 			</h1>
 		</div>
 		<!-- CONTENT -->
 		<div id="content-top-shadow"></div>
 		<div id="content">
 			<!-- PAGE WRAPPER -->
 			<div id="page-wrapper">
 			<h3>Partidas disponibles</h3>
			

			
 			
			 <div class="consulta">
			 
			 	
			   
			     <?php

			    $dbconn = pg_connect('host=localhost dbname=c_9 user=alumnodb password=alumnodb')
			         or die('Could not connect: ' . pg_last_error());

			    
			     


				

			     // consultar  PSQL todas las partidas abiertas
				$result = pg_prepare($dbconn, "my_query2", 'SELECT * FROM partida' );
				if (!$result) {die("Can't prepare '$sql': " . pg_last_error());}
				$result = pg_execute($dbconn, "my_query2", array());
				$numrows = pg_numrows($result);

				if ($numrows!=0){
			    	echo("<h3>Partidas Abiertas Disponibles</h3><br/>
			    		<form method=\"POST\" action=\"informe.php\"> <select name=\"partida_inf_id\">");
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
