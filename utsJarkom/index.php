<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Navbar Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
</head>

<?php
$dsn = "mysql:dbname=3a;host=localhost";
$user = "root";
$pass = "";

try {
    $db = new PDO($dsn, $user, $pass);
} catch (PDOException $e) {
    echo "gagal" . $e->getMessage();
}

$sql = "SELECT * FROM tbmenu WHERE id_induk = 0 ORDER BY urutan ASC";
$result = $db->query($sql);
?>

<body class="bg-secondary">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg bg-body-tertiary bg-primary" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <?php
                    while ($hasil_menu = $result->fetch()) {
                        $menu_utama = $hasil_menu['menu'];
                        $id_menu = $hasil_menu['id_menu'];
                        $cek = "select * from tbmenu where id_induk=" . $id_menu;
                        $res = $db->query($cek);
                        $jum_data = $res->rowCount();
                        // id menu 3 ada = 1 != 0
                        if ($jum_data != 0) { //punya submenu
                            echo "
                        <li class='nav-item dropdown'>
                        <a class='nav-link dropdown-toggle' href='#' role='button' data-bs-toggle='dropdown' aria-expanded='false'> $hasil_menu[menu]</a>
                        <ul class='dropdown-menu'>";
                            while ($hasil_submenu = $res->fetch()) {
                                $sub_menu = $hasil_submenu['menu'];
                                echo "<li><a class='dropdown-item' href='#'>$sub_menu</a></li>";
                            }
                            echo "</ul></li>";
                        } else {
                            echo "<li class = 'nav-item'><a class='nav-link' aria-current='page' href='#'>$menu_utama</a></li>";
                        }
                    }
                    ?>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card" style="border : none;">
                    <div class=" card-body bg-dark text-white">
                        <?php
                        $menu = isset($_GET['menu']) ? $_GET['menu'] : 'read';

                        switch ($menu) {
                            case "add":
                                include "create.php";
                                break;
                            case "edit":
                                include "update.php";
                                break;
                            case "delete":
                                include "delete.php";
                                break;
                            default:
                                include "read.php";
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>