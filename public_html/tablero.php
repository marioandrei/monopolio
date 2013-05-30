
<?php 

session_start();

// comprobar que se a logueado
if(!$_SESSION["jugador_id"])
	header("location:./index.php");

if($_REQUEST["partida_id"])
	$_SESSION["partida_id"]=$_REQUEST["partida_id"];
// // comprobar que se a logueado
// if(!$_SESSION["partida_id"])
// 	header("location:./controlpanel.php");


// ***************************************************************** PARTIDA
$dbconn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
     or die('Could not connect: ' . pg_last_error());
$result = pg_prepare($dbconn, "my_query_partida", "SELECT * FROM partida WHERE partida_id=$1");
 if (!$result) {die("Can't prepare '$sql': " . pg_last_error());}
$result = pg_execute($dbconn, "my_query_partida",array($_SESSION["partida_id"]));

if ($row = pg_fetch_array($result, null, PGSQL_BOTH)){
 	$_SESSION["fecha_inicio"]=$row['fecha'];
	$_SESSION["numero_jugadores"]=$row['numero_jugadores'];
	
}
//FREE
pg_free_result($result);
pg_close($dbconn);

// ***************************************************************** DINERO JUGADOR
$dbconn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
     or die('Could not connect: ' . pg_last_error());
$result = pg_prepare($dbconn, "my_query_dinero", "SELECT * FROM participacion WHERE jugador_id=$1");
 if (!$result) {die("Can't prepare '$sql': " . pg_last_error());}
$result = pg_execute($dbconn, "my_query_dinero",array($_SESSION["jugador_id"]));

if ($row = pg_fetch_array($result, null, PGSQL_BOTH)){
 	$_SESSION["dinero"]=$row['dinero'];
	$_SESSION["jugando"]=$row['jugando'];
	$_SESSION["dinero_jugador_actual"]=$row['dinero'];
}
//FREE
pg_free_result($result);
pg_close($dbconn);


// ***************************************************************** ORDEN
// Cargamos el orden de los jugadores de esta partida
$dbconn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
     or die('Could not connect: ' . pg_last_error());
$result = pg_prepare($dbconn, "my_query_orden", "SELECT jugador_id FROM participacion WHERE partida_id=$1 ORDER BY orden ASC");
 if (!$result) {die("Can't prepare '$sql': " . pg_last_error());}
$result = pg_execute($dbconn, "my_query_orden",array($_SESSION["partida_id"]));
$n_jugadores = pg_numrows($result);				

$orden=array();
while( ($row = pg_fetch_array($result, null, PGSQL_ASSOC))){
	// and print out the values
	foreach ($row as $key => $value) {
    	//echo 'The value of $_SESSION['."'".$key."'".'] is '."'".$value."'".' <br />';
	//	echo 'orden'.$value.' <br />';
		array_push($orden, $value);
	}
}


//echo "NUMERO DE JUGADORES: ".$n_jugadores." ORDEN<br />";
//print_r($orden);
$_SESSION["orden_jugadores"]=$orden;
$_SESSION["n_jugadores"]=$n_jugadores;

//echo "SESSION<br />";
//print_r($_SESSION["orden_jugadores"]);


// Free result
pg_free_result($result);
pg_close($dbconn);

// ********************************************************     ULTIMO TURNO
$dbconn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
				         or die('Could not connect: ' . pg_last_error());			
$result = pg_prepare($dbconn, "my_query1", 'SELECT * FROM turno WHERE partida_id=$1 ORDER BY fecha DESC LIMIT 1 ');
	 if (!$result) {die("Can't prepare '$sql': " . pg_last_error());}
$result = pg_execute($dbconn, "my_query1", array($_SESSION["partida_id"]));
$numcols = pg_num_fields($result);				


