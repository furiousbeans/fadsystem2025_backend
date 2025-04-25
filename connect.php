<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, GET");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

$pg_host = "localhost";
$pg_port = "5432";
$pg_dbname = "testdb";
$pg_user = "postgres";
$pg_password = "postgres";


// MISDB
// $pg_user = "misdev";
// $pg_password = "misdev1234";


// $pg_connection = pg_connect("host=$pg_host port=$pg_port dbname=$pg_dbname user=$pg_user password=$pg_password");

// if (!$pg_connection) {
//     die("Failed to connect to the database");
// }

try {
    $pdo = new PDO("pgsql:host=$pg_host;dbname=$pg_dbname", $pg_user, $pg_password, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]);
} catch (PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
}

?>