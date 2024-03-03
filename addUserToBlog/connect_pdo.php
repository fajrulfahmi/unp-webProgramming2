<?php

$dsn = "mysql:dbname=3a;host=localhost";
$user = "root";
$pass = "";

try {
	$db = new PDO($dsn, $user, $pass);
} catch (PDOException $e) {
	echo "gagal" . $e->getMessage();
}
