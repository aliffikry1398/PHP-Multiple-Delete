<!DOCTYPE html>
<html>
<head>
	<title>Multiple Delete - Alif Fikry</title>
</head>
<body>


<!-- FORM -->
<table border="1" cellpadding="10">
	<thead>
		<tr>
			<th><input type="checkbox" id="check_all"></th>
			<th>No</th>
			<th>Kode barang</th>
			<th>Nama Brang</th>
		</tr>
	</thead>

	<form method="POST" action="proses.php">
		<tbody>
			<?php
			include 'config.php'; 
			$no = 1;
			$sql = mysqli_query($conn,"SELECT * FROM tb_barang");
			while ($row = mysqli_fetch_array($sql)) { ?>
			<tr>
				<td><input type="checkbox" name="pilih[]" value="<?= $row['kd_barang']; ?>"></td>
				<td><?= $no++; ?></td>
				<td><?= $row['kd_barang']; ?></td>
				<td><?= $row['nm_barang']; ?></td>
			</tr>
			<?php } ?>
		</tbody>
		<button type="submit" id="btn_hapus">Hapus</button>
	</form>
</table>



<script src="js/jquery.min.js"></script>
<script src="js/multiple-delete.js"></script>

</body>
</html>