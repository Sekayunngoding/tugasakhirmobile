<?php
require("koneksi.php");
$perintah = "SELECT * FROM tb_furniture";
$eksekusi = mysqli_query($konek, $perintah);
$cek = mysqli_affected_rows($konek);

if($cek > 0){
    $response["kode"] = 1;
    $response["pesan"] = "Data Tersedia";
    $response["data"] = array();

    while($ambil = mysqli_fetch_object($eksekusi)){
        $F["id"] = $ambil->id;
        $F["image"] = $ambil->image;
        $F["name"] = $ambil->name;
        $F["stock"] = $ambil->stock;
        $F["price"] = $ambil->price;
        $F["phone"] = $ambil->phone;
        
        array_push($response["data"], $F);
    }
    
}
else{
    $response["kode"] = 0;
    $response["pesan"] = "Data Tidak Tersedia";
}

echo json_encode($response);
mysqli_close($konek);