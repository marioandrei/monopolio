<?php session_start();

if ($_REQUEST["compra_propiedad"]) {

	// INSERTAR COMPRA DE PROPIEDAD
	$dbconn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
	or die('Could not connect: ' . pg_last_error());
	$result = pg_prepare($dbconn, "my_query_compra_p", "INSERT INTO compra_propiedad(compra_propiedad_id,propiedad_id,precio)
														values(nextval('compra_propiedad_seq'),$1,$2);");
	$result = pg_execute($dbconn, "my_query_compra_p", array(	$_SESSION["propiedad_id"],
																$_SESSION["precio"]));

	pg_free_result($result);

	// INSERTAR NUEVO MOVIMIENTO 
	$saldo=0-$_SESSION["precio"];
	$result = pg_prepare($dbconn, "my_query_insertar", "INSERT INTO movimiento(movimiento_id,
																				turno_id,
																				compra_propiedad_id, 
																				saldo, 
																				pertenece_a_partida,
																				dinero_jugador_actual)
														values(nextval('movimiento_seq'),$1,currval('compra_propiedad_seq'),$2,$3)");
	$result = pg_execute($dbconn, "my_query_insertar", array($_SESSION["turno_id"],
															$saldo,
															$_SESSION["partida_id"],
															$_SESSION["dinero_jugador_actual"]));

	pg_free_result($result);
	pg_close($dbconn);

		
	header("Location: tablero.php");

}
if ($_REQUEST["alquiler"]) {

	// INSERTAR COMPRA DE PROPIEDAD
	$dbconn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
	or die('Could not connect: ' . pg_last_error());
	$result = pg_prepare($dbconn, "my_query_compra_p", "INSERT INTO alquiler(compra_propiedad_id,propiedad_id,precio)
														values(nextval('compra_propiedad_seq'),$1,$2);");
	$result = pg_execute($dbconn, "my_query_compra_p", array(	$_SESSION["propiedad_id"],
																$_SESSION["precio"]));

	pg_free_result($result);

	// INSERTAR NUEVO MOVIMIENTO 

	$result = pg_prepare($dbconn, "my_query_insertar", "INSERT INTO movimiento(movimiento_id,
																				turno_id,
																				compra_propiedad_id, 
																				compra_casa_id, 
																				compra_hotel_id,
																				impuesto_id,
																				alquiler_id,
																				saldo, 
																				pertenece_a_partida,
																				dinero_jugador_actual)
														values(nextval('movimiento_seq'),$1,currval('compra_propiedad_seq'),$2,$3,$4,$5,$6)");
	$result = pg_execute($dbconn, "my_query_insertar", array($_SESSION["turno_id"],
															$_SESSION["compra_casa_id"],
															$_SESSION["compra_hotel_id"],
															$_SESSION["impuesto_id"],
															$_SESSION["alquiler_id"],
															$_SESSION["saldo"],
															$_SESSION["partida_id"],
															$_SESSION["dinero_jugador_actual"]));

	pg_free_result($result);
	pg_close($dbconn);

		
	header("Location: tablero.php");

}
if ($_REQUEST["fin_turno"]) {
	# code...
}
if ($_REQUEST["impuesto"]) {
	# code...
}
if ($_REQUEST["compra_casa"]) {
	# code...
}
if ($_REQUEST["compra_hotel"]) {
	# code...
}


?>
