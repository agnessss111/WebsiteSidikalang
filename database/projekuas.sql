-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jul 2023 pada 19.39
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekuas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_list`
--

CREATE TABLE `book_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `package_id` int(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending,1=confirm, 2=cancelled\r\n',
  `schedule` date DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `book_list`
--

INSERT INTO `book_list` (`id`, `user_id`, `package_id`, `status`, `schedule`, `date_created`) VALUES
(2, 4, 8, 3, '2021-06-21', '2021-06-19 08:37:59'),
(3, 5, 8, 3, '2021-06-18', '2021-06-19 11:51:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id` int(30) NOT NULL,
  `title` text DEFAULT NULL,
  `tour_location` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `upload_path` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id`, `title`, `tour_location`, `description`, `upload_path`, `status`, `date_created`) VALUES
(1, 'Sejarah Sidikalang', 'sidikalang', '&lt;p style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 26px; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600;&quot;&gt;A.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600;&quot;&gt;Sebelum Penjajahan Belanda&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 26px; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;Pemerintahan di Dairi telah ada jauh sebelum kedatangan penjajahan Belanda. Walaupun saat itu belum dikenal sebutan Wilayah/Daerah Otonomi, tetapi kehadiran sebuah pemerintahan pada zaman tersebut dapat dirasakan oleh masyarakat dengan adanya pengakuan terhadap Raja-raja Adat. Pemerintahan masa itu dikendalikan oleh Raja Ekuten/Takal Aur/Kampung/Suak dan Pertaki sebagai raja-raja adat merangkap sebagai Kepala Pemerintahan.&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 26px; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;Adapun struktur Pemerintahan masa itu diuraikan sebagai berikut :&lt;/p&gt;&lt;ol style=&quot;padding: 0px 0px 0px 15px; margin-right: 0px; margin-bottom: 20px; margin-left: 20px; list-style: none; border: 0px; outline: none; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Raja Ekuten, sebagai pemimpin satu wilayah (suak) atau yang terdiri dari beberapa suku/kuta/kampong Raja Ekuten disebut juga Takal Aur, yang merupakan Kepala Negeri.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Pertaki, sebagai pemimpin satu Kampung, setingkat dibawah Raja Ekuten.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Sulang Silima, sebagai pembantu pertaki pada setiap kuta (Kampung), yang terdiri dari : 1) Perisang-isang; 2) Perekur-ekur; 3) Pertulan tengah; 4) Perpunca ndiadep; 5) Perbetekken.&lt;/li&gt;&lt;/ol&gt;&lt;p style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 26px; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;Menurut berbagai literatur sejarah bahwa wilayah Dairi sangat luas dan pernah jaya dimasa lalu. Sesuai dengan Struktur Organisasi Pemerintahan tersebut di atas, maka wilayah Dairi dibagi atas 5 (lima) wilayah (suak/aur) yaitu :&lt;/p&gt;&lt;ol style=&quot;padding: 0px 0px 0px 15px; margin-right: 0px; margin-bottom: 20px; margin-left: 20px; list-style: none; border: 0px; outline: none; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Suak/Aur SIMSIM, meliputi wilayah : Salak, Kerajaan, Siempat Rube, Sitellu Tali Urang Jehe, Sitellu Tali Urang Julu dan Manik.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Suak/Aur PEGAGAN dan Kampung Karo, meliputi wilayah : Silalahi, Paropo, Tongging, Pegagan Jehe dan Tanah Pinem.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Suak/Aur KEPPAS, meliputi wilayah : Sitellu Nempu, Silima Pungga-Pungga, Lae Luhung dan Parbuluan.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Suak/Aur BOANG, meliputi wilayah : Simpang Kanan, Simpang Kiri, Lipat Kajang, Belenggen, Gelombang Runding dan Singkil (saat ini Wilayah Aceh)&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Suak/Aur KLASEN, meliputi wilayah : Sienem koden, Manduamas dan Barus&lt;/li&gt;&lt;/ol&gt;&lt;p style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 26px; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600;&quot;&gt;B. Masa Penjajahan Belanda&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 26px; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;Pada masa perjuangan melawan penjajahan Belanda, sejarah mencatat bahwa Raja Sisisngamangaraja XII semasa hidupnya cukup lama berjuang di Daerah Dairi, karena wilayah Bakkara dan wilayah Toba pada umumnya telah dibakar habis dan dikuasai oleh Belanda. Kondisi tersebut tidak memungkinkan lagi untuk bertahan dan meneruskan perjuangannya, sehingga beliau hijrah ke Dairi, beliau wafat pada tanggal 17 Juni 1907 di Ambalo Sienem Koden yang ditembak atas perintah komandan Batalion Marsuse Belanda, Kapten Cristofel.&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 26px; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;Pada masa penjajahan Belanda yang terkenal dengan politik Devide Et Impera, maka nilai-nilai, pola dan struktur Pemerintahan di Dairi mengalami perubahan yang sangat cepat dengan mengacu pada system dan pembagian wilayah Kerajaan Belanda, maka Dairi saat ini ditetapkan pada suatu Onder Afdeling yang dipimpin seorang Cotroleur berkebangsaan Belanda dan dibantu oleh seorang Demang dari penduduk Pribumi/Bumi Putra. Kedua pejabat tersebut dinamai Controleur Der Dairi Landen dan Demang Der Dairi Landen.&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 26px; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;Pemerintah Dairi landen adalah sebagian dari wilayah Pemerintahan Afdeling Batak Landen yang dipimpin Asisten Residen Batak Landen yang berpusat di Tarutung. Sistem ini berlaku sejak dimulainya perjuangan pahlawan Raja Sisingamangaraja XII dan berlaku juga sampai penyerahan Belanda atas penduduk Nippon (Jepang) pada tahun 1942.&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 26px; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;Selama penjajahan Belanda inilah Daerah Dairi mengalami sangat banyak penyusutan wilayah, karena politik penjajahan kolonial Belanda yang membatasi serta menutup hubungan dengan wilayah-wilayah Dairi lainnya yaitu :&lt;/p&gt;&lt;ol style=&quot;padding: 0px 0px 0px 15px; margin-right: 0px; margin-bottom: 20px; margin-left: 20px; list-style: none; border: 0px; outline: none; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Tongging, menjadi wilayah Tanah Karo;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Manduamas dan Barus, menjadi wilayah Tapanuli Tengah;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Sienem Koden (Parlilitan), menjadi wilayah Tapanuli Utara;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Simpang Kanan, Simpang Kiri, Lipat Kajang, Gelombang, Runding dan Singkil menjadi wilayah Aceh.&lt;/li&gt;&lt;/ol&gt;', 'uploads/book_1', 127, '2023-07-18 20:58:52'),
(2, 'Jumlah Penduduk', 'sidikalang', '&lt;p style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 26px; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;Berdasarkan proyeksi penduduk pertengahan tahun 2014, jumlah penduduk Kabupaten Dairi 279.090 jiwa, terdiri dari&amp;nbsp;&lt;span style=&quot;padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600;&quot;&gt;139.401 penduduk laki-laki ( 49,95% ) dan 139.689 penduduk perempuan (50.05%)&lt;/span&gt;&amp;nbsp;dengan rasio jenis kelamin 99.79%, dan rata-rata kepadatan penduduk mencapapai 144.77 jiwa/km2.&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 26px; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 26px; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;Sementara itu jumlah rumah tangga adalah 66.825 dengan rata-rata pendududk tiap rumah tangga sebesar 4.18 jiwa/rumah tangga. Menurut persebaran penduduk tiap kecamatan, penduduk yang lebih banyak adalah di Kecamatan Sidikalang, yaitu 50.050 jiwa (17.93% ), dengan rata-rata kepadatan penduduk mencapai 708.22 jiwa/km2, sedangkan penduduk yang paling sedikit adalah di Kecamatan Silahisabungan, yaitu 4.605 jiwa ( 1.65% ), dengan rata-rata kepadatan penduduk hanya 60.90 jiwa/km2.&lt;/p&gt;', 'uploads/book_2', 127, '2023-07-18 23:47:53'),
(3, 'Kesehatan', 'sidikalang', '&lt;p style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 26px; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;Ketersediaan bidan yang cukup di seluruh desa untuk meningkatkan cakupan pertolongan kelahiran/persalinan yang baik sebagai salah satu upaya untuk menurunkan Angka Kematian Ibu ( AKI ) dan Angka Kematian Bayi ( AKB . Disamping itu, kehadiran bidan ini juga diharapkan akan meningkatkan kesadaran masyarakat untuk berperilaku hidup sehat.&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 26px; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;Pada Tahun 2015, jumlah bidan yang bertugas di Kabupaten Dairi adalah 400 orang, terdiri dari 234 orang PNS dan 166 orang berstatus PTT yang tersebar diseluruh kecamatan dengan jumlah yang bervariasi. Bila dibandingkan dengan jumlah desa/kelurahan yang ada, jumlah ini tergolong cukup karena setiap desa/kelurahan yang ada, jumlah ini tergolong cukup karena setiap desa/kelurahan dapat diisi rata-rata 1 hingga 2 orang bidan desa. Kecamatan Sidikalang memiliki jumlah bidan terbanyak rata-rata 10 sampai 11 orang per desa/kelurahan sedangkan Berampu, Sitinjo dan Tigalingga sementara 11 kecamatan yang lain adalah antara 1 hingga 2 orang per desa/kelurahan.&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 26px; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;Persalinan yang ditolong oleh tenaga medis seperti dokter dan bidan dapat dianggap lebih baik dari pada yang dilakukan oleh dukun ataupun family dan lainnya. Pertolongan kelahiran untuk ibu bersalin yang ditolong oleh bidan sebanyak 75.59 %.&lt;/p&gt;', 'uploads/book_3', 127, '2023-07-18 23:51:58'),
(4, 'Lambang daerah', 'sidikalang', '&lt;ol style=&quot;padding: 0px 0px 0px 15px; margin-right: 0px; margin-bottom: 20px; margin-left: 20px; list-style: none; border: 0px; outline: none; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Lingkaran kiri luar terdiri dari 17 ( tujuh belas ) kuntum bunga kapas dibagian bawah terdapat 8 ( delapan ) batang rotan serta lingkaran kanan luar terdiri dari 45 ( empat puluh lima ) butir padi, semuanya menggambarkan hari sejarah Proklamasi Kemerdekaan Republik Indonesia 17 Agustus 1945, Kesatuan Lingkaran tersebut juga mencerminkan kebulatan tekad Rakyat Dairi melawan, membumihanguskan dan menyinhkirkan Imperialisme, Kolonialisme serta paham-paham sejenisnya yang tidak sesuai dengan Pancasila dan Undang-undang Dasar 1945.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Bintang segi lima dibagian tengah atas menggambarkan kerukunan, keharmonisan, toleransi dan kebebasan kehidupan beragama Masyarakat Dairi yang sesuai dengan Pancasila dan Undang-undang Dasar 1945.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Gunung dibagian tengah ( dibawah bintang ) mencerminkan kehidupan Rakyat Dairi yang tenang, tentram dan aman serta mempunyai ciri-ciri yang luhur membangun Dairi dengan menghayati, mengamalkan Pancasila dan Undang-undang Dasar 1945 mewujudkan Masyarakat adil dan makmur. Gunung juga mencerminkan Daerah yang indah permai dengan berbagai panorama yang indah dimana seluruh rakyatnya merasa bertanggungjawab penuh akan kelestarian lingkungan.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Rantai yang menghubungkan gunung dengan perisai melambangkan tatanan kehidupan masyarakat yang berkepribadian luhur, memiliki semangat gotong-royong yang dinamis sebagai cerminan dari manusia pembangunan yang tangguh, berpendidikan, taqwa dan beriman.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Bambu runcing melambangkan jiwa dan semangat juang patriotis Rakyat Dairi melawan dan mengusir Imperialis, Kolonialisme, Feodalisme, Komunisme serta faham-faham sejenis yang bertentangan dengan pancasila dan Undang-undang Dasar 1945.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Perisai dibagian dalam dibagi dalam empat ruang dimana terdapat empat jenis tanaman yakni kemenyaan ( merupakann tanaman khas di Indonesia ), Kopi, Tembakau dan Nilam serta ditopang oleh batang rotan menggambarkan bahwa komoditi tersebut merupakan komoditi utama Kabupaten Dairi.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Rumah Pakpak Dairi sebagai Asset budaya melambangkan rumah tempat berlindung yang mencerminkan bahwa Rakyat Dairi akan melindungi dan menjaga kemerdekaan dan kedaulatan, bangsa ini dari segala rintangan, ancaman, gangguan dan hambatan dan tantangan pembangunan.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Selembar ulos Batak juga sebagai asset biudaya yang merupakan alat pemersatu dan pengikat persaudaraan dalam adat istiadat masyarakat Dairi ( terdiri dalam empat puak Batak ) menggambarkan bahwa untuk mencapai cita-cita pembangunan masyarakat yang adil dan harus bersatu dengan motto &ldquo;Bersatu kita teguh bercerai kita runtuh&rdquo;.&lt;/li&gt;&lt;/ol&gt;&lt;h4 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 0.5em; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 1.4; font-weight: 600; font-size: 17px; font-family: Poppins; color: rgb(44, 47, 52);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;&quot;&gt;KETERANGAN DAN ARTI LAMBANG&lt;/span&gt;&lt;/h4&gt;&lt;ol style=&quot;padding: 0px 0px 0px 15px; margin-right: 0px; margin-bottom: 20px; margin-left: 20px; list-style: none; border: 0px; outline: none; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Warna Kuning, mencerminkan kesabaran, kesejahteraan dan keluhuran.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Warna Putih, mencerminkan kesucian dan keiklasan jiwa rakyat Dairi.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Warna Hijau, mencerminkan kemakmuran dan kesuburan daerah Dairi.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Warna Biru, mencerminkan keindahan dan kesetiaan kepada Negara.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Warna Merah, mencerminkan keberanian/semangat yang menyala-nyala.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Warna Hitam, mencerminkan kesaksian yang teguh, kuat dan ulet yang dimiliki oleh rakyat Dairi dalam merebut dan mempertahankan kemerdekaan dan kedaulatan Republik Indonesia.&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 5px; list-style: decimal; border: 0px; outline: none;&quot;&gt;Warna Coklat, mencerminkan ketabahan serta semangat dan cita-cita untuk terus maju bergiat membangun.&lt;/li&gt;&lt;/ol&gt;', 'uploads/book_4', 127, '2023-07-18 23:55:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inquiry`
--

CREATE TABLE `inquiry` (
  `id` int(30) NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `inquiry`
--

INSERT INTO `inquiry` (`id`, `name`, `email`, `subject`, `message`, `status`, `date_created`) VALUES
(8, 'hhh', 'admin@example.com', 'kk', 'jj', 1, '2023-07-18 21:59:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `packages`
--

CREATE TABLE `packages` (
  `id` int(30) NOT NULL,
  `title` text DEFAULT NULL,
  `tour_location` text DEFAULT NULL,
  `cost` double NOT NULL,
  `description` text DEFAULT NULL,
  `upload_path` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 =active ,2 = Inactive',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `packages`
--

INSERT INTO `packages` (`id`, `title`, `tour_location`, `cost`, `description`, `upload_path`, `status`, `date_created`) VALUES
(9, 'Air Terjun Lae Pendaroh', 'Jalan Sidikalang, Sitinjo 1, Sitinjo Sumatra Utara', 0, '&lt;p style=&quot;margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 1.89; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 18px; outline: none !important;&quot;&gt;Destinasi wisata di Dairi yang pertama ditempati oleh Air Terjun Lae Pendaroh. Faktanya, air terjun ini bukan saja memikat karena keindahannya, melainkan air terjun ini merupakan salah satu air terjun terbesar di Sumatera! Wah, epik ya?&lt;/p&gt;&lt;p&gt;&lt;div class=&quot;wrapper-ads inarticle-ads-wrapper&quot; style=&quot;color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 18px; outline: none !important;&quot;&gt;&lt;div class=&quot;inarticle-ads&quot; style=&quot;outline: none !important;&quot;&gt;&lt;div id=&quot;div-gpt-ad-inarticle2&quot; class=&quot;&quot; data-google-query-id=&quot;CPOH5cvSmIADFcFNfQodvlsEtg&quot; style=&quot;width: 728px; max-width: 100%; margin: 0px auto; text-align: center; outline: none !important;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; outline: none !important; margin: 0px 0px 20px; line-height: 1.89; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;Air terjun ini juga menawarkan berbagai spot-spot menarik untuk wisatawan yang ingin mengabadikan moment wisatanya. Jika tertarik, kamu bisa mengunjungi air terjun ini yang beralamat di Jalan Sidikalang, Sitinjo 1, Sitinjo Sumatra Utara.&lt;/p&gt;', 'uploads/package_9', 1, '2023-07-18 23:17:08'),
(10, 'Puncak Sidiangkat', 'Jalan Subulussalam –  Sidikalang no 171, Sidiangkat, Dairi Sumatra Utara', 0, '&lt;p style=&quot;margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 1.89; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 18px; outline: none !important;&quot;&gt;Puncak sidiangkat termasuk&amp;nbsp;&lt;a title=&quot;21 Jul 21 | 10:45 5 Rekomendasi Hotel dan Resor untuk Staycation Seru di Kediri&quot; href=&quot;https://www.idntimes.com/travel/destination/fatma-roisatin-nadhiroh/rekomendasi-hotel-dan-resor-untuk-staycation-seru-di-kediri-c1c2&quot; style=&quot;color: rgb(237, 33, 38); outline: none !important;&quot;&gt;tempat wisata favorit&lt;/a&gt;&amp;nbsp;di Dairi karena panoramanya yang fotogenik banget! Spot-spot foto kece dan instagramable menjadi daya tarik yang tidak terbantahkan. Padahal, tempat ini relatif kecil dan areanya tidak seluas tempat wisata lainnya.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 1.89; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 18px; outline: none !important;&quot;&gt;Namun lagi-lagi, tempat mungil yang menawarkan spot foto terbaik lah yang akan memenangkan hati wisatawan! Lokasi tempat ini beralamat di Jalan Subulussalam &ndash;&amp;nbsp; Sidikalang no 171, Sidiangkat, Dairi Sumatra Utara&lt;/p&gt;', 'uploads/package_10', 1, '2023-07-18 23:21:23'),
(11, ' Rumah Adat Pakpak', 'kawasan kota Sidikalang, Kab. Dairi, Sumatera Utara.', 0, '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 18px;&quot;&gt;Jika kamu gemar berwisata budaya, rumah adat ini mungkin bisa jadi pilihan tepat. Di sini, kamu akan terjamahi dengan edukasi dan pengetahuan tentang latar belakang budaya dari adat Pakpak ini. Nama Pak-pak yang diambil dari salah satu suku di Sumatera Utara yaitu Suku Pakpak mengisahkan asal usul dari eksistensi rumah adat ini. Lokasi alamat nya berada di kawasan kota Sidikalang, Kab. Dairi, Sumatera Utara.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_11', 1, '2023-07-18 23:22:57'),
(12, 'Danau Sicike-Cike', ' Desa Pancar Nuli, Kecamatan Sidikalang, Kabupaten Dairi, Sumut', 0, '&lt;p style=&quot;margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 1.89; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 18px; outline: none !important;&quot;&gt;Selain Danau Toba, Sumatera Utara juga memiliki berbagai danau ternama lainnya yang salah satunya adalah Danau Sicike-Cike. Air danau nya yang jernih benar-benar memanjakan mata kamu dan merileksan otot-ototmu.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 1.89; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 18px; outline: none !important;&quot;&gt;Hamparan sekiling danaunya sangat permai ditumbuhi pohon-pohon hijau. Cocok banget bagi kamj yang pengen hunting foto! Lokasi danau ini berada di Desa Pancar Nuli, Kecamatan Sidikalang, Kabupaten Dairi, Sumut&lt;/p&gt;', 'uploads/package_12', 1, '2023-07-18 23:24:19'),
(13, 'Pemandian Lau Timah', 'Desa Lau Renun, Kecamatan Tanah Pinem, Dairi Sumatra Utara.', 0, '&lt;p style=&quot;margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 1.89; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 18px; outline: none !important;&quot;&gt;Konsep tempat wisata ini bisa dibilang sangat&amp;nbsp;&lt;em style=&quot;outline: none !important;&quot;&gt;back to nature&lt;/em&gt;. Kendati demikian, air kolam ini berasal dari celah bebatuan alami yang sangat dingin dan segar sekali tentunya. Soal pemandangannya, Lau Timah menyuguhi spot-spot dan view kece untuk kamu berfoto.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 1.89; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 18px; outline: none !important;&quot;&gt;Di samping itu, tarif masuknya pun relatif murah yaitu hanya Rp20 ribu. Belum termasuk parkir. Lokasi nya berada di Desa Lau Renun, Kecamatan Tanah Pinem, Dairi Sumatra Utara.&lt;/p&gt;', 'uploads/package_13', 1, '2023-07-18 23:26:06'),
(14, 'Tao Silalahi', 'Silalahi I, Silalahi III, Silalahi Sabungan, Dairi Sum', 0, '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 18px;&quot;&gt;Letak tempat wisata yang satu ini berdekatan dengan Danau Toba yang pasti sudah melegenda di telinga kalian. Pemandangan alamnya bisa jadi objek&amp;nbsp;&lt;/span&gt;&lt;em style=&quot;color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 18px; outline: none !important;&quot;&gt;background&lt;/em&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 18px;&quot;&gt;&amp;nbsp;foto kamu,&amp;nbsp;&lt;/span&gt;&lt;em style=&quot;color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 18px; outline: none !important;&quot;&gt;lho&lt;/em&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 18px;&quot;&gt;! Kamu bisa memilih spot-spot fotogenik di hamparan bukit hijaunya atau bentangan pantainya. Tempat ini berlokasi di Silalahi I, Silalahi III, Silalahi Sabungan, Dairi Sumut&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_14', 1, '2023-07-18 23:29:14'),
(15, 'Sungai Lau Renun', 'Dusun Rambah Serit, Desa Lau Sireme, Kecamatan Tiga Lingga, Kabupaten Dairi, Sumatera Utara.', 0, '&lt;p style=&quot;margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 1.89; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 18px; outline: none !important;&quot;&gt;Sungai ini merupakan yang terpanjang di Dairi dan dengan arusnya yang deras, umumnya digunakan oleh warga sekitar untuk kegiatan arung jeram.&amp;nbsp;Wisatawan yang ingin mencoba kegiatan ini juga harus menggunakan pemandu untuk memastikan keselamatan mereka.&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 1.89; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 18px; outline: none !important;&quot;&gt;Sudah pasti ketika menyusuri sungai, kamu akan melihat keindahan alam yang super eksotis. Lokasi sungai ini berada di Dusun Rambah Serit, Desa Lau Sireme, Kecamatan Tiga Lingga, Kabupaten Dairi, Sumatera Utara.&lt;/p&gt;', 'uploads/package_15', 1, '2023-07-18 23:31:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penghasilan`
--

CREATE TABLE `penghasilan` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `tour_location` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `upload_path` text DEFAULT NULL,
  `status` varchar(89) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penghasilan`
--

INSERT INTO `penghasilan` (`id`, `title`, `tour_location`, `description`, `upload_path`, `status`, `date_created`) VALUES
(1, ' Padi', 'sidikalang', '&lt;p style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 26px; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;Kabupaten Dairi merupakan salah satu penghasilan padi di provinsi Sumatera Utara. Oleh karena itu produktifitas tanaman pangan khususnya padi perlu terus ditingkatkan&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 26px; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;Produksi padi pada tahun 2014 sebesar 91 818 ton mengalami peningkatan sebesar 26,43 persen atau menjadi 116 086 ton, sementara luas panen untuk tahun 2014 sebesar 18021 ha dan untuk tahun 2015 seluas 22 323 ha. Selanjudnya peningkatan produksi ini akibat dari semakin baiknya pemanfaatan lahan, pemakaian pupuk, pengolahan dan pembasmian serangga hama.&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 26px; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;Adapun luas lahan sawah berpengarian dan tadah hujan di Kabupaten Dairi tahun 2015 adalah 10 030 ha, terdiri dari lahan sawah berpengairan seluas 9.997 ha dan lahan sawah tadah hujan seluas 53 ha.&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 26px; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;Sementara itu, komuditi tanam palawija yang ada di Kabupaten Dairi adalah jagung dengan produksi pada tahun 2015 sebanyak 259 033 ton, kacang tanah sebanyak 998 ton. Bila dibandingkan dengan tahun 2014 khususnya tanaman komuditi jagung tersebut mengalami penurunan produksi, pada tahun 2014 sebesar 121 647 ton menjadi 259 033 ton yang disebabkan oleh cuaca hingga tanaman ini banyak mengalami gangguan atau rusak.&lt;/p&gt;', 'uploads/review_1', '', '0000-00-00 00:00:00'),
(2, 'Kopi Sidikalang', 'sidikalang', '&lt;p&gt;&lt;span style=&quot;color: rgb(54, 54, 53); font-family: Arial, sans-serif; font-size: 15px;&quot;&gt;PEMERINTAH Kabupaten (Pemkab) Dairi melakukan penanaman 2 juta batang pohon kopi pada lahan seluas 5 ribu hektare yang etrsebar di beberapa lokasi. Hal ini merupakan salah satu upaya mengembalikan kejaan kopi Sidikalang yang sempat tersohor hingga mancanegara. Bupati Dairi Eddy Berutu menyebut sekitar 60% masyarakat Dairi merupakan petani. Untuk itu program Agri Unggul merupakan salah satu program andalan yang difokuskan kepada kopi dan jagung dan diharapkan bisa mendorong kesejahteraan masyarakat. &quot;Keunggulan Kopi Sidikalang sudah tersohor ke seluruh dunia, yang membuat harganya di tingkat dunia selalu tinggi. Dari data yang diperoleh, kopi arabika bertumbuh, tahun 2021 produksinya mencapai 13.025,97 ton. Kami punya komitmen untuk mengembalikan kejayaan Kopi Sidikalang dengan menanam kopi yang baru di lahan seluas 5 ribu hektare. Sudah tertanam di beberapa lokasi, untuk tahun 2022 akan kami lakukan penanaman 2 juta batang kopi yang baru,&quot; kata Eddy Berutu pada kuliah umum di Kampus Politeknik Pembangunan Pertanian (Polbangtan) Medan Sumatra Utara.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/review_2', '', '0000-00-00 00:00:00'),
(3, 'Jagung', 'SIdikalang', '&lt;p&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;Sidikalang, 30/6 (Antarasumut) - Pemerintah Kabupaten (Pemkab) Dairi, Sumatera Utara, akan terus mendorong usaha pertanian tanaman jagung, terutama di tiga kecamatan yang diproyeksikan menjadi sentra produksi jagung terbesar di daerah itu.&lt;/span&gt;&lt;br style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;&lt;br style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;Keterangan yang dihimpun dari Dinas Perhubungan, Komunikasi dan Informatika (Dishubkominfo) Kabupaten Dairi, Minggu, menyebutkan, tiga kecamatan yang dijadikan sentra produksi jagung, yaitu Kecamatan&lt;/span&gt;&lt;br style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;Tigalingga, Gunung Sitember dan Tanah Pinem.&lt;/span&gt;&lt;br style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;&lt;br style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;Melalui penerapan pola tanam yang baik dengan dibarengi pemberian pupuk berkualitas, produksi jagung di tiga kecamatan itu kini mampu mencapai rata-rata delapan ton lebih per hektare.&lt;/span&gt;&lt;br style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;&lt;br style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;Luas area tanaman jagung di Dairi saat ini mencapai hampir 33 ribu hektare lebih dengan volume produksi sebanyak 153 ribu ton lebih per tahun.&lt;/span&gt;&lt;br style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;&lt;br style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;Bupati Dairi, KRA Johnny Sitohang Adinegoro ketika menghadiri panen jagung di Kecamatan Gunung Sitember, baru-baru ini, kembali mengingatkan para petani agar terus menggiatkan penanaman jagung, seiring dengan meningkatnya permintaan pasar.&lt;/span&gt;&lt;br style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;&lt;br style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;&quot;Pemkab Dairi akan terus mendorong usaha tani jagung, karena hal itu merupakan bagian dari upaya meningkatkan agribisnis berdaya saing,&quot; ujar Johnny Sitohang.&lt;/span&gt;&lt;br style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;&lt;br style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;&quot;&gt;vis misi Pemkab Dairi yaitu membawa kesejahteraan masyarakat ke arah yang lebih baik dengan meningkatkan agribisnis berdaya saing.(TNA)&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/review_3', '', '0000-00-00 00:00:00'),
(4, 'Cabe', 'sidikalang', '&lt;p style=&quot;margin-right: auto; margin-bottom: 26px; margin-left: auto; overflow-wrap: break-word; font-family: Rubik; font-size: 15px; color: rgb(34, 34, 34); line-height: 1.8 !important;&quot;&gt;Sebayak 200 orang terdiri dari 14 kelompok tani (Poktan) yang mengelola tanaman holtikutura di Kawasan Pertanian Terpadu (KPT) di Desa Parbuluan V Kecamatan Parbuluan Kabupaten Dairi Sumatera Utara siap panen cabai merah seluas 22 hektar dengan jaminan harga Rp23.000 perkilo.&lt;/p&gt;&lt;p style=&quot;margin-right: auto; margin-bottom: 26px; margin-left: auto; overflow-wrap: break-word; font-family: Rubik; font-size: 15px; color: rgb(34, 34, 34); line-height: 1.8 !important;&quot;&gt;Kesiapan panen dua jenis tanaman cabai dan kentang itu dibenarkan Kepala Dinas Pertanian, Ketahanan Pangan Dan Perikanan Dairi melalui Kabid Tanaman Pangan dan Holtikultura, Resmina Siskawati Tampubolon, S.P.&amp;nbsp; Kamis (25/5/23)&lt;/p&gt;&lt;p style=&quot;margin-right: auto; margin-bottom: 26px; margin-left: auto; overflow-wrap: break-word; font-family: Rubik; font-size: 15px; color: rgb(34, 34, 34); line-height: 1.8 !important;&quot;&gt;Disebutkan Resmina Siskawati, dari luasan 395 Hektar KPT Parbuluan V, untuk tahun 2023 dimulai dengan pencanangan tanaman cabai merah seluas 22 hektar dan tanaman kentang 15 hektar, dimana sekitar 4 Hektar tanaman cabai merah dan 6 Hektar kentang siap panen.&lt;/p&gt;&lt;p style=&quot;margin-right: auto; margin-bottom: 26px; margin-left: auto; overflow-wrap: break-word; font-family: Rubik; font-size: 15px; color: rgb(34, 34, 34); line-height: 1.8 !important;&quot;&gt;Khusus hasil panen cabai merah ada jaminan harga Rp23.000 perkilo sesuai MOU dengan koperasi. Sedangkan harga kentang mengikuti harga pasar, tidak ada jaminan seperti cabai merah &rdquo; sebut Resmina Siska.&lt;/p&gt;', 'uploads/review_4', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rate_review`
--

CREATE TABLE `rate_review` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `package_id` int(30) NOT NULL,
  `rate` int(11) NOT NULL,
  `review` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rate_review`
--

INSERT INTO `rate_review` (`id`, `user_id`, `package_id`, `rate`, `review`, `date_created`) VALUES
(3, 5, 8, 5, '<p>Sample</p>', '2021-06-19 11:53:16'),
(4, 5, 8, 3, '&lt;p&gt;Sample feedback only&lt;/p&gt;', '2021-06-19 13:49:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Sidikalang'),
(6, 'short_name', 'Admin'),
(11, 'logo', 'uploads/1689686460_admin.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1689686460_dairi.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1620201300_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-18 16:47:05'),
(4, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', NULL, NULL, 0, '2021-06-19 08:36:09', '2021-06-19 10:53:12'),
(5, 'Claire', 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', NULL, NULL, 0, '2021-06-19 10:01:51', '2021-06-19 12:03:23');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `book_list`
--
ALTER TABLE `book_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penghasilan`
--
ALTER TABLE `penghasilan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rate_review`
--
ALTER TABLE `rate_review`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `book_list`
--
ALTER TABLE `book_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `penghasilan`
--
ALTER TABLE `penghasilan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `rate_review`
--
ALTER TABLE `rate_review`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
