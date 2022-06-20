<?php
require("koneksi.php");

$response = array();

if($_SERVER['REQUEST_METHOD'] == 'POST'){

    $image = $_POST["image"];
    $name = $_POST["name"];
    $stock = $_POST["stock"];
    $price = $_POST["price"];
    $phone = $_POST["phone"];

    $perintah = "INSERT INTO tb_furniture (image, name, stock, price, phone) VALUES('$image','$name','$stock','$price','$phone')";
    $eksekusi = mysqli_query($konek, $perintah);
    $cek      = mysqli_affected_rows($konek);

    if($cek > 0){
        $response["kode"] = 1;
        $response["pesan"] = "Simpan Data Berhasil";
    }
    else{
        $response["kode"] = 0;
        $response["pesan"] = "Gagal Menyimpan Data";
    }
}
else{
    $response["kode"] = 0;
    $response["pesan"] = "Tidak Ada Post Data";
}

echo json_encode($response);
mysqli_close($konek);