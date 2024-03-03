<?php

if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $hak_akses = $_POST['hak_akses'];

    // cek penggunaan username
    $sql_username = "SELECT username FROM tbuser WHERE username = '$username'";
    $query = $db->query($sql_username);
    $cek_username = $query->rowCount();

    if ($cek_username != 0) {
        header("Location: ?page=manage_user&action=add&error=username&date=");
    } else {
        $sql = "INSERT INTO tbuser (username, password, hak_akses) 
    VALUES ('$username', '$password', '$hak_akses')";

        if ($db->query($sql)) {
            header("Location: ?page=manage_user&action=add&error=no_error&date=");
        } else {
            header("Location: ?page=manage_user&action=add&error=add&date=");
        }
    }
}
?>
<h3 class="text-center">Tambah User</h3>
<form action="" method="post">
    <?php
    if (isset($_GET['error'])) {
        $error = $_GET['error'];
        if ($error == "username") {
            echo '<div class="alert alert-danger" role="alert">
                   Username sudah digunakan
                    </div>';
        } else if ($error == "add") {
            echo '<div class="alert alert-danger" role="alert">
                   Gagal menambahkan user
                    </div>';
        } else if ($error == "no_error") {
            echo '<div class="alert alert-success" role="alert">
                   Username telah ditambahkan
                    </div>';
        }
    }
    ?>
    <div class="form-group mb-2">
        <label for="username">Username</label>
        <input type="text" name="username" id="username" class="form-control" placeholder="" required>
    </div>
    <div class="form-group mb-2">
        <label for="Password">Password</label>
        <input type="password" name="password" id="password" class="form-control" placeholder="" required>
    </div>
    <div class="form-group mb-2">
        <label for="Hak Akses">Hak Akses</label>
        <select name="hak_akses" id="hak_akses" class="form-select" required>
            <option value=""></option>
            <option value="1">1</option>
            <option value="2">2</option>
        </select>
    </div>

    <div class="form-group mb-5">
        <button class="btn btn-danger" name="submit" type="submit"><a href="index.php?page=manage_user" style="text-decoration:none; color : white;"><i></i> Kembali</a></button>
        <button type="submit" class="btn btn-success" name="submit">Tambah</button>
    </div>
</form>