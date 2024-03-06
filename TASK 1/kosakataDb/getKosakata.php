<?php
header("Access-Control-Allow-Origin: header");
header("Access-Control-Allow-Origin: *");

include "koneksi.php";
$sql = "SELECT * FROM kosakata";
$result = $koneksi->query($sql);

if ($result->num_rows > 0) {
    $res['is_success'] = true;
    $res['message'] = "Berhasil Menampilkan Kosakata";
    $res['data'] = array();
    while ($row = $result->fetch_assoc()) {
        $res['data'][] = $row;
    }
} else {
    $res['is_success'] = false;
    $res['message'] = "Gagal Menampilkan Kosakata";
    $res['data'] = null;
}
echo json_encode($res);

?>
