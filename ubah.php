<?php
session_start();

require 'functions.php';

if (!isset($_SESSION["username"])) {
  header("Location: index.php");
  exit;
}
// ambil data di URL
$id = $_GET["id_artikel"];

// query data mahasiswa berdasarkan id
$movie = query("SELECT * FROM movies WHERE id_artikel = $id")[0];


// cek apakah tombol submit sudah ditekan atau belum
if( isset($_POST["submit"]) ) {
	
	// cek apakah data berhasil diubah atau tidak
	if( ubah($_POST) > 0 ) {
		echo "
			<script>
				alert('data berhasil diubah!');
				document.location.href = 'admin.php';
			</script>
		";
	} else {
        // die();
		echo "
			<script>
				alert('data gagal diubah!');
				document.location.href = 'ubah.php?id_artikel=$id';
			</script>
		";
        // exit;
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
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

  <!-- my css -->
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">


  <!-- fonts -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
  <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Fugaz+One&display=swap" rel="stylesheet">
  <title>Upload Movie</title>
</head>

<body>
  <div class="container mt-5">
    <div class="row justify-content-end">
      <div class="col-1">
        <a href="admin.php" class="btn btn-secondary col-12 mb-3">Back</a>
      </div>
    </div>
    <form method="post" enctype="multipart/form-data" action="">
        <input type="hidden" name="id_artikel" value="<?= $movie["id_artikel"]; ?>">
		<input type="hidden" name="gambarLama" value="<?= $movie["gambar"]; ?>">
      <div class="row g-2 align-items-center">
        <label for="judul_film" class="col-form-label col-sm-2">Judul Film</label>
        <div class="col-sm-10">
          <input type="text" id="judul_film" value="<?= $movie["judul_artikel"]; ?>" name="judul_film" class="form-control" aria-describedby="movieHelpInline" autofocus required>
        </div>
      </div>
      <div class="row g-2 align-items-center mt-3">
        <label for="gambar_film" class="form-label col-sm-2">Upload Gambar</label>
        <div class="col-sm-10">
            <img src="img/<?= $movie['gambar']; ?>" width="40"> <br>
          <input class="form-control" type="file" id="gambar_film" name="gambar">
        </div>
    </div>
    <!-- <label for="artike">Upload Gambar</label>
    <input type="file" name="artikel" id="artikel"> -->
    <div class="row g-2 align-items-center mt-3">
        <label for="floatingTextarea2" class="col-sm-2">Deskripsi Film</label>
        <div class="col-sm-10">
            
            <!-- <input class="form-control" type="text" id="deskripsi" name="deskripsi" value="<?= $movie["deskripsi"]; ?>"> -->
          <textarea class="form-control texteditor" name="deskripsi" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"><?= $movie["deskripsi"]; ?></textarea>
        </div>
      </div>
      <div class="row g-2 align-items-center mt-3">
        <label for="kategori" class="col-sm-2">Kategori</label>
        <div class="col-sm-10">
          <select class="form-control" name="kategori_film" aria-label="Default select example">
            <option value="<?= $movie["kategori"]; ?>" selected>--Pilih Jika Mengganti Kategori--</option>
            <option value="Horor">Horor</option>
            <option value="Action">Action</option>
            <option value="Drama">Drama</option>
          </select>
        </div>
      </div>
      <div class="row justify-content-center">
        <div class="col-3">
          <button type="submit" class="btn btn-primary col-12 mt-5" name="submit">Update</button>
        </div>
      </div>
      <!-- </div> -->
    </form>
  </div>

  <!-- panggil jquery -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <!-- panggil ckeditor.js -->
  <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
  <!-- panggil adapter jquery ckeditor -->
  <script type="text/javascript" src="ckeditor/adapters/jquery.js"></script>
  <!-- setup selector -->
  <script type="text/javascript">
    $('textarea.texteditor').ckeditor();
  </script>

</body>

</html>