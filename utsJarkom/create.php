<?php
if (isset($_POST['submit'])) {
    $menu = $_POST['menu'];
    $urutan = $_POST['urutan'];
    $id_induk = $_POST['id_induk'];

    $sql = "INSERT INTO tbmenu (menu, urutan, link, id_induk, target) 
    VALUES ('$menu', '$urutan', '', '$id_induk', '')";

    if ($db->query($sql)) {
        header("Location: index.php");
    }
}
?>
<h2 class="p-2 text-center">Add Navbar</h2>
<form method="POST" action="">
    <div class="form-group">
        <label for="id_menu">Nama Menu</label>
        <input type="text" class="form-control" name="menu" placeholder="" required>
    </div>
    <div class="form-group">
        <label for="urutan">Urutan</label>
        <input type="number" class="form-control" name="urutan" placeholder="" required>
    </div>
    <div class="form-group">
        <label for="urutan">ID Induk</label>
        <input type="number" class="form-control" name="id_induk" placeholder="" required>
    </div>
    <div class="form-group mt-2 mb-4">
        <button class="btn btn-danger" name="submit" type="submit"><a href="index.php" style="text-decoration:none; color : white;"><i></i> Kembali</a></button>
        <button class="btn btn-success" name="submit" type="submit">Submit</button>
    </div>
</form>