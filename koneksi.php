<?php
// Production Siagamedika
// $koneksi = mysqli_connect("localhost", "u9973847_admin", "3SlK,tBxSHNI", "u9973847_siagamedika");

// $koneksi = mysqli_connect("localhost","u1567541_agusvirga","V2e2Sy7E3s","u1567541_siagamedika");

// UAT Siagamedika
$koneksi = mysqli_connect("localhost", "root", "", "siagamedika");

if (!$koneksi) {
    die("Koneksi database gagal: " . mysqli_connect_error());
}
?>
