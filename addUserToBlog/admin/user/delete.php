<?php
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $del = "DELETE FROM tbuser WHERE id_user = " . $id;
    if ($db->query($del)) {
        echo '<script>alert("User berhasil dihapus");</script>';
        echo '<meta http-equiv="refresh" content="0;url=index.php?page=manage_user">';
    } else {
        echo '<script>alert("User gagal dihapus");</script>';
        echo '<meta http-equiv="refresh" content="0;url=index.php?page=manage_user">';
    }
} else {
    header("Location: index.php?page=manage_user");
}
