<?php

$pg_host = "localhost";
$pg_port = "5432";
$pg_dbname = "testdb";
$pg_user = "postgres";
$pg_password = "postgres";
// $pg_password = "123456789";


// MISDB
// $pg_host = "localhost";
// $pg_port = "5432";
// $pg_dbname = "budgetsys";
// $pg_user = "misdev";
// $pg_password = "misdev1234";

// 

$pg_connection = pg_connect("host=$pg_host port=$pg_port dbname=$pg_dbname user=$pg_user password=$pg_password");

if (!$pg_connection) {
    die("Failed to connect to the database");
}

?>