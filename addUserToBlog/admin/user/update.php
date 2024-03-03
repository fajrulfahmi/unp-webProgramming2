<?php
if (isset($_GET['id'])) {
    $id = $_GET['id'];
} else {
    header("Location: index.php?page=manage_user");
    exit();
}

if (isset($_POST['submit'])) {
    $id_user = $_POST['id_user'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $hak_akses = $_POST['hak_akses'];

    $sqlUsername = "SELECT username FROM tbuser WHERE id_user = '$id_user'";
    $queryUsername = $db->query($sqlUsername);
    $rowUsername = $queryUsername->fetch();

    // Cek persamaan username didatabase
    if ($username != $rowUsername['username']) {
        $sql_username = "SELECT username FROM tbuser WHERE username = '$username'";
        $query = $db->query($sql_username);
        $cek_username = $query->rowCount();

        if ($cek_username != 0) {
            header("Location: ?page=manage_user&action=edit&id=" . $id . "&error=username&date=");
            exit();
        }
    }

    //update hak akses
    $sql = "UPDATE tbuser SET username = '$username', password = '$password', hak_akses = '$hak_akses' WHERE id_user = '$id_user' ";

    if ($db->query($sql)) {
        header("Location: ?page=manage_user&action=edit&id=" . $id . "&error=no_error&date=");
    } else {
        header("Location: ?page=manage_user&action=edit&id=" . $id . "&error=edit&date=");
    }
}

?>
<h3 class="text-center">Edit User</h3>
<form action="" method="post">
    <?php
    if (isset($_GET['error'])) {
        $error = $_GET['error'];
        if ($error == "username") {
            echo '<div class="alert alert-danger" role="alert">
                   Username sudah ada di database
                    </div>';
        } else if ($error == "edit") {
            echo '<div class="alert alert-danger" role="alert">
                   Gagal update data user
                    </div>';
        } else if ($error == "no_error") {
            echo '<div class="alert alert-success" role="alert">
                   Berhasil update data user
                    </div>';
        }
    }
    ?>
    <?php
    $sql = "SELECT * FROM tbuser WHERE id_user = " . $id;
    $res = $db->query($sql);
    $row = $res->fetch();
    ?>
    <div class="form-group mb-2">
        <label for="username">Username</label>
        <input type="text" name="username" id="username" class="form-control" value="<?php echo $row['username']; ?>" required>
    </div>
    <div class="form-group mb-2">
        <label for="password">Password</label>
        <input type="password" name="password" id="password" class="form-control" placeholder="" required>
    </div>
    <div class="form-group mb-2">
        <label for="hak_akses">Hak Akses</label>
        <select name="hak_akses" id="hak_akses" class="form-select" required>
            <option value=""></option>
            <option value="1">1</option>
            <option value="2">2</option>
        </select>
    </div>

    <div class="form-group mb-5">
        <input type="hidden" name="id_user" id="id_user" class="form-control" value="<?php echo $row['id_user']; ?>" required>
        <button class="btn btn-danger" name="submit" type="submit"><a href="index.php?page=manage_user" style="text-decoration:none; color : white;"><i></i> Kembali</a></button>
        <button type="submit" class="btn btn-success" name="submit">Update</button>
    </div>
</form>