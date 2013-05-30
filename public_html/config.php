<?php
$db_hostname = "localhost";
$db_user = "alumnodbq";
$db_password = "mario";
$db_database = "c_9";

// Connecting, selecting database
$conn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
    or die('Could not connect: ' . pg_last_error());

// Performing SQL query
$query = 'SELECT alias, password FROM jugador';
$result = pg_query($query) or die('Query failed: ' . pg_last_error());



// Free resultset
//pg_free_result($result);

// Closing connection
//pg_close($conn);

?>

