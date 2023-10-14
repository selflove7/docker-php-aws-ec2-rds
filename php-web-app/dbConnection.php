<?php
require '/var/www/html/php-web-app/config.php';

$databaseHost = Config::$dbHost;
$databaseName = Config::$dbName;
$databaseUsername = Config::$dbUsername;
$databasePassword = Config::$dbPassword;

// Open a new connection to the MySQL server
$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName, 3306); 
