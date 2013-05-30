<?php
session_start();
session_unset();
session_destroy();
// Free resultset
pg_free_result($result);

// Closing connection
pg_close($dbconn);
header("Location: index.php");

if(session_destroy())
{
header("Location: index.php");
}
?>