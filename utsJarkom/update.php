<?php
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    if (isset($_POST['submit'])) {
        $id_menu = $_POST['id_menu'];
        $menu = $_POST['menu'];
        $urutan = $_POST['urutan'];
        $id_induk = $_POST['id_induk'];

        $sql = "UPDATE tbmenu 
        SET menu = '$menu', urutan = '$urutan', id_induk = '$id_induk' 
        WHERE id_menu = '$id_menu' ";

        if ($db->query($sql)) {
            header("Location: index.php");
        }
    }
} else {
    header("Location: index.php");
}

?>
<h2 class="p-3 text-center">Edit Navbar</h2>
<?php
$sql = "SELECT * FROM tbmenu WHERE id_menu = " . $id;
$res = $db->query($sql);
$row = $res->fetch();
?>
<form method="POST" action="">
    <div class="form-group">
        <label for="id_menu">Nama Menu</label>
        <input type="text" class="form-control" name="menu" value="<?php echo $row['menu']; ?>" required>
    </div>
    <div class="form-group">
        <label for="urutan">Urutan</label>
        <input type="number" class="form-control" name="urutan" value="<?php echo $row['urutan']; ?>" required>
    </div>
    <div class="form-group">
        <label for="urutan">ID Induk</label>
        <input type="number" class="form-control" name="id_induk" value="<?php echo $row['id_induk']; ?>" required>
    </div>
    <div class="form-group mt-2 mb-4">
        <input type="hidden" class="form-control" name="id_menu" value="<?php echo $row['id_menu']; ?>" required>
        <button class="btn btn-danger" name="submit" type="submit"><a href="index.php" style="text-decoration:none; color : white;"><i></i> Kembali</a></button>
        <button class="btn btn-success" name="submit" type="submit">Update</button>
    </div>
</form>