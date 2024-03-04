<?php
// cek jika halaman disubmit
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $username = 'admin';
    $password = 'admin';

    $input_username = $_POST['username'];
    $input_password = $_POST['password'];

    if ($input_username == $username && $input_password == $password) {
        header("Location: success.php");
    } else {
        header("Location: failed.php");
    }
} else {
    // Jika halaman diakses secara langsung tanpa melalui form
    header("Location: ../index.php");
}
?>