if($rc = pg_fetch_array($result,NULL,PGSQL_BOTH)){
	// si hay turnos, pillamos el ultimo para saber por donde vamos en el orden (saber el indice)
	
	//informacion importante para dados.php
	//(jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
	$_SESSION["jugador_turno_anterior"] = $rc['jugador_actual'];
	$key = array_search($_SESSION["jugador_turno_anterior"], $orden); 
	$_SESSION["indice"] = $key;
		
	$orden=$_SESSION["orden_jugadores"];
	$indice=(($_SESSION["indice"])+1) % ($_SESSION["n_jugadores"]);
			
		
	$_SESSION["jugador_actual"]=$orden[$indice];
	$_SESSION["jugador_siguiente"]=$orden[($indice+1)%$n_jugadores];
			
	// Free resultset
	pg_free_result($result);
	// Closing connection
	pg_close($dbconn);

			
	$dbconn2 = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
							         or die('Could not connect: ' . pg_last_error());			
	$result2 = pg_prepare($dbconn2, "my_query13", 'SELECT * FROM turno WHERE partida_id=$1 AND jugador_actual=$2 ORDER BY fecha DESC LIMIT 1 ');
		if (!$result2) {die("Can't prepare '$sql': " . pg_last_error());}
	$result2 = pg_execute($dbconn2, "my_query13", array($_SESSION["partida_id"],$_SESSION["jugador_id"]));
	
	if($rc2 = pg_fetch_array($result2,NULL,PGSQL_BOTH)){
	$_SESSION["casilla_id_actual"]=$rc2["casilla_id_futura"];
	}
	// Free resultset
	pg_free_result($result2);
	// Closing connection
	pg_close($dbconn2);
		
		
	
	$_SESSION["jugador_siguiente"] = $orden[($key+1)%$n_jugadores];
		
		
	if($_SESSION["jugador_siguiente"]==$_SESSION["jugador_id"]){
			
		}
		else{
	
			$_SESSION["MODO_ESPERA"]=1;
		}

	}



