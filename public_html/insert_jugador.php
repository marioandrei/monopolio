<?php 

session_start();

// Connecting, selecting database
$dbconn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
    or die('Could not connect: ' . pg_last_error());

// insertar nuevo jugador en tabla, crear nueva participacion y actuaizar partida.numero_jugadores
$result = pg_prepare($dbconn, "my_query", 'INSERT INTO jugador VALUES(nextval(\'jugador_seq\'), $1,$2,$3)');
$result = pg_execute($dbconn, "my_query", array($_REQUEST["nombre_registro"],$_REQUEST["alias_registro"],$_REQUEST["password_registro"]));

echo "The user data was successfully added to your database.";
sleep(10);
header("Location: controlpanel.php");

// Free resultset
pg_free_result($result);

// Closing connection
pg_close($dbconn);
?>	