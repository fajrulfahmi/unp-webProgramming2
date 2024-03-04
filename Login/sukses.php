<?php
session_start();

// Memeriksa apakah user sudah login
if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Sukses</title>
</head>
<body>
    <h2>Selamat datang, <?php echo $_SESSION['username']; ?>!</h2>
    <p>Ini adalah halaman sukses. Anda berhasil login.</p>
    <a href="login.php">Logout</a>
</body>
</html>
