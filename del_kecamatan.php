<?php
require "koneksi.php";

	$id=$_GET['id'];
	
	$sql="DELETE from kecamatan WHERE id_kecamatan ='$id'";
	$hasil=mysql_query($sql);
 
 if($hasil){
	echo"<script language='javascript'>
		alert('Proses Hapus Data Berhasil');
		window.open('d_kecamatan.php','_top');
		</script>";
 }
 else{		
	echo "<script language='javascript'>
		alert ('Proses Hapus Data Gagal);
		window.open('d_kecamatan.php','_top')
		</script>";
	}
?>