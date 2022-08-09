-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2021 at 01:11 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing2`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'News', 'news', '2020-12-04 22:32:28', '2020-12-04 22:32:28'),
(2, 'Maintenance', 'maintenance', '2020-12-04 22:32:34', '2020-12-04 22:32:34'),
(3, 'Troubleshooting', 'troubleshooting', '2020-12-04 22:32:39', '2020-12-04 22:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_05_045719_create_category_table', 2),
(5, '2020_12_05_050426_create_tags_table', 3),
(7, '2020_12_05_050820_create_posts_table', 4),
(8, '2020_12_05_051706_add_new_slug_posts_table', 5),
(9, '2020_12_05_052308_create_post_tag_table', 6),
(10, '2020_12_05_052943_tambah_softdelete_ke_post', 7),
(11, '2020_12_05_064722_tambah_field_user_post', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `judul`, `category_id`, `content`, `gambar`, `created_at`, `updated_at`, `slug`, `deleted_at`, `users_id`) VALUES
(1, 'Mending Rakit PC', 1, '<p>Ketika diminta untuk memilih perangkat apa yang paling diinginkan untuk bermain game kekinian, pasti kebanyakan gamer lebih memilih PC daripada konsol. Walaupun memang, beberapa orang juga tetap setia menggunakan konsol hingga saat ini. Tetapi tidak bisa dipungkiri lagi memang para pemuja PC gaming yang disebut dengan PC master race tengah menjamur.<br />\r\n<br />\r\nSekitar pertengahan hinga pada penghujung tahun 2017 lalu, harga berbagai komponen PC benar-benar menggila dengan berbagai alasan. Mulai dari maraknya para miner, stok barang menipis, hingga &quot;redzone&quot; yang sedang melanda Indonesia membuat harga semakin melambung tinggi.<br />\r\n<br />\r\nNamun, hingga memaski pertengahan tahun 2019, berbagai komponen PC sudah mulai membaik dan memasuki harga yang relatif normal, bahkan mengalami penurunan untuk beberapa komponen PC. Nah, pada artikel ini kru KotGa akan memberitahukan nih kepada kamu inilah alasan mengapa rakit PC gaming sekarang adalah saat yang tepat. Yuk simak artikelnya!</p>\r\n\r\n<p><strong>Harga RAM sudah mulai normal</strong><br />\r\n<br />\r\n<img alt=\"\" src=\"http://localhost/project1/assets/uploads/images/Rakit%20Pc/ram1.jpg\" style=\"height:489px; width:610px\" /></p>\r\n\r\n<p>Samsung dan SK Hynix yang dikenal sebagai manufaktur module RAM saat ini terbilang sudah semakin &quot;stabil&quot; untuk memproduksi RAM aka memory untuk PC sesuai dengan permintaan para pengguna. Pada tahun 2017 hingga 2018 lalu, harga RAM benar-benar melambung tinggi hingga hampir menyentuh angka IDR 2 juta untuk memory berkapasitas 16GB.<br />\r\n<br />\r\nSekarang? Kru KotGa pantau melalui berbagai marketplace yang ada di Indonesia, para gamer yang ingin merakit sebuah PC gaming bisa mendapatkan memory 16GB pada kisaran harga IDR 1.2 juta hingga 1.4 juta saja, tergantung merk dan teknologi yang ditawarkan tentunya.</p>\r\n\r\n<p><strong>Harga SSD semakin murah!</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://localhost/project1/assets/uploads/images/Rakit%20Pc/ssd.jpg\" style=\"height:296px; width:610px\" /></strong></p>\r\n\r\n<p>Ya, tidak seperti empat atau lima tahun lalu dimana SSD masih dianggap seperti barang mewah yang hanya dimiliki oleh PC high-end, kini SSD sudah menjadi barang wajar dan kewajiban yang dimiliki oleh sebuah PC kekinian yang menjalankan berbagai sistem operasi hingga aplikasi terbaru. Bayangkan, saat ini kamu sudah bisa mendapatkan SSD hanya dengan harga sekitar IDR 250 ribuan untuk yang berkapasitas 120GB. Masa zaman sekarang masih belum menggunakan SSD?</p>\r\n\r\n<p><strong>Banyak komponen terbaru</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://localhost/project1/assets/uploads/images/Rakit%20Pc/rtx.jpg\" style=\"height:533px; width:800px\" /></strong></p>\r\n\r\n<p>Ya, saat ini produsen besar seperti Intel, AMD, hingga NVIDIA semakin ketat dalam berkompetisi dibidangnya, Imbasnya, para pengguna jadi memiliki berbagai pilihan ketika merakit sebuah PC gaming. Untuk tahun 2019 ini, sepertinya yang paling anyar adalah perilisan kartu grafis dari NVIDIA ya Kotakers. Mereka telah merilis berbagai lini RTX hingga GTX terbaru selama tahun 2019 ini.<br />\r\n<br />\r\nBagi kamu yang ingin merakit sebuah PC gaming dengan harga terjangkau saja sudah bisa mendapatkan GTX 1660 / Ti dengan harga setara GTX 1060 6GB pada masanya dengan performa yang lebih gahar tentunya. Belum lagi GTX 1650 yang baru saja dirilis beberapa waktu lalu. Semakin banyak dong pilihan para gamer.<br />\r\n<br />\r\n<strong>Komponen lawas harganya pada turun!</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://localhost/project1/assets/uploads/images/Rakit%20Pc/vga.jpg\" style=\"height:610px; width:610px\" /></strong></p>\r\n\r\n<p>Kartu grafis adalah komponen PC terpenting untuk menjalankan berbagai game kekinian disamping prosesor dan juga RAM. Tentunya pemilihan kartu grafis adalah yang paling krusial ketika ingin merakit sebuah PC gaming. Saat ini, para gamer bisa memilih menggunakan kartu grafis terbaru atau memilih kartu grafis lawas dengan performa yang sama namun dengan harga yang terjangkau?<br />\r\n<br />\r\nBeberapa vendor masih memiliki stok kartu grafis lawas untuk GTX 1060 6GB, Radeon RX 580, hingga Radeon RX 570 yang bisa menjadi pilihan para gamer. Harga yang ditawarkan? Tentunya sudah terjun bebas ke harga yang sangat terjangkau.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nah, itulah alasan mengapa rakit PC gaming sekarang adalah saat yang tepat.</p>', 'public/uploads/posts/1611922033mending.jpg', '2020-12-04 22:33:45', '2021-01-29 05:07:35', 'mending-rakit-pc', NULL, 1),
(2, 'Komputer Lambat / Sering Hang', 3, '<p>Komputer pada jaman sekarang menjadi perangkat yang sering digunakan dan memiliki banyak fungsi, mulai dari mengerjakan tugas, sumber hiburan, kreasi konten, hingga video call dengan teman. tentu komputer tidak nyaman digunakan saat performa komputer menurun, biasanya ditandai dengan proses buka program lama dan not responding. banyak yang mengeluh komputer lambat setelah dipakai beberapa tahun. tenang saja, berikut beberapa cara untuk mengatasi komputer lambat</p>\r\n\r\n<p><strong>1. Uninstall program yang tidak digunakan</strong></p>\r\n\r\n<p>Tanpa sadar sudah banyak program yang Anda telah install dan jarang digunakan, beberapa program tersebut berjalan di latar belakang dan mengurangi kinerja komputer. Hapus program yang tidak digunakan dengan membuka control panel dan memilih program dan features, disini Anda dapat memilih program yang ingin dihapus dan klik uninstall</p>\r\n\r\n<p><strong>2. Nonaktifkan program - program startup</strong></p>\r\n\r\n<p>Selain dari menghapus program yang tidak perlu, cara lain yaitu menonaktifkan startup program. Saat menyalakan komputer dan masuk ke windows, banyak program yang ingin berjalan secara sekaligus di latar belakang seperti spotify, discord, dan line. Kadang program tersebut tidak harus langsung berjalan saat komputer menyala.</p>\r\n\r\n<p>Untuk menonaktifkan program yang berjalan saat menyalakan komputer dapat dilakukan dengan cara membuka task manager dan pilih startup, disini Anda dapat mematikan program program yang tidak perlu berjalan, jika ragu dengan program yang ingin dinonaktifkan menimbulkan masalah Anda dapat mencari program tersebut di google mengenai program tersebut</p>\r\n\r\n<p><strong>3. Defragmentasi Hard disk</strong></p>\r\n\r\n<p>Apa itu defragmentasi? Sebelum mengenali defragmentasi perlu diketahui tentang fragmentasi, sebuah file yang berada di hard disk jika dihapus akan menyediakan ruang kosong pada bagian hard disk, saat user atau program ingin menulis file baru, file tersebut akan ditulis pada beberapa bagian kosong yang tersedia, hal ini mengakibatkan file yang dibuat menjadi tersebar ke beberapa bagian hard disk</p>\r\n\r\n<p>Defragmentasi adalah proses menyatukan kembali file - file yang tersebar di beberapa bagian harddisk, dengan ini file berada di satu tempat dan waktu akses menjadi lebih cepat. Proses defragmentasi ini dapat dilakukan dengan membuka program bernama &ldquo;defragment and optimize drives&rdquo;, memilih partisi yang ingin di defragmentasi lalu klik optimize.</p>\r\n\r\n<p>Perlu diketahui bahwa program ini mempunyai jadwal yang telah diatur, sesuai dengan jadwal yang diatur program akan melakukan defragmentasi secara berkala di latar belakang. Namun terkadang jadwal defragmentasi tidak selalu berjalan sendiri, biasanya jika windows mendeteksi Hard disk sedang sibuk. Anda dapat mengetahui jika hard disk membutuhkan defragmentasi dengan melihat presentasi fragmentasi hard disk pada program tersebut.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/files/Lambat2.png\" style=\"height:503px; width:705px\" /></p>\r\n\r\n<p><strong>4. Upgrade RAM</strong></p>\r\n\r\n<p>Windows dan program - program pada jaman sekarang berbeda dengan jaman sebelumnya, pada website microsoft tertera spesifikasi minimum Windows 10 adalah 1 GB untuk versi 32 bit dan 2 GB untuk versi 64 bit, tetapi spesifikasi ini tidak menghitung pemakaian RAM terbesar selain sistem operasi yaitu browser</p>\r\n\r\n<p>Tujuan utama pengguna menggunakan komputer yaitu mengakses internet. Tidak hanya satu halaman saja, tetapi beberapa halaman secara sekaligus seperti mendengar musik di Youtube sambil mengedit dokumen di Google docs, penggunaan memori pada browser penulis memakan RAM sekitar 350 - 800 MB. penggunaan memori browser pada komputer dengan 2 GB RAM tentu saja tidak cukup, saat kehabisan RAM windows akan menyimpan data di ram yang jarang digunakan ke hard disk, hal ini akan memperlambat kinerja sistem secara signifikan.</p>\r\n\r\n<p>Penulis merekomendasi minimal 4 GB RAM dan rekomendasi 8 GB RAM untuk penggunaan lancar, untuk cara upgrade RAM Anda dapat lihat disini</p>\r\n\r\n<p><strong>5. Upgrade penyimpanan ke SSD</strong></p>\r\n\r\n<p>Cara terakhir yang paling ampuh untuk mengatasi komputer lambat yaitu membeli SSD, Komponen ini mempunyai tujuan sama seperti Hard disk, namun SSD ini mempunyai performa lebih cepat dibandingkan dengan Hard disk, waktu menyala komputer menjadi lebih cepat dan waktu membuka program menjadi instan.</p>\r\n\r\n<p>Tetapi ada satu kekurangan besar dari SSD yaitu harga per kapasitas yang relatif mahal. Harga SSD untuk kapasitas 1 TB bisa mencapai 2,1 juta rupiah sedangkan Hard disk 1 TB mempunyai harga berkisar 800 ribu rupiah, karena itu banyak orang yang menggunakan SSD + HDD, ukuran SSD 120 - 240 GB untuk data yang diakses cepat misalnya sistem operasi dan browser, dan HDD 1 - 3 TB untuk data berukuran besar seperti game, video, musik, dsb.</p>\r\n\r\n<p>Walaupun harga SSD cukup mahal, penulis sangat merekomendasikan menggunakan SSD untuk sistem operasi dan program program yang sering dipakai agar komputer responsif dan cepat, penulis merekomendasi kapasitas minimal SSD 120 GB untuk penggunaan SSD + HDD dan rekomendasi 240 GB atau lebih untuk penggunaan SSD saja</p>', 'public/uploads/posts/1611569380Penyebab-Komputer-Lemot-atau-Lambat-dan-Cara-Mengatasinya-3-1280x720.jpg', '2020-12-04 23:54:36', '2021-01-25 03:46:49', 'komputer-lambat-sering-hang', NULL, 1),
(3, 'Coba Softdelete', 3, 'Nyobadoang', 'public/uploads/posts/1607318149download.png', '2020-12-06 22:15:49', '2020-12-06 22:15:54', 'coba-softdelete', '2020-12-06 22:15:54', 1),
(4, 'Membersih Komputer', 2, '<p>PC yang berdebu dapat mengurangi performa pc. Dimulai dengan penyaluran udara yang sempit atau terhambat mengakibatkan panasnya komponen yang ada didalam. Panas yang berlebihan akan mengakibatkan berkurangnya performa serta dapat mengakibatkan pc mati secara tiba-tiba. Oleh karena itu dibutuhkan untuk setiap 6 bulan minimal untuk membersihkan komputer anda.</p>\r\n\r\n<p>Langkah 1 :<br />\r\nMatikan komputer, lalu cabut kabel-kabel yang ada pada bagian belakang untuk mencegah adanya daya listrik pada komputer.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/files/bersih1.png\" style=\"height:551px; width:424px\" /></p>\r\n\r\n<p>Usahakan untuk mencabut yang terhubung pada colokan diatas karena kabel itu yang memberikan listrik pada komputer anda (colokan power supply).</p>\r\n\r\n<p>Langkah 2 :<br />\r\nbuka casing komputer anda.<br />\r\n<img alt=\"\" src=\"http://localhost/project1/assets/uploads/files/bersih2.jpg\" style=\"height:449px; width:400px\" /></p>\r\n\r\n<p>Setiap casing memiliki caranya masing-masing untuk membukanya, oleh karena itu disarankan untuk mengetahui model casing yang anda punya lalu melihat cara pembukaannya.</p>\r\n\r\n<p>Langkah 3 :<br />\r\nGunakan alat yang efektif untuk membersihkan komputer anda. Ada beberapa alat yang dapat membantu anda untuk membersihkan pc dengan cepat dan efektif yaitu :</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/files/bersih3.jpg\" style=\"height:400px; width:400px\" /></p>\r\n\r\n<ul>\r\n	<li>Blower :<br />\r\n	Baik hair dryer sampai pemompa tempat tidur angin, semua yang menghembuskan angin dengan keras dapat membantu anda membersihkan komputer anda dengan cepat dan efisien. Tetapi jeleknya adalah debu yang dihembuskan akan mengotori ruangan yang sedang digunakan. Oleh karena itu gunakan pembersih blower diluar rumah atau ruangan yang mudah dibersihkan&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/files/bersih4.jpg\" style=\"height:267px; width:400px\" /></p>\r\n\r\n<ul>\r\n	<li>Tisu :<br />\r\n	Salah satu alat yang paling mudah tersedia di setiap perumahan. Komputer akan bersih dengan baik. akan tetapi memakan waktu lebih lama dibanding dengan menggunakan blower serta jika digunakan untuk membersihkan bagian yang sempit atau kecil, ada kemungkinan tisu itu akan sobek lalu hanya menambah penghambatan pada saluran angin pada casing komputer.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/files/bersih5.jpg\" style=\"height:400px; width:400px\" /></p>\r\n\r\n<ul>\r\n	<li>Kuas Kecil :</li>\r\n</ul>\r\n\r\n<p>Kuas kecil digunakan sebagai penyempurna alat yang ada diatas seperti tisu dan Blower, karena walaupun tisu dan Blower sudah baik, komputer akan selalu memiliki tempat kecil yang isinya banyak debu. Oleh karena itu kuas kecil atau semacamnya memiliki tugas yang spesifik yaitu membersihkan bagian-bagian komputer yang susah dicapai oleh blower maupun tisu.</p>\r\n\r\n<p>Langkah 4 :<br />\r\nDimulai dari dari debu-debu yang ada pada kipas casing pc anda. Dengan 1 tangan menahan kipas, gunakan alat pembersih anda untuk membersihkannya. Baling-baling pada kipas komputer dapat rusak jika tidak hati-hati.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/files/bersih6.jpg\" style=\"height:225px; width:400px\" /></p>\r\n\r\n<p>Langkah 5 :<br />\r\nKemudian bagian yang dibersihkan adalah kipas yang ada pada Power Supply (Gambar 2.1). Dengan menggunakan blower atau tiupan (jika tidak ada blower) membersihkan debu-debu yang menempel pada kipas. Jika casing anda memiliki filter power supply (2.2) maka hanya bersihkan saja dengan kuas kecil atau kemoceng.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/files/maintenance/bersih7.jpg\" style=\"height:254px; width:400px\" /></p>\r\n\r\n<p>Power Supply(2.1)</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/files/maintenance/bersih8.jpg\" style=\"height:301px; width:400px\" /></p>\r\n\r\n<p>Filter Power Supply(2.2)</p>\r\n\r\n<p>Langkah 6 :<br />\r\nSelanjutnya adalah kipas cpu, seperti kipas pada casing bedanya hanya letaknya pada motherboard. Gunakan metode yang sama seperti membersihkan kipas pada casing.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/files/maintenance/bersih9.png\" style=\"height:235px; width:351px\" /></p>\r\n\r\n<p>Langkah 7 :<br />\r\nBagian terakhir adalah membersihkan port-port (tempat colokan kabel) komputer. Dapat menggunakan blower, kuas kecil, serta tiupan tetapi jangan menggunakan tisu karena ada kemungkinan tisu yang robek dan hanya menghambat seperti debu yang ingin dibersihkan.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/files/maintenance/bersih10.jpg\" style=\"height:148px; width:180px\" /></p>', 'public/uploads/posts/1611577171bersihbersih.jpg', '2021-01-25 05:19:31', '2021-01-25 05:19:31', 'membersih-komputer', NULL, 1),
(5, 'Storage Monitoring 101', 2, '<p>Harddisk serta SSD adalah perangkat keras penyimpanan data yang ada pada pc, dengan menambahnya data baru serta penghapusan data lama dapat membuat peforma suatu HDD atau SSD berkurang (Degradasi). Oleh karena itu kita membutuhkan aplikasi yang dapat melihat keadaan perangkat penyimpanan kita. Ada banyak aplikasi yang dapat membantu kita melihat keadaan HDD atau SSD salah satunya adalah CrystalDiskInfo. Kenapa menggunakan CrystalDiskInfo? Secara mudah kami memilih aplikasi ini karena sangat mudah untuk digunakan serta sudah biasa memakai aplikasi ini untuk melihat kondisi perangkat keras penyimpanan. Kali ini kami akan memberikan tutorial untuk meng-install CrystalDiskInfo serta cara menggunakannya.</p>\r\n\r\n<ol>\r\n	<li>Install CrystalDiskInfo<br />\r\n	Buka link ini pada browser pilihan anda<br />\r\n	<a href=\"https://crystalmark.info/en/software/crystaldiskinfo/\">https://crystalmark.info/en/software/crystaldiskinfo/</a></li>\r\n</ol>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/files/maintenance/storage1.png\" style=\"height:296px; width:500px\" /></p>\r\n\r\n<p>Jika benar maka halaman pertama yang ada pada browser akan terlehiat seperti yang ada diatas.</p>\r\n\r\n<p>Kemudian klik tombol download pada bagian halaman pertama.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/images/Storage/storage2.png\" style=\"height:216px; width:400px\" /></p>\r\n\r\n<p>Ada 2 pilihan untuk meng-unduh aplikasi CrystalDiskInfo, yaitu dengan cara zip atau installer. Kami rekomendasikan installer karena ketika sudah di unduh dapat dengan mudah langsung di instal.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/images/Storage/storage3.png\" style=\"height:138px; width:500px\" /></p>\r\n\r\n<p>Panah merah untuk ZIP lalu panah hijau untuk Installer.</p>\r\n\r\n<p>Jika sudah di unduh maka file installer/zip tersebut akan muncul pada folder &ldquo;download&rdquo;</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/images/Storage/storage4.png\" style=\"height:527px; width:580px\" /></p>\r\n\r\n<p>Klik dua kali untuk menjalankan instalasi aplikasi, Pada bagian License Agreement pilih &ldquo;I accept the agreement&rdquo; lalu klik next.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/images/Storage/storage5.png\" style=\"height:374px; width:500px\" /></p>\r\n\r\n<p>Kemudian pada halaman selanjutnya klik next</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/images/Storage/storage6.png\" style=\"height:378px; width:500px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/images/Storage/storage7.png\" style=\"height:381px; width:500px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/images/Storage/storage8.png\" style=\"height:376px; width:500px\" /></p>\r\n\r\n<p>Setelah semuanya selesai maka klik install.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/images/Storage/storage9.png\" style=\"height:382px; width:500px\" /></p>\r\n\r\n<p>Sesudah instalasi klik Finish lalu jalankan CrystalDiskInfo</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/images/Storage/storage10.png\" style=\"height:383px; width:500px\" /></p>\r\n\r\n<p>2. Menggunakan CrystalDiskInfo<br />\r\n<br />\r\nSetelah selesai instalasi maka aplikasi akan terlihat seperti yang dibawah.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/project1/assets/uploads/images/Storage/storage11.png\" style=\"height:1029px; width:1006px\" /></p>\r\n\r\n<p>Hanya ada 2 hal yang penting untuk diketahui saat menggunakan aplikasi ini. Yang pertama adalah Helath Status yaitu kondisi hdd atau ssd yang anda sedang gunakan. Jika kondisinya bagus maka akan diberikan status &ldquo;Good&rdquo; selain itu maka kondisi penyimpanan data sudah menurun. Kedua adalah Temperature yaitu suhu penyimpanandata anda, selama masih biru artinya tidak terlalu panas.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'public/uploads/posts/1611921326hdd.png', '2021-01-29 04:55:26', '2021-01-29 04:55:26', 'storage-monitoring-101', NULL, 1),
(6, 'STOK KARTU GRAFIS RTX 3000 LANGKA HINGGA TAHUN DEPAN', 1, '<p>NVIDIA memproduksi GeForce RTX 3000 Series dalam jumlah sedikit untuk gelombang penjualan pertamanya. Karena insden pandemik banyak perusahaan yang mengalami permasalahan dalam produksi serta logistic, oleh karena itu kartu grafis tersebut sampai susah untuk dibeli didalam negara sendiri, secara otomatis penjualan diluar negaranya juga akan semakin susah. Hal ini dapat membuat harga kartu grafis tersebut menjadi lebih mahal.</p>\r\n\r\n<p>Ada beberapa pihak yang menilai NVIDIA mungkin sengaja membuat stok sedikit karena ingi melihat respon pasar terhadap performa GPU NVIDIA Ampere yang ditanamkan mengandalkan teknologi fabrikasi Samsung 8nm. Ada juga spekulasi dugaan bahwa NVIDIA ingin menunggu bagaimana respon AMD terhadap inovasi atau produk terbaru mereka mengandalkan teknologi AMD RDNA2.</p>\r\n\r\n<p>Hanya waktu yang dapat memberikan kita informasi apakah stok yang kurang ini tidak sengaja atau disengaja. Tetapi intinya adalah stok grafis kemungkinan tidak akan naik sampai tahun depan</p>', 'public/uploads/posts/1611921475rtx.jpg', '2021-01-29 04:57:55', '2021-01-29 04:57:55', 'stok-kartu-grafis-rtx-3000-langka-hingga-tahun-depan', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts_tags`
--

