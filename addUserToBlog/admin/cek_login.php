<?php
session_start();
include '../connect_pdo.php';

if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM tbuser WHERE username = '$username' AND password = '$password'";

    $res = $db->query($sql);
    $cekdata = $res->rowCount();
    if ($cekdata != 0) {
        $row = $res->fetch();
        $_SESSION['admin'] = "1";
        $_SESSION['hak_akses'] = $row['hak_akses'];
        header("Location: index.php");
        exit();
    } else {
        header("Location: login.php?error=" . date('hms'));
        exit();
    }
}
