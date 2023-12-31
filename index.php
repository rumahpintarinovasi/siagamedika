<?php include('forms/news_api.php')?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <?php
    // Include your database connection
    include 'koneksi.php';

    // Define the page_url for Home
    $homePageUrl = 'Halaman Home';

    // Query to retrieve data from the database based on the page_url for Home
    $query = "SELECT PageTitle, Description, FokusKeyword FROM seo WHERE page_url = '$homePageUrl'";
    $result = mysqli_query($koneksi, $query);

    if ($result && mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $pageTitle = $row['PageTitle'];
        $description = $row['Description'];
        $keywords = $row['FokusKeyword'];
    } else {
        // Default values in case no data is retrieved from the database
        $pageTitle = "Undefined!";
        $description = "";
        $keywords = "";
    }
    ?>

    <title><?php echo $pageTitle; ?></title>
    <meta content="<?php echo $description; ?>" name="description">
    <meta content="<?php echo $keywords; ?>" name="keywords">

    <?php include('layout/header.php');?>
</head>

<body>
<?php
    $SQL = "SELECT KodeBanner,Judul,GambarURL,TautanURL,TglMulai,TglAkhir FROM banner";
    $Banner = mysqli_query($koneksi,$SQL);

    // Check if there are rows in the result
    if (mysqli_num_rows($Banner) > 0) {
    ?>
    <div class="modal fade" id="Banner" tabindex="-1" aria-labelledby="BannerLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div id="carouselExampleControls" class="carousel slide modal-body p-0" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <?php
                        $No = 1;
                        $active = true; // Menandai apakah carousel-item pertama harus aktif

                        foreach($Banner AS $b){ 
                            $carouselClass = ($active) ? "carousel-item active" : "carousel-item";
                        ?>
                        <div class="<?php echo $carouselClass; ?>">
                            <div class="banner-container">
                                <button type="button" class="btn-close close-right text-light" data-bs-dismiss="modal" aria-label="Close"></button>
                                <a href="<?php echo $b['TautanURL'];?>" target="_blank">
                                    <img src="<?php echo $b['GambarURL']; ?>" class="img-fluid" alt="...">
                                </a>
                            </div>
                        </div>
                        <?php 
                            $active = false; // Setelah iterasi pertama, atur menjadi false
                        }
                        ?>
                    </div>
                    <!-- Kontrol Carousel -->
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <?php
    }
    ?>
    <?php include('layout/topbar.php');?>
    <?php include('layout/nav.php');?>

    
    <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex align-items-center">
        <div class="container">
            <h1 class="text-primary-emphasis">Welcome to PT Siaga Medika</h1>
            <h2>Perusahaan Ritel Alat Kesehatan Terbaik di Makassar</h2>
            <!-- <a href="#about" class="btn-get-started scrollto">Get Started</a> -->
            <form method="get" action="search.php" class="search-container mt-3">
                <input type="text" id="search" name="q" placeholder="Cari Barang disini..." />
                <button id="search-button"><i class="fas fa-search me-2"></i>Search</button>
            </form>
        </div>
    </section><!-- End Hero -->

    <main id="main">
    
        <!-- ======= Why Us Section ======= -->
        <section id="why-us" class="why-us">
            <div class="container">

                <div class="row">
                    <div class="col-lg-4 d-flex align-items-stretch">
                        <div class="content">
                            <h3>Kenapa Memilih Siaga Medika ?</h3>
                            <p>
                                PT. Siaga Medika Mempunyai pilihan terbaik, kualitas terjamin, pilihan lengkap, harga
                                kompetitif, pengiriman cepat, layanan pelanggan ramah, garansi terpercaya, sistem pembayaran fleksibel, pelayanan purna jual memuaskan, informasi produk
                                lengkap, promosi menarik, reputasi baik.
                            </p>
                            <div class="text-center">
                                <a href="#" class="more-btn">Learn More <i class="bx bx-chevron-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 d-flex align-items-stretch">
                        <div class="icon-boxes d-flex flex-column justify-content-center">
                            <div class="row">
                                <div class="col-xl-4 d-flex align-items-stretch">
                                    <div class="icon-box mt-4 mt-xl-0">
                                        <i class='bx bx-dollar'></i>
                                        <h4>Harga yang Kompetitif</h4>
                                        <p>PT. Siaga Medika menawarkan harga kompetitif untuk produk-produknya, sehingga
                                            memberikan nilai tambah kepada pelanggan</p>
                                    </div>
                                </div>
                                <div class="col-xl-4 d-flex align-items-stretch">
                                    <div class="icon-box mt-4 mt-xl-0">
                                        <i class="bx bx-like"></i>
                                        <h4>Layanan yang Ramah</h4>
                                        <p>Layanan pelanggan yang ramah, yang ditujukan untuk memberikan pengalaman
                                            positif kepada setiap pelanggan yang datang</p>
                                    </div>
                                </div> 
                                <div class="col-xl-4 d-flex align-items-stretch">
                                    <div class="icon-box mt-4 mt-xl-0">
                                        <i class='bx bxs-truck'></i>
                                        <h4>Jaringan Distribusi</h4>
                                        <p>Kami memiliki jaringan distribusi yang luas, memastikan produk kami dapat diakses di berbagai daerah.</p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- End .content-->
                    </div>
                </div>

            </div>
        </section><!-- End Why Us Section -->

        <section id="produk_terbaru" class="produk_terbaru">
            <div class="container">
                 <div class="section-title">
                    <h2>Produk Terbaru</h2>
                </div>

                <div class="row gy-4">
                    <?php
                        $HasilQuery = mysqli_query($koneksi, "SELECT p.KodeProduk AS KodeProduk, p.NamaProduk AS NamaProduk, k.NamaKategori AS NamaKategori,
                            p.SKU_BRND, b.NamaBrand AS NamaBrand, p.Harga AS Harga, p.Gambar AS Gambar, p.Keterangan AS Keterangan, p.Tokopedia AS Tokopedia, p.Blibli AS Blibli, 
                            p.Shopee AS Shopee FROM produk p INNER JOIN kategori k INNER JOIN brand b ON (p.kode_kategori=k.kode_kategori AND p.SKU_BRND=b.SKU_BRND) 
                            WHERE (1=1) ORDER BY p.KodeProduk DESC");
                        $Produk = mysqli_fetch_all($HasilQuery, MYSQLI_ASSOC); 
                        
                        for ($i = 0; $i < min(4, count($Produk)); $i++) {
                            $p = $Produk[$i];
                    ?> 
                    <div class="col-6 col-md-3">
                        <div class="product-grid">
                            <div class="product-image">
                                <a href="" class="image" data-bs-toggle="modal" data-bs-target="#product_<?php echo $p['KodeProduk']; ?>">
                                    <img src="<?php echo $p['Gambar']; ?>" style="height: 250px;" class="img-fluid" alt="">
                                </a>
                                <span class="product-discount-label">New!</span>
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
                                <a class="whatsapp-btn" href="https://api.whatsapp.com/send?phone=6285341746323&text=Halo,%20apakah%20Stock%20dari%20<?php echo $p['NamaProduk'];  ?>%20ready%20?%20"><i class="bi bi-whatsapp"></i> Contact</a>
                            </div>
                        </div>
                        <?php include('layout/modal_prd_desc.php') ?>
                    </div>
                    <?php
                    }
                    ?>
                    <!-- loop -->
                </div>
            </div>
        </section>

        <!-- ======= About Section ======= -->
        <section id="about" class="about">
            <div class="container-fluid">

                <div class="row">
                    <div
                        class="col-xl-5 col-lg-6 video-box d-flex justify-content-center align-items-stretch position-relative">
                        <!-- <a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="glightbox play-btn mb-4"></a> -->
                    </div>

                    <div
                        class="col-xl-7 col-lg-6 icon-boxes d-flex flex-column align-items-stretch justify-content-center py-5 px-lg-5">
                        <h3>Tentang Perusahaan Ritel Alat Kesehatan Terbaik Makassar PT. Siaga Medika Abadi Karya....
                        </h3>
                        <p>
                            PT. Siaga Medika adalah perusahaan ritel alat kesehatan dan kedokteran serta laboratorium
                            yang sedang berdiri
                            di tanggal 10 Bulan Oktober tahun 2010 di Makassar. PT Siaga Medika mempunyai jam terbang
                            tinggi dan siap untuk
                            berkomptetisi di derasnya persaingan alat kesehatan saat ini.
                        </p>

                        <div class="icon-box">
                            <div class="icon"><i class="bx bx-fingerprint"></i></div>
                            <h4 class="title"><a href="">Visi Kami</a></h4>
                            <p class="description">Kami berharap akan menjadi sebuah perushaan retail peralatan
                                kesehatan, kedokteran dan laboratorium di seluruh indonesia Timur sebagai yang terkemuka
                                oleh karyawan, pelanggan, pesaing, investor dan masyarakat. Kami akan menjadi inovasi,
                                inisiatif menjalin kerjasama dengan masyarakat luas, dan dengan segenap kapasitas kami
                                merespon perubahan dan menciptakan
                                kesempatan.
                            </p>
                        </div>

                        <div class="icon-box">
                            <div class="icon"><i class="bx bx-gift"></i></div>
                            <h4 class="title"><a href="">Misi Kami</a></h4>
                            <div class="description">
                                <ul>
                                    <li>Membangkitkan minat dan kebutuhan masyarakat akan kesehatan sebagai salah satu
                                        pondasi membangun manusia yang sehat fisik dan mental</li>
                                    <li>Menyediakan segala jenis alat kesehatan dari semua kategori sambil memberikan
                                        pelayanan prima pada konsumen/pelanggan untuk membangun masyarakat sehat</li>
                                    <li>Mendukung pemenrintah daerah dalam upaya peningkatan kesehatan masyarakat
                                        serentak berperan serta dalam pembentukan watak bangsa</li>
                                    <li>Meningkatkan kompetensi dan menghargai profesionalitas SDM sebagai asset utama
                                        perusahaan</li>
                                    <li>Ikut serta menciptakan iklim usaha yang berlandaskan etika-bisnis dan yang sadar
                                        akan tanggung jawab sosialnya</li>
                                </ul>
                            </div>
                        </div>

                        <div class="icon-box">
                            <div class="icon"><i class="bx bx-atom"></i></div>
                            <h4 class="title"><a href="">Moto Kami</a></h4>
                            <ul class="description">
                                <li><em>Comrade</em> (Sahabat)</li>
                                <p>
                                    Dengan menambah motto tersebut berarti Medika ingin menjadikan perusahaan ini tidak
                                    hanya
                                    sekedar menjual alat kesehatan semata namun menjadikan diri sebagai sahabat bagi
                                    semua orang baik di waktu
                                    yang bahagia maupun waktu kemalangan. Inilah semangat dasar dalam memberikan
                                    pelayanan di lingkungan kerja maupun yang akan dibawa dilingkungan keluarga
                                </p>
                                <li><em>Comfort</em> (Kenyamanan)</li>
                                <p>Memberikan kenyamanan adalah harapan dari pelayanan prima Medika kepada pelanggan
                                    agar hakiki pelayanan yaitu
                                    kepuasan didapat bilamana pelanggan merasa nyaman. Maka dari itu sebagai katalisator
                                    kepuasan pelanggan, membentuk kenyamanan pelanggan dalam memilih dan memakai
                                    alat kesehatan dari Medika adalah sebuah indicator prestasi perusahaan kami.
                                </p>
                            </ul>
                        </div>

                    </div>
                </div>

            </div>
        </section><!-- End About Section -->

       

        <!-- ======= Services Section ======= -->
        <section id="services" class="services">
            <div class="container">

                <div class="section-title">
                    <h2>Layanan Kami</h2>
                    <p>
                        Kami juga menyediakan layanan platform online Tokopedia, Shopee & Blibli agar kami dapat
                        melayani solusi lengkap untuk kebutuhan kesehatan Anda. Anda dapat dengan mudah menjaga dan
                        meningkatkan kesehatan Anda dengan akses yang mudah ke produk kesehatan berkualitas tinggi,
                        pengiriman cepat, dan pelayanan pelanggan yang handal
                    </p>
                </div>

                <div class="row">
                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                        <div class="icon-box">
                            <div class="icon"><i class="ft-tokopedia"></i></div>
                            <h4><a href="https://www.tokopedia.com/siagamedikastore">Tokopedia</a></h4>
                            <p>Nikmati pengalaman berbelanja yang aman dan nyaman di Tokopedia, dan jadikan kesehatan
                                Anda sebagai prioritas!</p>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
                        <div class="icon-box">
                            <div class="icon"><i class="ft-shopee"></i></div>
                            <h4><a href="https://shopee.co.id/siaga_medika_store">Shopee</a></h4>
                            <p> Nikmati pengalaman berbelanja yang aman dan nyaman di Shopee, dan jaga kesehatan Anda
                                dengan produk terbaik!</p>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0">
                        <div class="icon-box">
                            <div class="icon"><i class="ft-blibli"></i></div>
                            <h4><a href="https://www.blibli.com/merchant/siagamed/SID-60039">Blibli</a></h4>
                            <p>Nikmati pengalaman berbelanja yang aman dan nyaman di Blibli, dan jaga kesehatan Anda
                                dengan produk berkualitas dari kami!</p>
                        </div>
                    </div>

                </div>
            </div>
        </section><!-- End Services Section -->


        <!-- ======= list_product Section ======= -->
        <section id="list_product" class="list_product">
            <div class="container">
                <div class="section-title">
                    <h2>Daftar Produk</h2>
                </div>
                <?php include('category_section.php')?>
            </div>
        </section><!-- End List Product Section -->

        <?php
            require_once 'forms/news_api.php';

            // Replace 'YOUR_API_KEY' with your actual API key
            $apiKey = "36f2ed3431e54b28b0fec70ab596099e";
            $country = "us";

            // Fetch news data using the API key and country code
            $newsData = fetch_news_data($apiKey, $country);
        ?>

        <!-- ======= blogs Section ======= -->
        <section id="blogs" class="blogs">
            <div class="container">
                <div class="section-title">
                    <h2>Blog</h2>
                </div>

                <div class="blogs-slider swiper" data-aos="fade-up" data-aos-delay="100">
                    <div class="swiper-wrapper">
                        <?php
                        $count = 0;
                        $displayedArticles = array(); // Array untuk melacak berita yang sudah ditampilkan

                        foreach ($newsData['articles'] as $article) {
                            $title = $article['title'];
                            $description = $article['description'];
                            $urlToImage = $article['urlToImage'];
                            $url = $article['url'];

                            $publishedAt = $article['publishedAt'];
                            $dateTime = new DateTime($publishedAt);
                            $formattedDate = $dateTime->format('d-m-Y');

                            // Skip the article if either description or image URL is empty
                            if (empty($description) || empty($urlToImage) || empty($url)) {
                                continue;
                            }

                            // Check if the article has already been displayed
                            if (in_array($url, $displayedArticles)) {
                                continue; // Skip displaying this article
                            }

                            $count++;

                            // Stop the loop if at least 4 blog cards have been displayed
                            if ($count > 4) {
                                break;
                            }

                            // Add the article URL to the displayed articles array
                            $displayedArticles[] = $url;
                        ?>
                        <!-- start blog item -->
                        <div class="swiper-slide"> 
                            <div class="blog-wrap">
                                <div class="card blog-card">
                                    <div class="card-header blog-card-header">
                                        <img src="<?php echo $urlToImage; ?>" alt="" />
                                    </div>
                                    <div class="card-body blog-card-body">
                                        <h4 class="blog-title"><a href="<?php echo $url; ?>"><?php echo $title; ?></a></h4>
                                        <p class="blog-description"><?php echo $description; ?></p>
                                        <div class="user">
                                            <img src="assets/img/logo1.png" alt="" />
                                            <div class="user-info">
                                                <h5>Admin</h5>
                                                <small><?php echo $formattedDate; ?></small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- End blog item -->
                        <?php
                        }
                        ?>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>

            </div>
        </section><!-- End blogs Section -->

        

        <!-- ======= Contact Section ======= -->
        <section id="contact" class="contact">
            <div class="container">

                <div class="section-title">
                    <h2>Contact</h2>
                </div>
            </div>

            <div>
                <iframe style="border:0; width: 100%; height: 350px;"
                    src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15894.057200860678!2d119.415898!3d-5.181511!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dbf1d805a2f0c8f%3A0xb7af2b8c14061eb2!2sPT.SIAGA%20MEDIKA%20ABADI%20KARYA!5e0!3m2!1sid!2sid!4v1688984937405!5m2!1sid!2sid"
                    frameborder="0" allowfullscreen></iframe>
            </div>

            <div class="container">
                <div class="row mt-5">

                    <div class="col-lg-4">
                        <div class="info">
                            <div class="address">
                                <i class="bi bi-geo-alt"></i>
                                <h4>Location:</h4>
                                <p>Jl. Abd. Kadir No.9d, Balang Baru, Kec. Tamalate, Kota Makassar, Sulawesi Selatan
                                    90224</p>
                            </div>

                            <div class="email">
                                <i class="bi bi-envelope"></i>
                                <h4>Email:</h4>
                                <p>pt.siagamedika@gmail.com</p>
                            </div>

                            <div class="phone">
                                <i class="bi bi-phone"></i>
                                <h4>Call:</h4>
                                <p>+62 851-0551-5454</p>
                            </div>

                        </div>

                    </div>

                    <div class="col-lg-8 mt-5 mt-lg-0">

                        <form action="forms/contact.php" method="post" class="php-email-form">
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <input type="text" name="name" class="form-control" id="name"
                                        placeholder="Your Name" required>
                                </div>
                                <div class="col-md-6 form-group mt-3 mt-md-0">
                                    <input type="email" class="form-control" name="senderMail" id="senderMail"
                                        placeholder="Your Email" required>
                                </div>
                            </div>
                            <div class="form-group mt-3">
                                <input type="text" class="form-control" name="subject" id="subject"
                                    placeholder="Subject" required>
                            </div>
                            <div class="form-group mt-3">
                                <textarea class="form-control" name="message" rows="5" placeholder="Message"
                                    required></textarea>
                            </div>
                            <div class="my-3">
                                <div class="loading">Loading</div>
                                <div class="error-message"></div>
                                <div class="sent-message"></div>
                            </div>
                            <div class="text-center"><button type="submit">Send Message</button></div>
                        </form>

                    </div>

                </div>

            </div>
        </section><!-- End Contact Section -->
        
    </main><!-- End #main -->

    <?php include('layout/footer.php')?>

   <?php include('layout/script.php')?>
   <script>
   // Get JSON data from the given URL
   $.getJSON('https://ipapi.co/json/', function(ip){
        var data = {
          ip: ip.ip,
          isp: ip.org,
          country: ip.country_name,
          city: ip.region
        };

        $.ajax({
          url: 'index.php',
          type: 'post',
          data: data
        })
      })
      window.onload = function() {
    // Setelah 10 detik, tampilkan modal
    setTimeout(function() {
      var modal = new bootstrap.Modal(document.getElementById('Banner'));
      modal.show();
    }, 5000); // 10000 milidetik (10 detik)
  };
   </script>

</body>

</html>

<?php
if(isset($_POST["ip"])){
  $ip = $_POST["ip"];
  $isp = $_POST["isp"];
  $country = $_POST["country"];
  $city = $_POST["city"];
  $date_access = date('Y-m-d'); // Get current date and time in the format 'YYYY-MM-DD HH:MM:SS'

  $query = "INSERT INTO ip_data (ip, isp, country, city, date_access) VALUES ('$ip', '$isp', '$country', '$city', '$date_access')";
  mysqli_query($koneksi, $query);
}
?>