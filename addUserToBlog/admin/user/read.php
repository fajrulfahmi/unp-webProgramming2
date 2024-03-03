<a href="?page=manage_user&action=add" class="btn btn btn-success mb-3">Tambah User</a>
<table id="datatablesSimple" class="text-center">
    <thead>
        <th>No</th>
        <th>Username</th>
        <th>Hak Akses</th>
        <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $no = 1;
        $sql = "SELECT id_user, username, hak_akses FROM tbuser";
        $query = $db->query($sql);
        while ($res = $query->fetch()) {
        ?>
            <tr>
                <td><?php echo $no++; ?></td>
                <td><?php echo $res['username']; ?></td>
                <td><?php echo $res['hak_akses']; ?></td>
                <td>
                    <a href="?page=manage_user&action=edit&id=<?php echo $res['id_user']; ?>" class="btn btn-warning">Edit</a>
                    <a onclick="if (confirm('Hapus User?')) { window.location.href='?page=manage_user&action=delete&id=<?php echo $res['id_user']; ?>'; }" class="btn btn-danger">Hapus</i></a>
                </td>
            </tr>
        <?php } ?>
    </tbody>
</table>