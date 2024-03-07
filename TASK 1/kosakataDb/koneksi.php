<?php

$koneksi = mysqli_connect("localhost", "root", "", "db_kamus");

if ($koneksi) {

    //echo "Success connection";

} else {
    echo "Failed Connection";
}

?>
