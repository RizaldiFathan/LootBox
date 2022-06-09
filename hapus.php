<?php
session_start();

if (!isset($_SESSION["username"])) {
    header("Location: index.php");
    exit;
}

require 'functions.php';

$id = $_GET["id_artikel"];

if (hapus($id) > 0) {
    echo "
		<script>
			alert('data berhasil dihapus!');
			document.location.href = 'admin.php';
		</script>
	";
} else {
    die();
    echo "
		<script>
			alert('data gagal dihapus!');
			document.location.href = 'admin.php';
		</script>
	";
}
