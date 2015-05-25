<?php

// server info
$server = 'mysql10.000webhost.com';
$user = 'a3630301_talusan';
$pass = 'br00dling!';
$db = 'a3630301_shrimp';

// connect to the database
$mysqli = new mysqli($server, $user, $pass, $db);

// show errors (remove this line if on a live site)
mysqli_report(MYSQLI_REPORT_ERROR);

?>