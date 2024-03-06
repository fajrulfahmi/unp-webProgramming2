<h2 class="p-3 text-center">Navbar Management</h2>
<table class="table table-striped-columns text-center table-dark" style="width:100%">
    <thead>
        <tr>
            <th>ID Menu</th>
            <th>Menu</th>
            <th>Urutan</th>
            <th>ID Induk</th>
            <th>Tipe menu</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $sql = "SELECT * FROM tbmenu";
        $result = $db->query($sql);
        while ($res = $result->fetch()) :
        ?>
            <tr>
                <td><?php echo $res['id_menu']; ?></td>
                <td><?php echo $res['menu']; ?></td>
                <td><?php echo $res['urutan']; ?></td>
                <td><?php echo $res['id_induk']; ?></td>
                <td><?php echo ($res['id_induk'] == 0) ? "Menu Utama" : "Sub Menu"; ?></td>
                <td>
                    <a href="?menu=edit&id=<?php echo $res['id_menu']; ?>" class="btn btn-warning"><i class="bi bi-pencil-fill"></i></a>
                    <a onclick="if (confirm('Apakah Anda yakin menghapus data ini?')) { window.location.href = '?menu=delete&id=<?php echo $res['id_menu']; ?>'; }" class="btn btn-danger"><i class="bi bi-trash-fill"></i></a>
                </td>
            </tr>
        <?php endwhile ?>
    </tbody>
</table>
<a href="?menu=add" class="btn btn-success">Add Menu</a>