<?php 

session_start();

// Connecting, selecting database
$dbconn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
    or die('Could not connect: ' . pg_last_error());

// insertar nuevo jugador en tabla, crear nueva participacion y actuaizar partida.numero_jugadores
$result = pg_prepare($dbconn, "my_query", 'INSERT INTO partida (numero_jugadores) VALUES($1)');
$result = pg_execute($dbconn, "my_query", array($_POST["num_jugadores"]));


$result = pg_prepare($dbconn, "my_query1", 'SELECT * FROM partida ORDER BY fecha DESC LIMIT 1 ');
 if (!$result) {die("Can't prepare '$sql': " . pg_last_error());}
$result = pg_execute($dbconn, "my_query1", array());


$rc = pg_fetch_array($result,NULL,PGSQL_BOTH);
$_SESSION["nueva_partida_creada"]=$rc["partida_id"];
$_SESSION["num_jugadores"]=$_POST["num_jugadores"];	   	

			
// Free resultset
pg_free_result($result);

// Closing connection
pg_close($dbconn);
header("Location: nuevapartida.php");
?>


