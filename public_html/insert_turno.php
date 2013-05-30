<?php 
//INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura,coge_tarjeta)
//			values(nextval('turno_seq'),5,6,5,5,currval('partida_seq'),7,17,nextval('siguiente_tarjeta_s_seq'));

session_start();

function insert_turno() {
	

// Connecting, selecting database
$dbconn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
    or die('Could not connect: ' . pg_last_error());

$result = pg_prepare($dbconn, "my_query", "INSERT INTO turno(turno_id,jugador_actual, jugador_siguiente, dado_1, dado_2,partida_id,casilla_id_actual, casilla_id_futura,coge_tarjeta) VALUES(nextval('turno_seq'), $1,$2,$3,$4,$5,$6,$7,nextval('siguiente_tarjeta_s_seq')");
$result = pg_execute($dbconn, "my_query", array($_SESSION["jugador_actual"], $_SESSION["jugador_siguiente"],$_SESSION["dado_1"],$_SESSION["dado_2"],$_SESSION["partida_id"],$_SESSION["casilla_id_actual"],$_SESSION["casilla_id_actual"]+$_SESSION["dado_1"]+$_SESSION["dado_2"]));

echo "EL turno fue insertado exitosamente en la base de datos.";
			
// Free resultset
pg_free_result($result);

// Closing connection
pg_close($dbconn);

}
?>	