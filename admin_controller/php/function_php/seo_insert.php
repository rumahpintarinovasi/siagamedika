<?php
include '../../../koneksi.php';

$PageTitle = $_POST['PageTitle'];
$Description = $_POST['Description'];
$FokusKeyword = $_POST['FokusKeyword'];

// Process FokusKeyword into a single string
$joinedKeywords = implode(', ', array_map('trim', explode(',', $FokusKeyword)));

$pageSelected = $_POST['page_url'];

// Map the selected page value to its corresponding text
if ($pageSelected == '1') {
    $pageText = 'Halaman Home';
} elseif ($pageSelected == '2') {
    $pageText = 'Halaman Produk';
} else {
    $pageText = 'Undefined Page'; // Set a default value if needed
}

try {
    date_default_timezone_set("Asia/Makassar");
    $now = date('Y-m-d H:i:s'); // Get current date and time

    $sql = "INSERT INTO seo (kodeSEO, page_url, PageTitle, Description, FokusKeyword, WaktuBuat, WaktuUpdate) 
            VALUES (?, ?, ?, ?, ?, ?, ?)";

    $stmt = $koneksi->prepare($sql);
    $stmt->bind_param("sssssss", $kodeSEO, $pageText, $PageTitle, $Description, $joinedKeywords, $now, $now);

    $stmt->execute();

    header("location:../../seo.php");
} catch(Exception $e) {
    echo "Error Saat Menyimpan Data : " . $e->getMessage();
}
?>
