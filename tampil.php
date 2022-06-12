<?php
session_start();

require 'functions.php';

// if (!isset($_SESSION["username"])) {
//     header("Location: index.php");
//     exit;
// }
// ambil data di URL
$id = $_GET["id_artikel"];

// query data mahasiswa berdasarkan id
$movie = query("SELECT * FROM movies WHERE id_artikel = $id")[0];
?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-10">
                <a href="member.php" class="btn btn-secondary mt-5 mb-3" style="float: right;">Back</a>
            </div>
        </div>
        <div class="row g-0 mt-5">
            <div class="col-md-4">
                <img src="img/<?= $movie['gambar']; ?>" class="img-fluid rounded-start" style="width: 80%;" alt="...">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title text-uppercase"><?= $movie['judul_artikel']; ?></h5>
                    <p class="card-text"><?= $movie['deskripsi']; ?></p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
<<<<<<< HEAD
                    <a href="studio.php?id_artikel=<?= $movie['id_artikel'] ?>" class="btn btn-primary col-2">Pesan</a>
=======
                    <a href="studio.php?id_artikel=<?= $movie['id_artikel']?>" class="btn btn-primary col-2">Pesan</a>
>>>>>>> e7320acec8c9b7cf919440dd6d505479d369c557
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>

</html>