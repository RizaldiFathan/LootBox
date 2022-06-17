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

$id_member = query("SELECT id_member From register where username='$_SESSION[username]'");

?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <!-- my css -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">


    <!-- fonts -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Fugaz+One&display=swap" rel="stylesheet">

    <title>LootBox | Login</title>
</head>

<body>
    <!-- navigasi -->
    <nav class="navbar navbar-expand-lg navbar-light" id="navArea">
        <div class="container">
            <a class="navbar-brand" href="#">LootBox</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav ml-auto">
                    <a class="nav-item nav-link" href="#">Home</a>
                    <a class="nav-item active" href="eventMember.php">Movies</a>
                    <a class="nav-item active" href="transaksi.php?id_member=<?= $_SESSION["username"]?>">Transaksi</a>
                    <a class="nav-item active" href="#info">About</a>
                    <a class="btn btn-warning tombol" href="logout.php">LOGOUT</a>
                </div>
            </div>
        </div>
    </nav>

    <!-- jumbotron -->
    <div class="jumbotron">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col">
                    <div class="row">
                        <div class="col">
                            <h1 class="display-5"><span>AMAZING</span> Platform <br> With New <span>CINEMATIC EXPERINCE</h1>
                            <a class="btn btn-secondary tombol" href="#movie">View More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- container -->
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-10 info-panel">
                <div class="row">
                    <div class="col-lg">
                        <a href="#">
                            <img src="img/horor.png" alt="path" class="float-left" width="59px">
                            <h4>HOROR</h4>
                            <p>Believe nothing you hear, and only one half that you see.</p>
                        </a>
                    </div>
                    <div class="col-lg">
                        <a href="">
                            <img src="img/action.png" alt="bola" class="float-left" width="59px">
                            <h4>ACTION</h4>
                            <p>Life's a journey tobe experienced, not a problem tobe solved</p>
                        </a>
                    </div>
                    <div class="col-lg">
                        <a href="">
                            <img src="img/drama.png" alt="path" class="float-left" width="59px">
                            <h4>DRAMA</h4>
                            <p>You have nothing to fear, if you have nothing to hide.</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- <div class="penutup"> -->
    <div class="container">
        <div class="container post">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="row">
                        <?php $movies = query("SELECT * FROM movies"); ?>
                        <?php foreach ($movies as $movie) : ?>
                            <div class="col-lg-6 kotak">
                                <div class="card mb-3" style="max-width: 540px;">
                                    <div class="row g-0">
                                        <div class="col-md-4">
                                            <img src="img/<?= $movie['gambar']; ?>" class="img-fluid rounded-start" alt="Card image cap">
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body">
                                                <h5 class="card-title text-uppercase"><?= $movie['judul_artikel']; ?></h5>
                                                <p class="card-text"><?php $desc = substr($movie['deskripsi'], 0, 90);
                                                                        echo $desc . "..." ?></p>
                                                <div class="row">
                                                    <div class="col">
                                                        <p class="card-text"><small class="text-muted"><?= $movie['kategori']; ?></small></p>
                                                    </div>
                                                    <div class="col">
                                                        <p class="card-text" style="text-align: right;"><small class="text-muted"><?= $movie['rating']; ?></small><img src="img/star.png" class="ml-1" alt="" style="width: 12px;"></p>

                                                    </div>
                                                </div>
                                                <?php foreach ($id_member as $member) : ?>

                                                    <a type="button" href="tampil.php?id_artikel=<?= $movie['id_artikel']; ?>&id_member=<?= $member['id_member']; ?>" class="btn btn-outline-secondary mt-1">Tampil</a>

                                                <?php endforeach ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer mt-auto py-3" id="info">
        <div class="main-content">
            <div class="left box">
                <h2>About us</h2>
                <div class="content">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto reprehenderit vel facere adipisci natus sint? Praesentium quam autem assumenda quis eaque eius debitis dignissimos sequi unde. Dolor eos, exercitationem ipsum libero quis quibusdam odit, odio soluta, inventore iste vero impedit hic nostrum delectus esse optio autem quae! Aut, atque consequatur?</p>
                    <div class="social">
                        <a href="#"><span class="fab fa-facebook-f"></span></a>
                        <a href="#"><span class="fab fa-twitter"></span></a>
                        <a href="#"><span class="fab fa-instagram"></span></a>
                        <a href="#"><span class="fab fa-youtube"></span></a>
                    </div>
                    <div class="bottom">
                        <center>
                            <span class="credit">Created By <a href="#">LootBox</a> | </span>
                            <span class="far fa-copyright"></span> 2022 All rights reserved.
                        </center>
                    </div>
                </div>
            </div>
            <div class="center box">
                <h2>Address</h2>
                <div class="content">
                    <div class="place">
                        <span class="fas fa-map-marker-alt"></span>
                        <span class="text">Tangerang</span>
                    </div>
                    <div class="phone">
                        <span class="fas fa-phone"></span>
                        <span class="text">+62-765432100</span>
                    </div>
                    <div class="email">
                        <span class="fas fa-envelope"></span>
                        <span class="text">LootBox@example.com</span>
                    </div>
                </div>
            </div>
            <div class="right box">
                <h2>Contact us</h2>
                <div class="content">
                    <form action="#">
                        <div class="email">
                            <div class="text">Email *</div>
                            <input type="email" class="form-control" required>
                        </div>
                        <div class="msg">
                            <div class="text">Message *</div>
                            <textarea id=".msgForm" rows="2" cols="25" class="form-control" required></textarea>
                            <br>
                            <button type="submit" class="btn btn-warning col-12">Send</button>
                        </div>
                    </form>
                </div>
            </div>
    </footer>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script>
        window.addEventListener("scroll", function() {
            let navArea = document.getElementById("navArea");

            if (window.pageYOffset > 0) {
                navArea.classList.add("is-sticky");
            } else {
                navArea.classList.remove("is-sticky");
            }
        });
    </script>
</body>

</html>