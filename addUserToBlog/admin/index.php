<?php
session_start();
// mengatasi warning: Cannot modify header information - headers already sent
ob_start(); // Mulai buffering

include "../connect_pdo.php";

if (!isset($_SESSION['admin']) || $_SESSION['admin'] != "1") {
    header("Location: login.php");
    exit();
}

if (isset($_GET['page'])) {
    $page = $_GET['page'];
} else {
    $page = '';
}

include "header.php";
include "sidebar.php";

switch ($page) {
    case "coba":
        include "coba.php";
        break;
    case "manage_user":
        include "manage_user.php";
        break;
    default:
        include "dashboard.php";
        break;
}

include "footer.php";

ob_end_flush(); // Akhiri buffering dan kirim output ke browser
