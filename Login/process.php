<?php
session_start();

// Username dan password Admin
$admin_username = "Admin";
$admin_password = "password123";

// Mengambil data dari form login
$username = $_POST['username'];
$password = $_POST['password'];

// Memeriksa apakah username dan password sesuai dengan yang diharapkan
if ($username == $admin_username && $password == $admin_password) {
    // Jika sesuai, set session dan redirect ke halaman sukses
    $_SESSION['username'] = $username;
    header("Location: sukses.php");
} else {
    // Jika tidak sesuai, kembali ke halaman login dengan pesan error
    $_SESSION['login_error'] = "Username atau password salah.";
    header("Location: login.php");
}
?>
