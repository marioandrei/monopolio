<?php 
session_start();

if($_POST['submit_dice']){ //if they have pressed the submit button
	$_SESSION["player1roll1"] = rand(1,6);
	$_SESSION["player1roll2"]= rand(1,6);
	$_SESSION["player1sum"]= $_SESSION["player1roll1"]+$_SESSION["player1roll2"];


	
	$_SESSION["dado_1"] = $_SESSION["player1roll1"];
	$_SESSION["dado_2"] = $_SESSION["player1roll2"];
	if (	$_SESSION["dado_1"]==	$_SESSION["dado_2"]) {
		$_SESSION["jugador_siguiente"] = $_SESSION["jugador_actual"];
	}
	$_SESSION["casilla_id_futura"]=($_SESSION["casilla_id_actual"]+$_SESSION["dado_1"]+$_SESSION["dado_2"])%40;
	if ($_SESSION["casilla_id_futura"]==0) {
		$_SESSION["casilla_id_futura"]=40;
	}
	// Connecting, selecting database
	$dbconn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
	or die('Could not connect: ' . pg_last_error());
	
	// insertar nuevo jugador en tabla, crear nueva participacion y actuaizar partida.numero_jugadores
	$result = pg_prepare($dbconn, "my_query_insertar", "INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura)
				values(nextval('turno_seq'),$1,$2,$3,$4,$5,$6,$7)");
	//			$result = pg_execute($dbconn, "my_query_", array(1,2,$_SESSION["dado_1"],$_SESSION["dado_2"],1,	$_SESSION["casilla_id_futura"],$_SESSION["casilla_id_futura"]+$_SESSION["dado_1"]+$_SESSION["dado_2"]));
	$result = pg_execute($dbconn, "my_query_insertar", array($_SESSION["jugador_actual"],
															$_SESSION["jugador_siguiente"],
															$_SESSION["dado_1"],
															$_SESSION["dado_2"],
															$_SESSION["partida_id"],
															$_SESSION["casilla_id_actual"],
															$_SESSION["casilla_id_futura"]));
	
	pg_free_result($result);
	pg_close($dbconn);

			
	header("Location: tablero.php?partida_id=1");


}

?>
