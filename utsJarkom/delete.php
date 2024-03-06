<?php
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $sql = "SELECT * FROM tbmenu WHERE id_induk = " . $id;
    $query = $db->query($sql);
    $isHaveSubMenu = $query->rowCount();

    if ($isHaveSubMenu == 1) {
        echo '<script>alert("Tidak dapat menghapus karena mempunyai sub menu");</script>';
        echo '<meta http-equiv="refresh" content="0;url=index.php">';
    } else {
        $del = "DELETE FROM tbmenu WHERE id_menu = " . $id;
        if ($db->query($del)) {
            echo '<script>alert("Berhasil menghapus menu");</script>';
            echo '<meta http-equiv="refresh" content="0;url=index.php">';
        } else {
            echo '<script>alert("Gagal menghapus menu");</script>';
            echo '<meta http-equiv="refresh" content="0;url=index.php">';
        }
    }
} else {
    header("Location: index.php");
}