CREATE TABLE `posts_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posts_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_tags`
--

INSERT INTO `posts_tags` (`id`, `posts_id`, `tags_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 1, 4, NULL, NULL),
(5, 1, 5, NULL, NULL),
(6, 1, 6, NULL, NULL),
(7, 1, 7, NULL, NULL),
(8, 2, 1, NULL, NULL),
(9, 3, 3, NULL, NULL),
(10, 2, 2, NULL, NULL),
(11, 2, 3, NULL, NULL),
(12, 2, 4, NULL, NULL),
(13, 2, 5, NULL, NULL),
(14, 2, 6, NULL, NULL),
(15, 2, 7, NULL, NULL),
(16, 4, 1, NULL, NULL),
(17, 4, 2, NULL, NULL),
(18, 4, 3, NULL, NULL),
(19, 4, 4, NULL, NULL),
(20, 4, 5, NULL, NULL),
(21, 4, 6, NULL, NULL),
(22, 4, 7, NULL, NULL),
(23, 5, 2, NULL, NULL),
(24, 5, 3, NULL, NULL),
(25, 6, 1, NULL, NULL),
(26, 6, 4, NULL, NULL),
(27, 6, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Gaming', 'gaming', '2020-12-04 22:31:22', '2020-12-04 22:31:22'),
(2, 'Intel', 'intel', '2020-12-04 22:31:51', '2020-12-04 22:31:51'),
(3, 'AMD', 'amd', '2020-12-04 22:31:54', '2020-12-04 22:31:54'),
(4, 'RTX', 'rtx', '2020-12-04 22:31:58', '2020-12-04 22:31:58'),
(5, 'GTX', 'gtx', '2020-12-04 22:32:01', '2020-12-04 22:32:01'),
(6, 'Radeon', 'radeon', '2020-12-04 22:32:06', '2020-12-04 22:32:06'),
(7, 'Nvidia', 'nvidia', '2020-12-04 22:32:10', '2020-12-04 22:32:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@example.com', NULL, '$2y$10$QnY2sryD4IJjePQFZlVh6eMBnOENjUM.z0yY657C3otkPNHDScNxS', 'ECgHVqPm1A4KtorprOzDK9BiJARqx8Sr0uIW0ySWSortYxFa0BpHzV3GxPeR', '2020-12-04 22:41:58', '2020-12-04 22:41:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts_tags`
--
ALTER TABLE `posts_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts_tags`
--
ALTER TABLE `posts_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
