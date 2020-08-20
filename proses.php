<!-- LOGIC DELETE -->
<?php  
include 'config.php';
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

	$pilih = $_POST['pilih'];
	$jumlah_pilih = count($pilih);

	// LOOPING BERDASARKAN JUMLAH PILIH DATA YANG AKAN DIHAPUS
	for ($i=0; $i < $jumlah_pilih; $i++) { 
		$sql 	= "DELETE FROM tb_barang WHERE kd_barang = '$pilih[$i]'";
		$query 	= $conn->query($sql);

		if ($query === TRUE) {
			echo "<script>document.location.href='index.php'</script>";
		}else{
			echo "<script>alert('data gagal dihapus');
				  document.location.href='index.php'</script>";
		}
	}
}
?>