?>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" >
	<head>
 		<?php include("inc/meta.php"); ?>

		<title>Monopoly - Tablero - Partida <?php echo($_SESSION["partida_id"]); ?>- Sistemas Informaticos 1</title>
	</head>
	<body>
		
		<!-- STATUS BAR -->	
		<?php include('inc/navbar.php') ?>
		<div id="barra_superior"></div>
		
		<!-- TITULO -->
		<div id="titulo">
			<h1><a href="#control_panel">Monopoly - Partida <?php echo($_SESSION["partida_id"]);?> </a>
			</h1>
		</div>
		
		<div>

		
		</div>
		<!-- CONTENT -->
		<div id="content-top-shadow"></div>
		
		<div id="content">
			
			<!-- Tablero es pintar la consulta b
			casilla_id	estacion	nombre	precio	color	tipo	compania -->

			<div id="tablero">
			
				<!-- Imprimir cada casilla del tablero -->
				<?php
				$dbconn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
			         or die('Could not connect: ' . pg_last_error());
				// Performing SQL query
				$result = pg_prepare($dbconn, "my_query", "SELECT * FROM consultab");
				 if (!$result) {die("Can't prepare '$sql': " . pg_last_error());}
				$result = pg_execute($dbconn, "my_query",array());
				
				$numrows = pg_numrows($result);

				for ($i = 1; $i <= 40; $i++) {
					$row = pg_fetch_array($result, $i-1, PGSQL_BOTH);
				    
				    echo ("<div id=\"casilla_$i\">
				    		<div class=\"".$row['color']."_mini\">
				    		<div class=\"texto_casilla\">
				    			<div class=\"nombre_calle\">
				    				<h4>");
				    					echo($row['nombre']);
				    					echo($row['estacion']);
	    								echo($row['compania']);				    					

				    echo"</h4></div></div><span class=\"precio\">".$row["precio"]."</span><br></div></div>";
				}
					
					
					
				 // Free resultset
			    pg_free_result($result);
			     // Closing connection
			    pg_close($dbconn);
			

			   	
			   	// DIBUJAMOS LAS FICHAS DE LOS ULTIMOS JUGADORES (ESTADO ACTUAL DEL TABLERO)
			   	$dbconn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
			   	     or die('Could not connect: ' . pg_last_error());		

				// cargar los ultimos $_SESSION["numero_jugadores"] turnos de la partida con id=SESSION[partida_id]
				// para poder dibujar la posicion de las fichas de los jugadores.
				$result = pg_prepare($dbconn, "my_query3", 'SELECT jugador_actual, fecha, casilla_id_futura FROM turno WHERE partida_id=$2 ORDER BY fecha DESC LIMIT $1');
				 if (!$result) {die("Can't prepare '$sql': " . pg_last_error());}
				$result = pg_execute($dbconn, "my_query3", array($_SESSION["numero_jugadores"],$_SESSION["partida_id"]));
				$numrows = pg_numrows($result);				
				for ($i = 1; $i <= $numrows; $i++) {
					$row = pg_fetch_array($result, $i-1, PGSQL_BOTH);
				    
				    echo ('<div id="posicion_'.$row['casilla_id_futura'].'">
				    		<div class="fichi_jugador">
				    				<h4> jugador_id'.$row['jugador_actual'].'
										<img src="img/FichaBlue.png" />
				    				</h4> 
				    		</div>
				    	   </div>');
				}	
	
				 // Free resultset
			     pg_free_result($result);
			     			     	
			     // Closing connection
			     pg_close($dbconn);
			
			     ?>	
			
			</div>
			<?php	
			
			// informacion sobre la casilla actual del jugador que ha lanzado los dados o la informacion de donde quedo en el ultimo turno
			$dbconn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
			or die('Could not connect: ' . pg_last_error());		
	
			
			$result = pg_prepare($dbconn, "my_query4", 'SELECT * FROM consultab left join alquiler_aux on alquiler_aux.calle_id=consultab.casilla_id WHERE casilla_id= $1');
			if (!$result) {die("Can't prepare '$sql': " . pg_last_error());}
			$result = pg_execute($dbconn, "my_query4", array($_SESSION["casilla_id_actual"]));
			$numrows = pg_numrows($result);				

			
			$row = pg_fetch_array($result, 0, PGSQL_ASSOC);
			$_SESSION["alquiler_1_calle"]=$row["alquiler_1_calle"];
			$_SESSION["alquiler_todo_barrio"]=$row["alquiler_todo_barrio"];
			$_SESSION["alquiler_1_casa"]=$row["alquiler_1_casa"];
			$_SESSION["alquiler_2_casa"]=$row["alquiler_2_casa"];
			$_SESSION["alquiler_3_casa"]=$row["alquiler_3_casa"];
			$_SESSION["alquiler_4_casa"]=$row["alquiler_4_casa"];
			$_SESSION["alquiler_hotel"]=$row["alquiler_hotel"];
			$_SESSION["color"]=$row["color"];
			$_SESSION["casilla_id"]=$row["casilla_id"];
			$_SESSION["nombre"]=$row["nombre"];
			$_SESSION["precio"]=$row["precio"];
			$_SESSION["compania"]=$row["compania"];
			$_SESSION["estacion"]=$row["estacion"];

			$_SESSION["propiedad_id"]=$_SESSION["casilla_id_actual"];
				
		    pg_free_result($result);
		     			     	
		    // Closing connection
		    pg_close($dbconn);
			?>
			<?php
			if ($_SESSION["color"]) {
			?>
				<div id="casilla_actual">
				<div class="fondo_color">
				<div class="<?php echo $_SESSION["color"]; ?>">
					<span><?php echo $_SESSION["precio"]; ?>€</span>
					<span class="propiedad"> PROPIEDAD </span>
					<h4><?php echo $_SESSION["nombre"]; ?><?php echo $_SESSION["compania"]; ?><?php echo $_SESSION["estacion"]; ?></h4>				
				</div>
				</div>
				<div class="alquileres">
				<span class="alquiler">Alquiler <?php echo($_SESSION["alquiler_1_calle"]); ?>€</span><br/>
				<span class="alquiler_b">Alquiler Todo Barrio<?php echo($_SESSION["alquiler_todo_barrio"]); ?>€</span><br/>
				<span class="alquiler_1">Alquiler 1 casas <?php echo($_SESSION["alquiler_1_casa"]); ?>€</span><br/>
				<span class="alquiler_2">Alquiler 2 casas <?php echo($_SESSION["alquiler_2_casa"]); ?>€</span><br/>
				<span class="alquiler_3">Alquiler 3 casas <?php echo($_SESSION["alquiler_3_casa"]); ?>€</span><br/>
				<span class="alquiler_4">Alquiler 4 casas <?php echo($_SESSION["alquiler_4_casa"]); ?>€</span><br/>
				<span class="alquiler_hotel">Alquiler Hotel <?php echo($_SESSION["alquiler_hotel"]); ?>€</span><br/>
				</div>
				</div>
			<?php
			}
			?>	

					
			<!-- INFORMACION -->
			
			<!-- PAGE WRAPPER -->
			<div id="page-wrapper">
			
						<div id="jugadores">
								<!-- informacion de todos los jugadores -->
								<h4>Estado Actual Jugadores</h4>
								<?php 
								// ***************************************************************** DINERO JUGADOR
								$dbconn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
								     or die('Could not connect: ' . pg_last_error());
								$result = pg_prepare($dbconn, "my_query_estado", "SELECT  * FROM participacion WHERE partida_id=$1");
								 if (!$result) {die("Can't prepare '$sql': " . pg_last_error());}
								$result = pg_execute($dbconn, "my_query_estado",array($_SESSION["partida_id"]));

								$numrows = pg_numrows($result);

								for ($i = 1; $i <= $numrows; $i++) {
									$row = pg_fetch_array($result, $i-1, PGSQL_BOTH);

								    echo ("<div class=\"estado_actual_jugador\">");
								    					echo("jugador_".$row['jugador_id']);
								    					echo(" ".$row['nombre']);
								    					echo("dinero:  ".$row['dinero']."<br />");

								    echo"</div>";
								}
								
								//FREE
								pg_free_result($result);
								pg_close($dbconn);
								
								?>
						</div>
			
											
						<div id="opciones">
						<?php if (!$_SESSION["MODO_ESPERA"]): ?>
							
						<div id="dados">
							<?php
	
							if($_SESSION["dado_1"]){ //if they have pressed the submit button
							
								echo '<img src="./img/'.$_SESSION["dado_1"].'.png" />'; //echo the image for roll 1 of player 1
								echo '<img src="./img/'.$_SESSION["dado_2"].'.png" />'; //echo the image for roll 2 of player 1
								//si la posicion no tiene dueño, la opcion de comprar
								echo('<form action="insert_accion.php" method="POST" accept-charset="utf-8">
									<p><input type="submit" name="compra_propiedad" value="Comprar Propiedad"></p>
								');
								// si la casilla tiene dueño, hay que pagar alquiler
								echo('<p><input type="submit" name="alquiler" value="Pagar Alquiler"></p>
								');
								// finalizar turno
								echo('<p><input type="submit" name="fin_turno" value="Finalizar Turno"></p>
								');
								// si no tiene ni dueño ni puede ser comprarda, es otro tipo de casilla, impuesto 
								echo('
									<p><input type="submit" name="impuesto" value="Pagar Impueso"></p>
								</form>');
								
	
							
							}else{
						
							?>
							
							<form method="POST" action="dados.php">
							<input type="submit" name="submit_dice" value="Roll dice" />
							</form>
							<?php } ?>
						
						</div>
						<?php endif ?>
						
						
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
