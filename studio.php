<?php
session_start();
require 'functions.php';

if (!isset($_SESSION["username"])) {
    echo "<script>
            alert('Anda Belum Login, Silahkan Login Terlebih dahulu!');
            document.location.href = 'index.php#';
        </script>";
    // header("Location: index.php");
    return false;
}
$id = $_GET["id_artikel"];

// if (isset($_SESSION['username'])) {
//     header("Location: studio.php");
//     exit;
// }
if (isset($_POST['submit'])) {
    if (pesan_tiket($_POST) > 0) {
        echo "<script>
                  alert('Tiket berhasil dipesan!');
                  document.location.href = 'member.php';
                  </script>";
    } else {
        echo mysqli_error($conn);
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css" rel="stylesheet">
    <!-- my css -->
    <link rel="stylesheet" href="style.css">
    <!-- <link rel="stylesheet" href="coba.css"> -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Studio</title>
</head>

<body>
    <div class="container mb-5">
        <div class="row justify-content-center">
            <div class="col-10">
                <a href="tampil.php?id_artikel=<?= $id; ?>" class="btn btn-secondary mt-5 mb-3" style="float: right;">Back</a>
            </div>
        </div>
        <form action="" method="POST">
            <div class="row mt-5 justify-content-center">
                <div class="mb-3 col-5">
                    <input type="text" class="form-control" name="nama" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nama Lengkap">
                </div>
                <div class="mb-3 col-5">
                    <input type="date" class="form-control" name="tgl_pesan" id="date" aria-describedby="emailHelp">
                </div>
                <div class="mb-5 col-5">
                    <select class="form-select" name="jam" aria-label="Default select example">
                        <option selected>Pilih Jam Menonton</option>
                        <option value="15.00">15.00 WIB</option>
                        <option value="17.00">17.00 WIB</option>
                        <option value="19.00">19.00 WIB</option>
                        <option value="21.00">21.00 WIB</option>
                        <option value="23.00">23.00 WIB</option>
                    </select>
                </div>
            </div>
            <div class="row mt-6 justify-content-center">
                <div class="col-10">
                    <h1 style="text-align: center; color: white; background-color: black; height: 200px; line-height: 180px;">Layar Bioskop</h1>
                </div>
            </div>
            <div class="row mt-5 justify-content-center">
                <div class="col-9" style="text-align: center;">
                    <?php $chairs = query("SELECT * FROM kursi");
                    $i = 1; ?>
                    <?php foreach ($chairs as $chair) : ?>
                        <input type="radio" class="btn-check" name="options" id="option<?= $i; ?>" autocomplete="off" <?= $chair['is_active']; ?>>
                        <label class="btn btn-outline-secondary" for="option<?= $i++; ?>" style="width: 52px;"><?= $chair['nomor_kursi']; ?></label>
                    <?php endforeach; ?>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-2 text-center">
                    <button class="btn btn-primary mt-5 px-5" name="submit" type="submit">Pesan</button>
                </div>
            </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>

</body>

</html>