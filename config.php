<?php  
$conn = mysqli_connect('localhost','root','root','aritmatika');
if (!$conn) {
	$message = "Koneksi Gagal, silahkan cek nama database atau lainnya";
	die($message."<br>".mysqli_connect_error());
}
?>