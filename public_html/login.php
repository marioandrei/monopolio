<?php 

session_start();

//Nombre y contraseña introducida por el usuario
$_SESSION["username"]=$_REQUEST["loginusername"];
$_SESSION["password"]=$_REQUEST["loginpassword"];

//$_SESSION["username"]=$_POST["username"];
//$_SESSION["password"]=$_POST["password"];
error_reporting(0);

$myusername=$_SESSION["username"]; 
$mypassword=$_SESSION["password"]; 


echo($myusername);
// Connecting, selecting database
$conn = pg_connect('host=localhost dbname=c_9 password='.$_SESSION["mypassword"].' user=alumnodb ')
    or die('Could not connect: ' . pg_last_error());

// Performing SQL query
$result = pg_prepare($conn, "my_query", 'SELECT * FROM jugador WHERE jugador.alias = $1 AND jugador.password = $2');
$result = pg_execute($conn, "my_query", array($myusername,$mypassword));

//Si existe el usuario
if ($rc = pg_fetch_array($result,NULL,PGSQL_ASSOC)){
pg_free_result($result);
pg_close($conn);


$_SESSION["jugador_id"] = $rc['jugador_id'];
$_SESSION["nombre_jugador"] = $rc['nombre'];
$_SESSION["password"] = $rc['password'];
$_SESSION["alias"] = $rc['alias'];
$_SESSION["privilegios"] = $rc['privilegios'];

session_register("myusername");

$_SESSION['login_user']=$myusername;
pg_free_result($result);
pg_close($conn);

header("Location: controlpanel.php");
}
else
{
pg_free_result($result);
pg_close($conn);
header("Location: index.php?flag=1");
}
?>
