<?php 

session_start();

$i=1;


while ($i<=$_SESSION["num_jugadores"]){
// Connecting, selecting database
$dbconn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
    or die('Could not connect: ' . pg_last_error());

// insertar nuevo jugador en tabla, crear nueva participacion y actuaizar partida.numero_jugadores
$result = pg_prepare($dbconn, "my_query", 'INSERT INTO participacion (partida_id,jugador_id,orden) VALUES($1,$2,$3)');
$result = pg_execute($dbconn, "my_query", array($_SESSION["nueva_partida_creada"],$_POST["jugador_$i"],$i));

$i++;
// Free resultset
pg_free_result($result);

// Closing connection
pg_close($dbconn);


}



header("Location: controlpanel.php?nueva_partida_creada=1");
?>


