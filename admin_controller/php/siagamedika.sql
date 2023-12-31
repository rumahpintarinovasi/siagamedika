-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2023 at 07:42 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siagamedika`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `KodeBanner` int(11) NOT NULL,
  `Judul` varchar(250) NOT NULL,
  `GambarURL` text NOT NULL,
  `TautanURL` text NOT NULL,
  `TglMulai` date NOT NULL,
  `TglAkhir` date NOT NULL,
  `WaktuBuat` timestamp NOT NULL DEFAULT current_timestamp(),
  `WaktuUpdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`KodeBanner`, `Judul`, `GambarURL`, `TautanURL`, `TglMulai`, `TglAkhir`, `WaktuBuat`, `WaktuUpdate`) VALUES
(12, 'Banner2', 'https://i.imgur.com/VcjUQBX.jpeg', 'https://imgur.com/gallery/mWQ4uPA', '2023-09-04', '2023-09-13', '2023-09-04 08:23:11', '2023-09-04 08:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `SKU_BRND` varchar(300) COLLATE utf32_bin NOT NULL,
  `NamaBrand` varchar(250) COLLATE utf32_bin NOT NULL,
  `Tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`SKU_BRND`, `NamaBrand`, `Tanggal`) VALUES
('BRND174', 'Socores Switzerland', '2023-08-19'),
('BRND288', 'Serenity', '2023-08-13'),
('BRND571', 'FamilyDr', '2023-08-13'),
('BRND616', 'GEA', '2023-08-12'),
('BRND701', 'Human Meditek', '2023-09-04'),
('BRND714', 'Solida', '2023-08-13'),
('BRND800', 'Bistos', '2023-08-11'),
('BRND903', 'Urilyzer', '2023-08-13');

-- --------------------------------------------------------

--
-- Table structure for table `ip_data`
--

CREATE TABLE `ip_data` (
  `date_access` date NOT NULL,
  `ip` varchar(50) NOT NULL,
  `isp` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ip_data`
--

INSERT INTO `ip_data` (`date_access`, `ip`, `isp`, `city`, `country`) VALUES
('2023-08-31', '120.188.84.170', 'INDOSAT Internet Network Provider', 'East Java', 'Indonesia'),
('2023-08-28', '125.162.208.26', 'PT Telekomunikasi Indonesia', 'South Sulawesi', 'Indonesia'),
('2023-08-20', '125.162.209.201', 'PT Telekomunikasi Indonesia', 'South Sulawesi', 'Indonesia'),
('2023-08-23', '125.162.210.116', 'PT Telekomunikasi Indonesia', 'South Sulawesi', 'Indonesia'),
('2023-08-25', '125.162.210.57', 'PT Telekomunikasi Indonesia', 'South Sulawesi', 'Indonesia'),
('2023-08-22', '125.162.210.69', 'PT Telekomunikasi Indonesia', 'South Sulawesi', 'Indonesia'),
('2023-08-21', '125.162.210.81', 'PT Telekomunikasi Indonesia', 'South Sulawesi', 'Indonesia'),
('2023-08-24', '125.162.210.99', 'PT Telekomunikasi Indonesia', 'South Sulawesi', 'Indonesia'),
('2023-09-04', '125.162.213.0', 'PT Telekomunikasi Indonesia', 'South Sulawesi', 'Indonesia'),
('2023-08-29', '125.162.215.251', 'PT Telekomunikasi Indonesia', 'South Sulawesi', 'Indonesia'),
('2023-08-28', '180.246.37.139', 'PT Telekomunikasi Indonesia', 'South Sulawesi', 'Indonesia'),
('2023-08-20', '2001:448a:7023:49e8:c9d:2406:c8ae:16cf', 'PT Telekomunikasi Indonesia', 'South Sulawesi', 'Indonesia'),
('2023-08-19', '2001:448a:70b0:4a24:94e1:9d97:35c6:9270', 'PT Telekomunikasi Indonesia', 'Jakarta', 'Indonesia'),
('2023-08-26', '2001:448a:70b0:a97:b99a:2c04:843b:75d2', 'PT Telekomunikasi Indonesia', 'Jakarta', 'Indonesia'),
('2023-08-28', '2001:448a:70b0:e541:2417:4d0f:d055:76ad', 'PT Telekomunikasi Indonesia', 'Jakarta', 'Indonesia'),
('2023-08-28', '2001:448a:70b0:e541:d5be:96ee:94af:5861', 'PT Telekomunikasi Indonesia', 'Jakarta', 'Indonesia'),
('2023-09-04', '27.111.44.6', 'PT. Inet Global Indo', 'Jakarta', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kode_kategori` varchar(300) NOT NULL,
  `NamaKategori` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `Tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kode_kategori`, `NamaKategori`, `Tanggal`) VALUES
('CAT173', 'Medical Disposable', '2023-08-13'),
('CAT180', 'Operating Theater', '2023-08-15'),
('CAT508', 'Disenfecting & Sterilizing', '2023-08-15'),
('CAT593', 'Critical Care', '2023-08-13'),
('CAT885', 'Medical Equipment', '2023-08-11'),
('CAT900', 'Sterile Water', '2023-08-15'),
('CAT941', 'Laboratorium', '2023-08-19');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `KodeProduk` int(11) NOT NULL,
  `NamaProduk` varchar(150) CHARACTER SET utf8mb4 NOT NULL,
  `kode_kategori` varchar(300) CHARACTER SET utf32 NOT NULL,
  `SKU_BRND` varchar(200) CHARACTER SET utf32 NOT NULL,
  `Harga` double NOT NULL,
  `Gambar` varchar(350) CHARACTER SET utf8mb4 NOT NULL,
  `Keterangan` text CHARACTER SET utf32 DEFAULT NULL,
  `Tokopedia` varchar(300) COLLATE utf32_bin DEFAULT NULL,
  `Blibli` varchar(300) CHARACTER SET utf32 DEFAULT NULL,
  `Shopee` varchar(300) CHARACTER SET utf32 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`KodeProduk`, `NamaProduk`, `kode_kategori`, `SKU_BRND`, `Harga`, `Gambar`, `Keterangan`, `Tokopedia`, `Blibli`, `Shopee`) VALUES
(67, 'Decubitus mattress AD III BEAM', 'CAT885', 'BRND616', 5650000, 'https://i.imgur.com/Hs1vqSM.png', 'Merk : Young Won\r\nType : AD III BEAM\r\nProduct Detail Information\r\n\r\nRated Voltage : 220V.60Hz\r\nPower Consumption : 10 Watts\r\nWeight : 4 Kg\r\nCirculation : 5min, 10min, 15min, 20min\r\nMaterial : TPU, ABS\r\nAir Capacity : 1.5~8 Liter\r\nPump size : 8.4(H) * 12.2(W) * 25(D) Cm\r\nMattress size : 200(W)*90(L)*7(H)cm (with the air filled)\r\nFeature\r\nAir control function, Cycle time control function, Auto/Manual change function, Alram function\r\n\r\nAD III BEAM\r\n\r\nProduct designed to take care of urine and feces for convenience of user with no movement, which can be easily used with no assistance of sick nurse or guardian accompanying less stress for user.\r\n\r\nProduk ini telah terdaftar kedalam E-Katalog (LKPP)\r\nFranko Jakarta\r\nHarga diatas belum termasuk ongkos kirim dan biaya instalasi.\r\n\r\nUntuk informasi lebih mengenai produk ini, silahkan klik Disini:\r\nhttps://drive.google.com/file/d/1ByKMUDB1AAwrYITTLCisv-malw8eC-BK/view?usp=sharing', 'https://tokopedia.com/siagamedikastore/decubitus-mattress-ad-iii-beam', 'https://www.blibli.com/p/decubitus-mattress-ad-iii-beam/ps--SID-60039-00097', 'https://shopee.co.id/product/399419659/13634810264/'),
(69, 'Oxygen Concentrator GEA 7F-8', 'CAT885', 'BRND616', 19000000, 'https://i.imgur.com/gDjv596.jpg', '#Oxygen Concentrator GEA 7F-8 Medical Grade Stable Oxygen Supply merupakan alat penghasil oksigen atau penyaringan oksigen yang diambil dari udara sekitar atau disekeliling tanpa memerlukan tabung oksigen, menjadi oksigen murni siap hirup. Penelitian telah membuktikan bahwa penggunaan alat semacam ini setara dengan sumber oksigen alami. Penggunaan Oksigen Konsentrator direkomendasikan untuk perawatan, rehabilitasi dan pencegahan penyakit seperti, Asma (bronkial), Infeksi saluran pernafasan akut dan Bronkitis.\r\n\r\nDetail Produk\r\nFungsi waktu kumulatif\r\nDilengkapi 2 katup pengaman oksigen dan nebulizer.\r\nPasang fungsi peringatan pemadaman listrik.\r\nOutlet / keluaran 2 Oxygen, dapat digunakan 2 pengguna secara bersamaan\r\nMenyediakan fungsi atomisasi, laju nebulisasi maksimum≥0.2mL / mnt\r\nSpesifikasi Produk:\r\nBrand GEA\r\nTipe 7F-8\r\nJenis Produk Oksigen konsentrator\r\nInput power 500 VA\r\nOksigen konsentrator ≥95.5%~87%\r\nAliran oksigen 0.5~8L/min\r\nOutput pressure 40～70kPa\r\nOutlet / keluaran 2x Oxygen (bisa utk 2 pasien), 1x Nebulizer\r\nTingkat kebisingan ≤55dB(A)\r\nDimensi produk 445x372x680 mm\r\nWeight 28,5 kg', 'https://www.tokopedia.com/siagamedikastore/oxygen-concentrator-gea-7f-8-sudah-ready', 'https://www.blibli.com/p/oxygen-concentrator-gea-7f-8/ps--SID-60039-00084', ''),
(70, 'Serenity Medical Protective Mask 3 Ply Earloop', 'CAT173', 'BRND288', 25000, 'https://i.imgur.com/kJRMLKK.png', 'Serenity Medical Protective Mask 3 Ply Earloop\r\n\r\nMasker bedah 3 lapis yang nyaman dipakai dan ampuh untuk menangkal virus, bakteri, debu, dan partikel-partikel miskrokopis lainnya.\r\n\r\n1 Box isi 50\r\n\r\n* Pastikan untuk menanyakan kesediaan stok sebelum memesan\r\n\r\nTerdaftar dengan registrasi AKD 21603021878', 'https://www.tokopedia.com/siagamedikastore/serenity-medical-protective-mask-3-ply-earloop', 'https://www.blibli.com/p/serenity-medical-protective-mask-3-ply-earloop/ps--SID-60039-00080?ds=SID-60039-00080-00001&source=SEARCH&sid=6a945add49070a98&cnc=false&pickupPointCode=PP-3151641&pid=SID-60039-00080', 'https://shopee.co.id/product/399419659/11834259961/'),
(71, 'SOLIDA PE PUTIH 25 MC UK.75X125C', 'CAT173', 'BRND714', 167000, 'https://i.imgur.com/1mXIKUs.jpg', 'SOLIDA PE PUTIH 25 MC UK.75X125C<br />\r\nUntuk Informasi lebih lagi mengenai produk kami silahkan kunjungi :<br />\r\n<br />\r\nWA : https://bit.ly/3wNkO2p<br />\r\nTokopedia : https://www.tokopedia.com/siagamedikastore<br />\r\nShopee : https://shopee.co.id/siaga_medika_s', 'https://www.tokopedia.com/cctvdahua/wireless-ip-cam-ezviz-c1hc-1080p-indoor-with-smart-ir-for-night-vision-c1hc', 'https://www.blibli.com/p/roughneck-t225-black-hollywood-syndrome-tshirt/ps--RO1-60023-02947', 'https://shopee.co.id/PAKET-PC-RYZEN-5-5600XT-16GB-NVME500GB-USER-ANANTA-SPLIT-1-i.345248040.8602152955'),
(72, 'Alcohol Swab (Box / 100 lbr)', 'CAT173', 'BRND288', 11469, 'https://i.imgur.com/41vTIxE.jpg', 'Merk : Serenity\r\nType : Alcohol Swab\r\n\r\nFEATURES\r\n\r\nIsopropyl alcohol, 70% by volume For external antiseptic use only Type: Medium, 2-PLY prep pads\r\nColor: White\r\n\r\nDescription\r\n\r\nSerenity Alcohol Swabs Single-use alcohol wipes for skin cleansing. It is absorbant fibre-free wipes\r\n\r\nProduk ini telah terdaftar kedalam E-Katalog (LKPP)\r\nFranko Jakarta\r\nHarga diatas belum termasuk ongkos kirim dan biaya instalasi.\r\n\r\nUntuk informasi lebih mengenai produk ini, silahkan klik Disini', 'https://www.tokopedia.com/siagamedikastore/serenity-alcohol-swab', 'https://www.blibli.com/p/serenity-alcohol-swab/ps--SID-60039-00065?ds=SID-60039-00065-00001&source=MERCHANT_PAGE&sid=198c1740277a4d8d&cnc=false&pickupPointCode=PP-3151641&pid=SID-60039-00065', 'https://shopee.co.id/Serenity-Alcohol-SWAB-i.399419659.8534248940'),
(73, 'FamilyDr AGM-513S Strip 25', 'CAT173', 'BRND571', 95000, 'https://i.imgur.com/yUyb7PM.jpg', 'Isi Test 25 Strip :\r\n25 Strip Test Model AGM - 513S\r\nFamilyDr.\r\n\r\nMy Doctor at Home\r\n-store at the dry and cool place ( simpan di tempat yang kering dan sejuk )\r\n\r\n-Use all the test strips within 4 months after the first opening (Gunakan semua strip uji dalam 4 bulan setelah pembukaan pertama )\r\n\r\n-Do Not Use if expiration date is past ( Jangan Gunakan jika tanggal kedaluwarsa sudah lewat )\r\n\r\nTipe Sampel : Darah Kapiler Segar dan Darah Vena\r\nWaktu Pengukuran : 5 Detik\r\nKalibrasi : Setara/Ekivalen Plasma\r\nMetode Pengujian : Metode elektrokimia', 'https://www.tokopedia.com/siagamedikastore/strip-25-familydr-agm-513s', 'https://www.blibli.com/p/familydr-agm-513s-strip-25/ps--SID-60039-00060?ds=SID-60039-00060-00001&source=MERCHANT_PAGE&sid=51f9fbd035a4fade&cnc=false&pickupPointCode=PP-3151641&pid=SID-60039-00060', 'https://shopee.co.id/FamilyDr-AGM-513S-Strip-25-i.399419659.5883391286'),
(74, 'Infant Incubator BT-500', 'CAT593', 'BRND800', 97761111, 'https://i.imgur.com/emECtVu.jpg', 'Infant Incubator BT-500\r\nMerk : Bistos\r\nType : BT-500\r\nTechnical Specifications\r\nPhysical Characteristics (with Standard Accessories)\r\nSize: 140 x 103 x 141 cm (H x L x D)\r\nWeight: 178 LB\r\nTemperature Control\r\nAir Temperature Control Range: 73° ~ 97° ± 33°F (Override > 102°F)\r\nSkin Temperature Control Range: 95° ~ 97° ± 33°F (Override > 102°F)\r\nHumidity Control\r\nHumidity Control Range: 40 ~ 95% ± 5% RH\r\nMeasurement Range: 15 ~ 99% ± 5% RH\r\nControl System: Ultrasonic & Stream\r\nWater Tank Capacity: 1,000 ml\r\nDisplay\r\nDisplay Panal: 7″ TFT Color LCD\r\nTrend: Up to 7 Days\r\nAlarm: 19 Kinds of Alarm\r\nMulti-Language Support: Yes\r\nHood\r\nHood Size: 39 x 91 x 51 CM (H x L x D)\r\nMattress Size: 38 x 73 CM\r\nMattress Tilt: 12°\r\nAir Velocity: < 10 CM/S (at 10 CM above the center of mattress)\r\nFeatures and Benefits\r\nStable / air skin temperature control\r\nAccurate humidity control\r\nComfortable & soft tilting structure\r\n7″ color TFT LCD display\r\nPowerful lifting structure (optional)\r\nO2 monitoring (optional)\r\nMasimo SpO2 technology (optional)\r\n\r\nUntuk informasi lebih mengenai produk ini, silahkan klik Disini :\r\nhttps://drive.google.com/file/d/1frKD2XY1Q-sdoQ5uPjmHUvQbYkxgar_O/view?usp=sharing', 'https://www.tokopedia.com/siagamedikastore', 'https://www.blibli.com/merchant/siagamed/SID-60039', 'https://shopee.co.id/siaga_medika_store'),
(75, 'Phototherapy Bistos – 400', 'CAT593', 'BRND800', 9716667, 'https://i.imgur.com/mUciln7.jpg', 'Phototherapy BT – 400\r\n\r\nMerk : Bistos\r\nType : BT-400\r\n\r\nBT-400 is the ultimate solution for Neonatal Jaundice treatment. BT-400 has blue LED lamp so that it is much more curable and effective than ultraviolet light lamp phototherapy such as florescent or halogen one.\r\n\r\nFeatures and Benefits\r\n– 20,000 hour operating time\r\n– High intensity with efficient treatment\r\n– Operating & total using time display\r\n– Timer, 2 level adjustable intensity\r\n– Light weight and compact size\r\n\r\n\r\nDescription\r\n\r\nTechnical Specifiations\r\n\r\nLight Source – Blue LEDs\r\nWavelength: Peak between 450 ~475 nm\r\nIntensity: 20 ~ 100W/CM²/nm at 40 cm\r\nVariation in intensity over 6 hours: ± 10% (within illumination area)\r\nEffective surface area: 40 x 20 cm\r\nFunction:\r\nIntensity\r\nLow Intensity: 20 ~ 70W/CM²/NM ± 10%\r\nHigh Intensity: 40 ~ 100W/CM²/NM ± 10%\r\nTimer: 30 min. ~ 999 hours\r\nHeat Output: Over 6 hours < 10 °C warmer than ambient (at 40 cm)\r\nLCD Display: Operating Hour, Total Hour, Timer, Adjustable Intensity\r\nInstallation: Mobile Cart, Pole Mounted, Incubator\r\nElectrical Mains:\r\nInput: 100-240 VAC, 50/60 Hz\r\nConsumption: 70VA\r\nSafety:\r\nLeakage Current: <100 μA\r\nAudible Noise: < 60 dB\r\nDimensions:\r\n200 CM\r\n34 x 21 x 7.5 CM\r\n\r\nProduk ini telah terdaftar kedalam E-Katalog (LKPP)\r\nFranko Jakarta\r\nHarga diatas belum termasuk ongkos kirim dan biaya instalasi.\r\n\r\nUntuk informasi lebih mengenai produk ini, silahkan klik Disini :\r\nhttps://drive.google.com/file/d/1-rPpUK1CtGVNmFSC7AwGHlpTkYOEog9w/view?usp=sharing', 'https://www.tokopedia.com/siagamedikastore', 'https://www.blibli.com/merchant/siagamed/SID-60039', 'https://shopee.co.id/siaga_medika_store'),
(76, 'Doppler BT-250 Bistos Fetal Doppler', 'CAT885', 'BRND800', 4750000, 'https://i.imgur.com/EWNIRYk.jpg', 'Doppler BT-250 Bistos Fetal Doppler\r\n\r\nMerk : Bistos\r\nType : BT-250\r\n\r\nFetal Doppler BT-250\r\n\r\nBT-250 is amazing color LCD fetal Doppler to check your fetal health.\r\n\r\n- High-Sensitivity Doppler probe\r\n- 3.2 TFT-color LCD Display\r\n- Ergonomie design\r\n- Up to U hours data saving\r\n- Multiple language support\r\n-Quick guide display\r\n- Comfortable Probe Holder\r\n- Long-lasting battery\r\n\r\n\r\n\r\nDescription\r\n\r\nFeatures\r\n\r\nHight-sensitivity Doppler prbobe\r\n3.2″ TFT-color LCD Display\r\nErgonomic design\r\nUp to 4 hours data saving\r\nmultiple languange support\r\nQuick guide display\r\ncomfortable probe holder\r\nlong lasting battery\r\n\r\nProduk ini telah terdaftar kedalam E-Katalog (LKPP)\r\nFranko Jakarta\r\nHarga diatas belum termasuk ongkos kirim dan biaya instalasi.\r\n\r\nUntuk informasi lebih mengenai produk ini, silahkan klik Disini :\r\nhttps://drive.google.com/file/d/1_BcfTHzHt_iIdZUSEguGblPzR_8wZZiH/view?usp=sharing', '', '', ''),
(77, 'Infant Incubator YP-90A', 'CAT593', 'BRND616', 34700000, 'https://i.imgur.com/wJXQRrS.jpg', 'Infant Incubator YP-90A<br /><br />Rp 34.700.000<br /><br />Merk : GEA Medical<br />Type : YP-90A<br /><br />Standard Configuration:<br /><br />YP-90A: Main body, mobile cabinet, temperature controller, baby compartment, I.V. pole, shelf;<br /><br />Optional Configuration:<br />B > 37 °C temperature Override Mode function, Vertical Height Adjustment Stand(VHA Stand),weighing system, the light source of fixed neonate bilirubin phototherapy equipment as LED bulb (only for YP-90AB), DC motor, disposable skin temperature sensor.<br /><br />Specification:<br /><br />Power supply: AC220V-230V/50Hz or AC110-120V/50-60Hz<br />Input power: 850VA<br />Mode of control: Air mode and baby mode controlled by micro-computer<br />Control range of air temperature: 25°C -37°C (override mode: 37-39°C)<br />Control range of baby temperature: 34-37°C (override mode: 37-38°C)<br />Accuracy of skin temperature sensor: ±0.3°C<br />Variability of temperature: < 0.5°C<br />Uniformity of temperature: < 0.8°C (mattress is on the horizontal position)<br />Inclination of the bassinet: ±12°<br />Noise inside hood: < 55dB(A) (Environment noise < 45dB(A))<br />Optional: with DC motor. Noise inside hood: < 45dB(A) (Environment noise < 35dB(A))<br />Failure alarm: over temperature alarm, deviation alarm, sensor failure alarm, fan motor alarm, power failure alarm, system alarm and so on<br /><br />Description Infant Incubator<br />Features:<br /><br />Two control modes: Air mode and baby mode controlled by micro-computer.<br />Set temperature, air temperature, baby temperature are displayed separately.<br />Natural air flow humidity.<br />Inclination of bassinet is adjustable.<br />Failure alarm indication.<br />RS-232 connector.<br />Oxygen input interface.<br /><br />Produk ini telah terdaftar kedalam E-Katalog (LKPP)<br />Franko Jakarta<br />Harga diatas belum termasuk ongkos kirim dan biaya instalasi.<br /><br />Untuk informasi lebih mengenai produk ini, silahkan klik Disini :<br />https://drive.google.com/file/d/1p9DZbUBlh9qvKK7yHNj3FVeVQsYpp25y/view?usp=sharing', NULL, NULL, NULL),
(78, 'Infant Incubator YP-910', 'CAT593', 'BRND616', 60800000, 'https://i.imgur.com/xsMgiH3.jpg', 'Infant Incubator YP-910<br /><br />Merk : GEA Medical<br />Type : YP-910<br /><br />Infant Incubator<br /><br />Standard Configuration: YP-910: The hood, the base, the mobile cabinet, the controller, I.V pole, shelf;<br /><br />Specification:<br /><br />a Power supply: AC220V-230V/50Hz or AC110-120V/50-60Hz<br /><br />a Max Power Output: 850VA (YP-910) 1000VA (YP-920)<br /><br />B Mode of control: Air mode and baby mode controlled by micro-computer<br /><br />B Air temperature control range: 25°C -37°C (override mode 37-39°C)<br /><br />B Baby temperature control range: 34-37°C (override mode 37-38°C)<br /><br />B Accuracy of skin temperature sensor: ±0.3°C<br /><br />B Temperature variability: < 0.5°C<br /><br />B Temperature uniformity: < 0.8°C (mattress is on the horizontal position)<br /><br />B Inclination of the bassinet: ±12°<br /><br />B Noise inside hood: < 45dB(A) (Environment noise < 35dB(A))<br /><br />B Failure alarm: over temperature alarm, deviation alarm, sensor failure alarm, fan motor alarm, power failure alarm, sensor box position alarm and system alarm. (YP-920 has low water alarm and tank position alarm)<br /><br />Humidity display range: 0%RH~99%RH<br /><br />B Humidity control range: 0%RH~90%RH: 0%RH~90%RH (for YP-920)<br /><br />B Accuracy of humidity: ±10%RH<br /><br />Environmental temperature:<br /><br />B Operating range: 20 °C ~30°C<br /><br />(Set temperature should be higher 3°C than the environment temperature)<br /><br />B Ambient air movement rate: <0.3m/s<br /><br />Product Packaging:<br /><br />B Packing: each unit is packed into two cartons<br /><br />a Dimension (Main body): 108.5cm x 64cm x 91cm (Cabinet): 112.5cm x 66.5cm x 72.5cm<br /><br />a Gross Weight (Main body): 63Kg (for YP-910) 66Kg (for YP-920)<br /><br />(Cabinet): 60Kg<br /><br /><br />Description<br /><br />P-910 INFANT INCUBATOR<br /><br />Air mode and baby mode controlled by micro-computer;<br />Humidity concentration display system;<br />Set temperature, air temperature, baby temperature, humidity concentration are displayed separately;<br />>37℃ temperature set function;<br />Failure alarm indication;<br />Embedded integrated sensor box;<br />Double wall hood, automatic air circulation device;<br />Inclination of bassinet is adjustable;<br />RS-232 connector.<br />Weighing system and Monitor shelf are optional<br /><br />Produk ini telah terdaftar kedalam E-Katalog (LKPP)<br />Franko Jakarta<br />Harga diatas belum termasuk ongkos kirim dan biaya instalasi.<br /><br />Untuk informasi lebih mengenai produk ini, silahkan klik Disini :<br />https://drive.google.com/file/d/13YyQe49x5r6thbriYmTPhFcZTWd_076c/view?usp=sharing<br />', NULL, NULL, NULL),
(79, 'Urilyzer 100 Pro semi-automated urine test ', 'CAT941', 'BRND903', 21268710, 'https://i.imgur.com/eUAcPbV.png', 'The Urilyzer® 100 Pro is a semi-automated urine test strip analyzer for single test strip reading. The system is provided with state-of-the-art operator and QC management as well as enhanced connectivity capabilities to meet the growing demands for compliance management and data capture. The Urilyzer® 100 Pro including POCT features is unique in it’s class.', '', '', ''),
(80, 'Micropipette Multi & Chanel Adjustable / Acura 855 (Vol. 0,5 – 10 ul)', 'CAT941', 'BRND903', 14755230, 'https://i.imgur.com/L0ceLRO.jpg', 'Merk : Socores Switzerland\r\nType : Micropipette Multi & Channel Socorex adjustable/Acura 855 (Vol.0,5-10 ul)\r\n\r\nProduct advantages\r\n• 8- and 12-channel models up to 350 μL\r\n• Light weight and perfect hand fitting\r\n• Precision digital display visible at all time\r\n• JustipTM adjustable tip ejector* fitting most tips\r\n• Swift-set user calibration system*\r\n• 360° rotation of volumetric module\r\n• Entirely autoclavable at 121°C\r\n\r\nDescription\r\n\r\nVolume : 0.5 – 10 μL,5 – 50 μL,20 – 200 μL,40 – 350 μL,\r\nDivision : 0.01 μL,0.1 μL,0.2 μL,0.4 μL\r\nInaccuracy (E%) :-Min. vol. ;< ± 3.5%,< ± 1.0%,< ± 0.9%,< ± 1.0%\r\n:-Mid. vol. ;< ± 2.5%,< ± 0.9%,< ± 0.8%,< ± 0.9%\r\n:-Max. vol ;< ± 1.5%,< ± 0.8%,< ± 0.7%,< ± 0.8%\r\nImprecision (CV%) :-Min. vol. ;< 3.0%1),< 1.0%,< 0.6%,< 0.6%\r\n:-Mid. vol. ;< 2.0%,< 0.7%,< 0.5%,< 0.5%\r\n:-Max. vol :< < 1.0%,< 0.4%,< 0.3%,< 0.3%\r\n\r\nProduk ini telah terdaftar kedalam E-Katalog (LKPP)\r\nFranko Jakarta\r\nHarga diatas belum termasuk ongkos kirim dan biaya instalasi.', '', '', ''),
(81, 'Micropipette Fix / Acura 815 Fix Volume', 'CAT941', 'BRND174', 3099120, 'https://i.imgur.com/rfeE6j5.jpg', 'Merk : Socores – Switzerland<br />Type : Micropipette Socorex Fix/ Acura 815 Fix Volume<br /><br />Product advantages<br />• Slim ergonomic design and light weight<br />• Soft plunger activation<br />• JustipTM adjustable tip ejector* fitting most tips<br />• User calibration with integrated key<br />• Colour coded smartie cap<br />• Selection includes macropipette volumes<br />• Entirely autoclavable at 121°C<br /><br /><br />Volume = 1 μL,5 μL,10 μL,10Y μL,20 μL,25 μL,50 μL,100 μL,200 μL,250 μL,500 μL,1000 μL<br />Inaccuracy (E%) = < ± 2.0%,< ± 1.4%,< ± 0.7%,< ± 0.7%,< ± 0.75%,< ± 0.7%,< ± 0.7%,< ± 0.7%,< ± 0.7%,< ± 0.7%,< ± 0.7%,< ± 0.6%<br />Imprecision (CV%) = < 1.0%,< 1.0%,< 0.7%,< 0.8%,< 0.5%,< 0.6%,< 0.4%,< 0.3%,< 0.3%,< 0.4%,< 0.3%,< 0.2%<br />Tip style = Ultra 10 μL,Ultra 10 μL,Ultra 10 μL,200 μL,200 μL,200 μL,200 μL,200 μL,200 μL,1000 μL,1000 μL,1000 μL<br /><br />Produk ini telah terdaftar kedalam E-Katalog (LKPP)<br />Franko Jakarta<br />Harga diatas belum termasuk ongkos kirim dan biaya instalasi.', '', '', ''),
(89, 'Doppler BT – 220 C Bistos Hand held Fetal Doppler', 'CAT885', 'BRND800', 1472000, 'https://i.imgur.com/9TNyWDW.jpg', 'Doppler BT – 220 C Bistos Hand held Fetal Doppler<br /><br />Rp 1.472.000<br /><br />Merk : Bistos<br />Type : BT – 220 C<br />Display : Mono, 2.4″ Color TFT LCD<br />Dimensions : Body 132 mm x 66 mm x 27 mm<br />: probe 162 mm x 29.5 mm x 27.3 mm<br />Utrasound Frequency :3 MHz<br />Ultrasound Intensity :10 mW/cm2 or less<br />Fetal Heart Rate Range : L:50-240 bpm (+/-2% or +/- 2bpm)<br />: C:30-240 bpm (+/- 2% or +/- 2bpm)<br />AST Function : Acoustic stimulator<br />Mother Heart Rate Range : 40-200 bpm (+/- 2% or +/- 2 bpm)<br />Body Fat Measurement* : BIA & Impedance of upper Half body<br />Audio Output :1.2W (built in speaker), 3.5 mm Phone jack<br />Computer Interface : Sound Card (BCM220)<br />Battery Life :3 hrs<br />Accessories :carrying case, disposable batteries (2 x 1.5V AA), gel (60ml)<br />Option :Rechargeable battery (NIMH 1.2V AA X2)Rechargeable USB Cable<br />color : white<br />PC Sofware :BCM-220 Record and play fetal heart sound (.wav format)<br /><br />Description<br /><br />Monitor your baby’s heart beat right from your home! – FDA Approved for Safe Use<br />HI-bebe is a pocket size Doppler for obstetricians, midwives and pregnat woman.<br /><br />High-sensitivity doppler probe (2/3 MHz available)<br />2.4 inch color TFT LCD display<br />Acoustic stimulator and waterproof probe<br />Body fat analysis<br />Mother HR function<br />Optional rechargeable battery<br /><br />Produk ini telah terdaftar kedalam E-Katalog (LKPP)<br />Franko Jakarta<br />Harga diatas belum termasuk ongkos kirim dan biaya instalasi.<br /><br />Untuk informasi lebih mengenai produk ini, silahkan klik Disini<br />https://drive.google.com/file/d/121hdrJ--6yoUo-yuK6hljjvgW0ffqHbQ/view?usp=sharing', '', '', ''),
(90, 'Urilyzer Auto - automated urine test strip analyzer', 'CAT941', 'BRND903', 864603420, 'https://i.imgur.com/fZXvFmu.png', 'The Urilyzer® Auto is a newly designed fully-automated urine test strip analyzer introducing the pipetting technique in combination with a new measuring head to analyze the CombiScreen® 11 Auto urine test strip. In addition the system has a physical ­measurement cell module for determination of specific gravity, color and turbidity. The system is specifically designed to improve the accuracy and safety of urine test strip evaluation.', NULL, NULL, NULL),
(97, 'FamilyDr AGM-513S set 25 Strip', 'CAT885', 'BRND571', 175000, 'https://i.imgur.com/UofS5Wc.png', 'FamilyDr AGM-513S di desain simpel dalam pengunaan sehingga memonitor gula darah menjadi lebih nyaman.\r\n\r\nSpesifikasi :\r\n- Sampel darah yang digunakan darah utuh kapiler dan vena.\r\n- Volume Sampel 0,5µℓ\r\n- Rentang pengukuran 20-600 mg/dL\r\n- Waktu pengukuran 5 detik\r\n- Kapasitas 500 memori\r\n- Manajemen Data Micro USB\r\n\r\nPerhatian :\r\nSebaiknya gunakan semua tes strip dalam 4 bulan setelah pembukaan pertama.\r\n\r\nIsi Paket Penjualan :\r\nAGM-513S Unit, 25 Strip, Lancing Device, Lancet, Batterai, Tas, Buku Manual, Kartu Garansi\r\n\r\nNomor Registrasi Alat Kesehatan :\r\n20101025181', 'https://www.tokopedia.com/siagamedikastore/familydr-agm-513s-set', 'https://www.blibli.com/p/familydr-agm-513s/ps--SID-60039-00059', 'https://shopee.co.id/FamilyDr-AGM-513S-set-i.399419659.6783396028?sp_atk=259356a3-3d6a-46c2-b10c-23defeb69a9d'),
(98, 'Head Lamp BT-410 Medical Head Lamp', 'CAT885', 'BRND800', 1274000, 'https://i.imgur.com/hf2s83Q.jpg', 'Head Lamp BT-410 Medical Head Lamp<br /><br />Rp 1.274.444<br /><br />Merk : Bistos<br />Type : BT-410<br /><br />Specification<br /><br />Extensive LED lifetime (more than 50,000 hours)<br />More than 4 hours of continuous use<br />loupe (3.5 times)<br />Illumination: 15,000 Ix (at 25 cm working distance)<br />Color Temperature: 6,000 Kelvin<br />Weight: 119g<br />Headband size: 534 -638 mm<br />Operation hour: 4 hours<br />Recharge up to: 800 times<br />Battery type: lithium-ion (built-in protected circuit module)<br /><br /><br />Description<br /><br />Features<br /><br />A head lamp with a 2-way adjustable headband – made from a durable, but yet comfortable plastic. It comes with a single sweat cover that snaps on and off for easy cleaning.<br />The top lamp with the fixed feature<br />2 batteries with a single charger, ready to be charged up.<br />3.5x loupe (optional use – you can use your own loupes or prescription eyewear without any problems).<br />An operator’s manual.<br />Bistos America’s dependable service (not that you’ll ever need it – our products are dependable)<br /><br />Produk ini telah terdaftar kedalam E-Katalog (LKPP)<br />Franko Jakarta<br />Harga diatas belum termasuk ongkos kirim dan biaya instalasi.<br /><br />Untuk informasi lebih mengenai produk ini, silahkan klik Disini :<br />https://drive.google.com/file/d/1sALieJd2W4BIkdgOJRXgICRM5AaVDzU2/view?usp=sharing', NULL, NULL, NULL),
(99, 'Neo Back Correction Shoulder Belt JC-7003', 'CAT885', 'BRND701', 778000000, 'https://i.imgur.com/68i4PTT.jpg', 'Merk : HUMAN MEDITEK\r\nType : HMTS-30E\r\n\r\nFeatures:\r\nValidated for a wide range of instruments\r\nRecord keeping system\r\nExcellent load capacity\r\nLow cost per cycle\r\nEasy to install and to operate\r\nGentle on your instrument\r\n\r\n\r\nDescription\r\n\r\nHMTS-30E\r\nA compact design associated to the highest degree of flexibility define the HMTS-30E. By providing rapid cycles for all types of\r\ninstrument loads, this plasma sterilizer will be your solution for a quick turnaround of instruments in the operating rooms.\r\nLike the rest of the HMTS line of products, this model is easy to operate, gentle on your instruments and will satisfy all your\r\ndocumentation requirements. Validated for a wide range of medical devices, including endoscopes with long and narrow lumens,\r\nthe versality and flexibility of the HMTS-30E are unrivale.\r\nProduk ini telah terdaftar kedalam E-Katalog (LKPP)\r\nFranko Jakarta\r\nHarga diatas belum termasuk ongkos kirim dan biaya instalasi.\r\nUntuk informasi lebih mengenai produk ini, silahkan klik Disini :\r\nhttps://drive.google.com/file/d/1_nOaBPOaU7_ma0mYxqFcrnXlOp0DTNue/view?usp=sharing', '', '', ''),
(100, 'Low Temp Plasma Sterilizer HMTS-80', 'CAT885', 'BRND701', 1300000000, 'https://i.imgur.com/4MNJeO7.jpg', 'Dimensions, Weight Size\r\n– Width : 750 mm\r\n– Height : 1670 mm\r\n– Depth : 835 mm\r\nWeight : 430 kg\r\nSterilization Chamber :\r\n• Total Volume : 80 L\r\n• Usable Volume : 71 L\r\n• Dimensions (W x H x D) : Ø 400mm x 650mm\r\n• Shelf Strength : 35 kg\r\n• Shelf Dimensions (W x D) : Upper : 380 mm x 635 mm\r\nLower : 260 mm x 635 mm\r\n\r\nProduk ini telah terdaftar kedalam E-Katalog (LKPP)\r\nFranko Jakarta\r\nHarga diatas belum termasuk ongkos kirim dan biaya instalasi.\r\n\r\nUntuk informasi lebih mengenai produk ini, silahkan klik Disini :\r\nhttps://drive.google.com/file/d/1sUG00D3XwSXK6GkBjXvbfCMH-eyrW5P9/view?usp=sharing', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `KodeSEO` int(11) NOT NULL,
  `page_url` varchar(350) NOT NULL,
  `PageTitle` varchar(300) NOT NULL,
  `Description` varchar(350) NOT NULL,
  `FokusKeyword` varchar(400) NOT NULL,
  `WaktuBuat` timestamp NOT NULL DEFAULT current_timestamp(),
  `WaktuUpdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`KodeSEO`, `page_url`, `PageTitle`, `Description`, `FokusKeyword`, `WaktuBuat`, `WaktuUpdate`) VALUES
(46, 'Halaman Home', 'PT. Siaga Medika Abadi Karya: Perusahaan Ritel Alat Kesehatan Terbaik di Makassar', 'PT Siagamedika Abadi Karya adalah perusahaan yang mengkhususkan diri dalam distribusi alat kesehatan berkualitas tinggi kepada berbagai lembaga medis dan fasilitas kesehatan. Sebagai salah satu distributor terkemuka di industri ini, kami berkomitmen untuk menyediakan solusi alat kesehatan yang inovatif dan canggih guna mendukung perawatan kesehatan', 'Distributor alat kesehatan, Alat medis terbaik, Distributor peralatan kesehatan, Peralatan medis berkualitas, Alat kesehatan profesional, Supplier alat medis terpercaya, Peralatan kesehatan canggih, Distributor alat diagnosa, Alat medis modern, Distributor alat bedah', '2023-08-29 13:28:48', '2023-08-29 13:28:48'),
(47, 'Halaman Produk', 'Daftar Produk - PT. Siaga Medika Abadi Karya: Perusahaan Ritel Alat Kesehatan Terbaik di Makassar', 'PT Siagamedika Abadi Karya adalah perusahaan yang mengkhususkan diri dalam distribusi alat kesehatan berkualitas tinggi kepada berbagai lembaga medis dan fasilitas kesehatan. Sebagai salah satu distributor terkemuka di industri ini, kami berkomitmen untuk menyediakan solusi alat kesehatan yang inovatif dan canggih guna mendukung perawatan kesehatan', 'Distributor alat kesehatan, Alat medis terbaik, Peralatan kesehatan canggih, Distributor alat diagnosa, Alat medis modern, Distributor alat bedah', '2023-08-29 13:41:16', '2023-08-29 13:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `KodeUser` int(11) NOT NULL,
  `NamaUser` varchar(45) NOT NULL,
  `Username` varchar(250) NOT NULL,
  `Password` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`KodeBanner`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`SKU_BRND`);

--
-- Indexes for table `ip_data`
--
ALTER TABLE `ip_data`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kode_kategori`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`KodeProduk`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`KodeSEO`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`KodeUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `KodeBanner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `KodeProduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `KodeSEO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `KodeUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
