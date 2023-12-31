<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <?php
    // Include your database connection
    include 'koneksi.php';

    // Define the page_url for Home
    $homePageUrl = 'Halaman Produk';

    // Query to retrieve data from the database based on the page_url for Home
    $query = "SELECT PageTitle, Description, FokusKeyword FROM seo WHERE page_url = '$homePageUrl'";
    $result = mysqli_query($koneksi, $query);
    
    if ($result && mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $pageTitle = $row['PageTitle'];
        $description = $row['Description'];
        $keywords = $row['FokusKeyword'];
    }

    else{
        // Default values in case no data is retrieved from the database
        $pageTitle = "Undefined!";
        $description = "";
        $keywords = "";
    }
    ?>

    <title><?php echo $pageTitle; ?></title>
    <meta content="<?php echo $description; ?>" name="description">
    <meta content="<?php echo $keywords; ?>" name="keywords">

    <?php include('layout/header.php')?>

</head>

<body>
    <?php include('koneksi.php');
    $queryBarang = "SELECT COUNT(*) as total_barang FROM produk";
    $resultBarang = mysqli_query($koneksi, $queryBarang);
    $rowBarang = mysqli_fetch_assoc($resultBarang);
    $totalBarang = $rowBarang['total_barang'];
    ?>
    <?php include('layout/topbar.php')?>
    <?php include('layout/nav_inner.php')?>

    <main id="main">

        <!-- ======= Breadcrumbs Section ======= -->
        <section class="breadcrumbs">
            <div class="container">
                <div class="d-flex justify-content-between align-items-center">
                    <div class="search-container_searchpage border border-primary-subtle mb-2 rounded-0">
                        <form method="GET" action="search.php">
                            <input type="text" id="search" class="form-control rounded-0" name="q" placeholder="Cari Barang disini..." value="" />
                            <button id="search-button" class="rounded-0" type="submit"><i class="fas fa-search me-2"></i>Search</button>
                        </form>
                    </div>
                </div>
            </div>
        </section><!-- End Breadcrumbs Section -->

        <section class="product-page">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-sm-7">
                            <div class="product-bar d-flex align-items-center flex-wrap">
                                <p>showing <?php echo $totalBarang; ?> result</p>
                                <select onchange="handleBrandChange(this)">
                                    <option disabled selected>Pilih Brand...</option>
                                    <?php
                                    $brands = mysqli_query($koneksi, "SELECT SKU_BRND, NamaBrand FROM brand");
                                    while ($brand = mysqli_fetch_assoc($brands)) {
                                        echo '<option value="' . $brand['SKU_BRND'] . '">' . $brand['NamaBrand'] . '</option>';
                                    }
                                    ?>
                                </select>
                            </div>
                        <div class="row gy-4">
                            <?php
                            $produkPerPage = 9; // Jumlah produk per halaman
                            $currentPage = isset($_GET['page']) ? $_GET['page'] : 1; // Halaman saat ini

                            $offset = ($currentPage - 1) * $produkPerPage; // Hitung offset
                             // Initialize the counter
                            $counter = $offset + 1;
                            // Query untuk mendapatkan total jumlah produk
                            $totalProdukQuery = "SELECT COUNT(*) AS total FROM produk";
                            $totalProdukResult = mysqli_query($koneksi, $totalProdukQuery);
                            $totalProdukRow = mysqli_fetch_assoc($totalProdukResult);
                            $totalProduk = $totalProdukRow['total'];

                            $totalPages = ceil($totalProduk / $produkPerPage); // Hitung total halaman

                            // Query untuk mendapatkan data produk dengan batasan pagination
                            $query = "SELECT p.KodeProduk AS KodeProduk, p.NamaProduk AS NamaProduk, k.NamaKategori AS NamaKategori, b.NamaBrand AS NamaBrand, p.Harga AS Harga, p.Gambar AS Gambar, p.Keterangan AS Keterangan, p.Tokopedia AS Tokopedia, p.Blibli AS Blibli, p.Shopee AS Shopee 
                            FROM produk p 
                            INNER JOIN kategori k ON p.kode_kategori = k.kode_kategori 
                            INNER JOIN brand b ON p.SKU_BRND = b.SKU_BRND 
                            WHERE (1=1) 
                            ORDER BY p.KodeProduk DESC 
                            LIMIT $offset, $produkPerPage";
                

                            $result = mysqli_query($koneksi, $query);

                            if(mysqli_num_rows($result) > 0) {
                                while ($p = mysqli_fetch_array($result)) { 
                                    ?>
                                    <div class="col-lg-4 col-md-6 col-12">
                                        <div class="product-grid"> 
                                            <div class="product-image">
                                                <a href="" class="image" data-bs-toggle="modal" data-bs-target="#product_<?php echo $p['KodeProduk']; ?>">
                                                    <img src="<?php echo $p['Gambar']; ?>" class="img-fluid" style="height: 250px;" alt="">
                                                </a>
                                                <ul class="product-links">
                                                <?php if (!empty($p['Tokopedia'])) { ?>
                                                    <li><a href="<?php echo $p['Tokopedia']; ?>" data-tip="Tokopedia"><i class="ft-tokopedia"></i></a></li>
                                                <?php } ?>
                                                <?php if (!empty($p['Shopee'])) { ?>
                                                    <li><a href="<?php echo $p['Shopee']; ?>" data-tip="Shopee"><i class="ft-shopee"></i></a></li>
                                                <?php } ?>
                                                <?php if (!empty($p['Blibli'])) { ?>
                                                    <li><a href="<?php echo $p['Blibli']; ?>" data-tip="Blibli"><i class="ft-blibli"></i></a></li>
                                                <?php } ?>
                                                </ul>
                                            </div>
                                            <div class="product-content">
                                                <h3 class="title"><a href="#" title="<?php echo $p['NamaProduk']; ?>" data-bs-toggle="modal" data-bs-target="#product_<?php echo $p['KodeProduk']; ?>"><?php echo $p['NamaProduk']; ?></a></h3>
                                                <div class="price"><?php echo "Rp ".number_format($p['Harga'],0,',','.'); ?></div>
                                                <a class="whatsapp-btn" href="https://api.whatsapp.com/send?phone=6285341746323&text=Halo,%20apakah%20Stock%20dari%20<?php echo $p['NamaProduk'];  ?>%20ready%20?%20" target="_blank"><i class="bi bi-whatsapp"></i> Contact</a>
                                            </div>
                                        </div>
                                        <?php include('layout/modal_prd_desc.php')?>
                                    </div>
                                    <?php
                                    // Increment the counter
                                    $counter++;
                                }
                            } else {
                                echo '<center> <span class="m-0 my-5">Tidak ada produk ditemukan.</span> </center>';
                            }
                            ?> 
                            <?php if ($totalProduk > $produkPerPage) { ?>                         
                            <div class="product-pagination d-flex justify-content-center">
                                <ul>
                                    <?php if ($currentPage > 1) { ?>
                                        <li><a href="?page=<?php echo $currentPage - 1; ?>"><i class="bi bi-arrow-left"></i></a></li>
                                    <?php } ?>

                                    <?php
                                    // Tentukan nomor halaman pertama dan terakhir yang akan ditampilkan
                                    $firstPage = max(1, $currentPage - 1);
                                    $lastPage = min($totalPages, $currentPage + 1);

                                    // Tampilkan tautan halaman
                                    for ($page = $firstPage; $page <= $lastPage; $page++) {
                                        $isActive = $page == $currentPage ? 'active' : '';
                                    ?>
                                        <li><a href="?page=<?php echo $page; ?>" class="<?php echo $isActive; ?>"><?php echo $page; ?></a></li>
                                    <?php } ?>

                                    <?php if ($currentPage < $totalPages) { ?>
                                        <li><a href="?page=<?php echo $currentPage + 1; ?>"><i class="bi bi-arrow-right"></i></a></li>
                                    <?php } ?>
                                </ul>
                            </div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-5">
                        <div class="product-sidebar">
                            <div class="product-widget category-widget">
								<h1>Kategori</h1>
								<ul>
                                    <li><a href="product-page.php" class="active">All Categories</a></li>
                                <?php
                                    $categories = mysqli_query($koneksi, "SELECT kode_kategori, NamaKategori FROM kategori");
                                    while ($category = mysqli_fetch_assoc($categories)) {
                                    ?>
                                        <li><a href="categories_filtering.php?category=<?= $category['kode_kategori']; ?>"><?= $category['NamaKategori']; ?></a></li>
                                    <?php
                                    }
                                    ?>
								</ul>
							</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    

    </main><!-- End #main -->

    <?php include('layout/footer.php')?>

    <?php include('layout/script.php')?>

</body>

</html>