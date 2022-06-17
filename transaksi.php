<?php
require 'functions.php';
session_start();
if (isset($_SESSION['login'])) {
    header("Location: member.php");
    exit;
}

if (!isset($_SESSION["username"])) {
    header("Location: index.php");
    exit;
}

// $username = $_GET['id_member'];

// $id_member = query("SELECT tiket.id_member, register.username from tiket join register on register.id_member = tiket.id_member where register.username = $username");
// var_dump($id_member);
// exit;
$tiketing = query("SELECT register.username, log_transaksi.id_tiket, log_transaksi.nama_pemesan, log_transaksi.log_tanggal, log_transaksi.log_waktu, kursi.nomor_kursi, movies.judul_artikel from log_transaksi JOIN kursi on kursi.id_kursi=log_transaksi.log_id_kursi JOIN movies on movies.id_artikel=log_transaksi.log_id_artikel join register on register.id_member = log_transaksi.log_id_member where register.username = '$_SESSION[username]'");
// var_dump($tiketing);
// exit;
?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tiket Box</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>

<body>
    <div class="container mt-5">
        <div class="shadow p-3 mb-5 bg-body rounded mt-5 border rounded pb-5">
            <div class="row">
                <div class="col">
                    <a href="admin.php" class="btn btn-secondary mt-3 mb-3">Back</a>
                </div>
            </div>
            <table class="table text-center">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nama Pemesan</th>
                        <th scope="col">Tanggal Pesanan</th>
                        <th scope="col">Waktu Pesanan</th>
                        <th scope="col">Judul Film Film</th>
                        <th scope="col">Kode Kursi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1 ?>
                    <?php foreach ($tiketing as $tiket) : ?>
                        <tr>
                            <th scope="row"><?= $i++; ?></th>
                            <td class="text-start"><?= $tiket['nama_pemesan']; ?></td>
                            <td class="text-start"><?= $tiket['log_tanggal']; ?></td>
                            <td><?= $tiket['log_waktu']; ?></td>
                            <td><?= $tiket['judul_artikel']; ?></td>
                            <td class="text-center"><?= $tiket['nomor_kursi']; ?></td>
                        </tr>
                    <?php endforeach ?>

                </tbody>
            </table>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>

</html>