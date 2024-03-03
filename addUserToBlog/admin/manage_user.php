<?php
if (isset($_SESSION['hak_akses']) && $_SESSION['hak_akses'] != 1) {
    header("Location: index.php");
    exit();
}
if (isset($_GET['action'])) {
    $action = $_GET['action'];
} else {
    $action = '';
}
?>
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid px-4">
            <h1 class="mt-4">Manage User</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                <li class="breadcrumb-item active">Manage User</li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">
                    <?php
                    switch ($action) {
                        case "add":
                            include "user/create.php";
                            break;
                        case "edit":
                            include "user/update.php";
                            break;
                        case "delete":
                            include "user/delete.php";
                            break;
                        default:
                            include "user/read.php";
                            break;
                    }
                    ?>
                </div>
            </div>
        </div>
    </main>