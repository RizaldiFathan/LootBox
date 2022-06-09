<?php
// koneksi ke database
$conn = mysqli_connect("localhost", "root", "", "db_member");

function query($query)
{
	global $conn;
	$result = mysqli_query($conn, $query);
	$rows = [];
	while ($row = mysqli_fetch_assoc($result)) {
		$rows[] = $row;
	}
	return $rows;
}

function tambah($data)
{
	global $conn;
	$id = htmlspecialchars($data["id"]);
	$desc_film = $data["desk_film"];
	$ch_kategori = htmlspecialchars($data["kategori_film"]);
	$judul_film = htmlspecialchars($data["judul_film"]);
	$tipe_file = $_FILES['gambar_film']['type'];

	// upload gambar
	$gambar = upload();
	if (!$gambar) {
		return false;
	}

	$query = "INSERT INTO movies
				VALUES
			  ('', '$id', '$tipe_file', '$gambar', '$desc_film', '$ch_kategori', '$judul_film')
			";
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}


function upload()
{

	$nama_file = $_FILES['gambar_film']['name'];
	$ukuran_file = $_FILES['gambar_film']['size'];
	$tipe_file = $_FILES['gambar_film']['type'];
	$tmp_file = $_FILES['gambar_film']['tmp_name'];
	$error = $_FILES['gambar_film']['error'];

	// cek apakah tidak ada gambar yang diupload
	if ($error === 4) {
		echo "<script>
				alert('pilih gambar terlebih dahulu!');
			  </script>";
		return false;
	}

	// cek apakah yang diupload adalah gambar
	$ekstensiGambarValid = ['jpg', 'jpeg', 'png'];
	$ekstensiGambar = explode('.', $nama_file);
	$ekstensiGambar = strtolower(end($ekstensiGambar));
	if (!in_array($ekstensiGambar, $ekstensiGambarValid)) {
		echo "<script>
				alert('yang anda upload bukan gambar!');
			  </script>";
		return false;
	}

	// cek jika ukurannya terlalu besar
	if ($ukuran_file > 1000000) {
		echo "<script>
				alert('ukuran gambar terlalu besar!');
			  </script>";
		return false;
	}

	// lolos pengecekan, gambar siap diupload
	// generate nama gambar baru
	$namaFileBaru = uniqid();
	$namaFileBaru .= '.';
	$namaFileBaru .= $ekstensiGambar;

	move_uploaded_file($tmp_file, 'img/' . $namaFileBaru);

	return $namaFileBaru;
}
function ubah($data) {
	global $conn;

	$id = $data["id_artikel"];
	$desc_film = $data["deskripsi"];
	$ch_kategori = htmlspecialchars($data["kategori_film"]);
	$judul_film = htmlspecialchars($data["judul_film"]);
	$gambarLama = htmlspecialchars($data["gambarLama"]);

	// cek apakah user pilih gambar baru atau tidak
	if( $_FILES['gambar']['error'] === 4 ) {
		$gambar = $gambarLama;
	} else {
		$gambar = upload();
	}
	
	// var_dump($id,$desc_film,$ch_kategori,$judul_film,$gambarLama,$gambar);
	// exit;
	

	$query = "UPDATE movies SET
				judul_artikel = '$judul_film',
				gambar = '$gambar',
				deskripsi = '$desc_film',
				kategori = '$ch_kategori'
			  WHERE id_artikel = $id
			";
	// var_dump($query);
	// exit;	
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);	
}

function hapus($id)
{
	global $conn;
	mysqli_query($conn, "DELETE FROM movies WHERE id_artikel = $id");
	return mysqli_affected_rows($conn);
}

function registrasi($data)
{
	global $conn;
	$email = $data['email'];
	$username = strtolower(stripslashes($data["username"]));
	$password = mysqli_real_escape_string($conn, $data["password"]);
	$password2 = mysqli_real_escape_string($conn, $data["password2"]);
	$nama_member = $data['nama_member'];
	$alamat = $data['alamat'];
	$no_identitas = $data['no_identitas'];

	// cek username sudah ada atau belum
	$result = mysqli_query($conn, "SELECT username FROM register WHERE username = '$username'");

	if (mysqli_fetch_assoc($result)) {
		echo "<script>
				alert('username sudah terdaftar!');
				document.location.href = 'index.php';
		      </script>";
		return false;
	}


	// cek konfirmasi password
	if ($password !== $password2) {
		echo "<script>
				alert('konfirmasi password tidak sesuai!');
				document.location.href = 'index.php';
			  </script>";
		return false;
	}

	// enkripsi password
	// $password_options = ['cost' => 11,'salt' => mcrypt_create_iv(22,MCRYPT_DEV_URANDOM),];
	// $password = password_hash($_POST['password'], PASSWORD_BCRYPT, $password_options);
	$password = password_hash($password, PASSWORD_DEFAULT);
	// tambahkan userbaru ke database
	mysqli_query($conn, "INSERT INTO register VALUES('', '$email','$username', '$password', '$nama_member', '$alamat', '$no_identitas')");

	return mysqli_affected_rows($conn);
}
