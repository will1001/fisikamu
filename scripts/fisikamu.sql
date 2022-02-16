-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2021 at 01:41 AM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fisikamu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--
-- GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%';
CREATE TABLE `admin` (
  `id` int NOT NULL,
  `no_rek` int NOT NULL,
  `nama_rek` varchar(191) NOT NULL
);

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `no_rek`, `nama_rek`) VALUES
(1, 777777, 'Admin Fiskamu');

-- --------------------------------------------------------

--
-- Table structure for table `bab_soal`
--

CREATE TABLE `bab_soal` (
  `id` int NOT NULL,
  `icon` varchar(191) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `id_mapel` int NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
);

--
-- Dumping data for table `bab_soal`
--

INSERT INTO `bab_soal` (`id`, `icon`, `deskripsi`, `id_mapel`, `create_at`, `update_at`) VALUES
(1, 'assets/images/pendahuluan_icon.png', 'Vektor', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'assets/images/mekanika_icon.png', 'Mekanika', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'assets/images/fluida_icon.png', 'fluida', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'assets/images/getaran&gelomabng_icon.png', 'Getaran & Gelombang', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'assets/images/Termo_icon.png', 'Termal', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'assets/images/listrik_icon.png', 'Listrik', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'assets/images/magnet_icon.png', 'Magnet', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'assets/images/optik_icon.png', 'Optik', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'assets/images/fismod_icon.png', 'Fisika', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'assets/images/quantum_icon.png', 'Kuantum', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bank_soal`
--

CREATE TABLE `bank_soal` (
  `id` int NOT NULL,
  `soal` text NOT NULL,
  `pil_a` text,
  `pil_b` text,
  `pil_c` text,
  `pil_d` text,
  `pil_e` text,
  `tipe_soal` varchar(100) NOT NULL,
  `kategori_soal` varchar(191) NOT NULL,
  `tahun_soal` int NOT NULL,
  `jawaban` text NOT NULL,
  `pembahasan` text NOT NULL,
  `tryout_used` tinyint(1) NOT NULL DEFAULT '0',
  `id_mapel` int NOT NULL DEFAULT '0',
  `id_tingkat_kesulitan` int NOT NULL DEFAULT '0',
  `id_kelas` int NOT NULL DEFAULT '0',
  `id_bab_soal` int NOT NULL DEFAULT '0',
  `id_sub_bab` int NOT NULL DEFAULT '0',
  `id_konsep` int NOT NULL DEFAULT '0',
  `id_utbk` int DEFAULT '0',
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_soal`
--

INSERT INTO `bank_soal` (`id`, `soal`, `pil_a`, `pil_b`, `pil_c`, `pil_d`, `pil_e`, `tipe_soal`, `kategori_soal`, `tahun_soal`, `jawaban`, `pembahasan`, `tryout_used`, `id_mapel`, `id_tingkat_kesulitan`, `id_kelas`, `id_bab_soal`, `id_sub_bab`, `id_konsep`, `id_utbk`, `create_at`, `update_at`) VALUES
(3, 'Sebuah partikel ditembakkan dari ketinggian $ h $ dari tanah. Jika massa partikel $ m $ dan percepatan gravitasi $ g $, hitunglah kecepatan awal yang harus diberikan kepada partikel tersebut agar pada saat mencapai ketinggian $ 2h $ di atas tanah, energi kinetiknya lenyap$\\ldots$', '$ \\sqrt{\\dfrac{2g}{h}} $', '$ \\sqrt{gh} $', '$ \\sqrt{2gh} $', '$ \\sqrt{\\dfrac{gh}{2}} $', '$ \\sqrt{\\dfrac{2h}{g}} $', 'pilgan', 'BAB', 0, 'b', 'Pada soal ini tidak ada gaya gesek yang bekerja sehingga kita dapat menggunakan konservasi energi mekanik. Saat awal ditembakan energi mekanik partikel adalah sama dengan energi kinetiknya (kita ambil energi potensial nol ditempat partikel ditembakan) maka saat pada ketinggian $ 2h $ diatas tanah atau $ h $ diatas tempat ditembakkan energi mekaniknya hanya ada energi potensialnya saja karena energi kinetiknya \\emph{lenyap}\n	\\begin{align*}\n		\\frac{1}{2}\\cancel{m}v^2 ={}& \\cancel{m}gh \\\\\n		v ={}& \\sqrt{2gh}\n	\\end{align*}\n	kecepatan minimumnya adalah $\\sqrt{2gh}$ agar ada ketinggian $ h $ diatas tempat ditembakan kecepatannya nol', 0, 0, 0, 0, 0, 0, 0, 1, '2021-09-04 10:11:39', '0000-00-00 00:00:00'),
(4, 'test aja 121212', 'test 1', 'test 1', 'test 1', 'test 1', 'test 1', 'pilgan', 'UTBK', 2021, 'e', 'test 121', 0, 0, 0, 0, 0, 0, 0, 1, '2021-09-04 12:43:06', '2021-09-10 10:10:08'),
(5, 'fswfwef', 'wqef', 'wef', 'wqf', 'wfe', 'wfe', 'pilgan', 'UTBK', 2021, 'b', 'wqefwef', 0, 0, 0, 0, 0, 0, 0, 1, '2021-09-08 09:31:54', '0000-00-00 00:00:00'),
(6, 'qwdqwdqw', 'qd', 'qd', 'qd', 'hew', 'ewh5', 'pilgan', 'UTBK', 2021, 'b', 'dgerg', 0, 0, 0, 0, 0, 0, 0, 1, '2021-09-08 09:33:30', '0000-00-00 00:00:00'),
(8, 'jyjghjg', 'ert', 'ery', 'ery', 'ery', 'rthryu', 'pilgan', 'BAB', 2021, 'c', 'rtjurtur', 0, 0, 1, 0, 1, 4, 1, 1, '2021-09-08 09:36:30', '0000-00-00 00:00:00'),
(11, 'test bug', 'test bug', 'test bug', 'test bug', 'test bug', 'test bug', 'pilgan', 'UTBK', 2021, 'a', 'test bug', 0, 0, 0, 0, 0, 0, 0, 2, '2021-09-09 22:14:34', '0000-00-00 00:00:00'),
(12, 'Benda $ A $ $\\left(\\SI{500}{\\gram}\\right)$ yang bergerak dengan kecepatan 6 m/s menumbuk benda $ B $ $\\left(\\SI{250}{\\gram}\\right)$ yang diam. Ketika bertumbukan, benda $ A $ dan $ B $ mengalami kontak selama 5 milisekon. Setelah tumbukan, benda $ B $ memiliki energi kinetik $ 8 $ joule. Berdasarkan kejadian tersebut, manakah pernyataan yang tepat?\n\\begin{enumerate}[label=(\\arabic*), noitemsep, topsep=0pt]\n	\\item Gaya rata-rata pada benda $ A $ besarnya 400 N\n	\n	\\item Setelah tumbukan energi kinetik benda $ A = 2 $ J\n	\n	\\item Impuls pada benda A sebesar 2 kg.m/s\n	\n	\\item Jenis tumbukannya elastik sebagian\n\\end{enumerate}', 'A', 'B', 'C', 'D', 'E', 'pilgan', 'UTBK', 2019, 'b', 'Energi kinetik benda $ B $ setelah tumbukan adalah $\\SI{8}{\\joule}$maka keepatan benda $ B $ setelah ditumbuk benda $ A $ dapat kita peroleh dari persamaan energi kinetik\n	\\begin{align*}\n		E={}& \\frac{1}{2}mv^2 \\\\\n		v ={}& \\sqrt{\\frac{2E}{m}} \\\\\n		v ={}& \\sqrt{\\frac{2\\left(\\SI{8}{\\joule}\\right)}{\\frac{1}{4} \\ \\si{\\kilogram}}} \\\\\n		v ={}& \\SI{8}{\\meter\\per\\second}\n	\\end{align*}\n	menggunakan hukum kekekalan momentum kita akan dapatkan kecepatan benda $ A $ setelah tumbukan\n	\\begin{align*}\n		m_A v_A ={}& m_Av_A\' + m_Bv_B\' \\\\\n		v_A\' ={}& \\frac{m_Av_A-m_Bv_B\'}{m_A} \\\\\n		v_A\' ={}& \\frac{m_A\\left(\\SI{6}{\\meter\\per\\second}\\right)-\\frac{1}{2}m_A\\left(\\SI{8}{\\meter\\per\\second}\\right)}{m_A} \\\\\n		v_A \' ={}& \\SI{2}{\\meter\\per\\second}\n	\\end{align*}\n	Gaya rata-rata pada benda $ A $ kita dapatkan dari konsep momentum-impuls\n	\\begin{align*}\n		F ={}& \\frac{\\Delta p}{\\Delta t} \\\\\n		F ={}& \\frac{\\frac{1}{2}\\left(6-2\\right)}{\\num{5e-3}} \\ \\si{\\newton} \\\\\n		F ={}& \\SI{400}{\\newton}\n	\\end{align*}\n	berdasarkan hasil diatas maka pernyataan (1) dan (3) benar. Energi kinetik benda $ A $ setelah tumbukan kita peroleh\n	\\begin{align*}\n		E={}& \\frac{1}{2}\\left(\\frac{1}{2}\\right)\\left(2\\right)^2 \\ \\si{\\joule} \\\\\n		E={}& \\SI{1}{\\joule}\n	\\end{align*}\n	maka pernyataan (2) salah, karena energi benda $ A $ setelah tumbukan hanya 1 J saja. Energi kinetik benda $ A $ sebelum tumbukan yaitu sebesar $\\left(\\frac{1}{2}\\right)\\left(\\frac{1}{2}\\right)\\left(6\\right)^2\\rightarrow \\SI{9}{\\joule}$, setelah tumbukan energi kinetiknya juga $\\SI{9}{\\joule}$ ini berarti tidak ada energi kinetik yang \\textit {hilang} sehingga tumbukannya merupakan tumbukan lentik sempurna. Pernyataan (4) salah.', 0, 0, 0, 0, 0, 0, 0, 3, '2021-09-09 22:56:36', '0000-00-00 00:00:00'),
(13, 'Suatu kisi difraksi yang memiliki 500 celah per cm dapat digunakan sebagai peralatan inframerah spektroskopi karena kisi ini$\\ldots$\n\\begin{enumerate}[label=(\\arabic*), noitemsep, topsep=0pt]\n	\\item mempunyai jarak antarcelah \\num{2e-5} meter\n	\n	\\item besar sudut difraksi yang terjadi bergantung pada panjang gelombang sinar yang datang\n	\n	\\item dapat mendispersikan warna\n	\n	\\item dapat mempolarisasi gelombang\n\\end{enumerate}', 'A', 'B', 'C', 'D', 'E', 'pilgan', 'UTBK', 2019, 'a', 'Jarak antar celah dapat kita peroleh yaitu sebesar \n	\\begin{align*}\n		d ={}& \\frac{1}{\\SI{500}{\\per\\centi\\meter}} \\\\\n		d ={}& \\SI{2e-3}{\\centi\\meter} \\rightarrow \\SI{2e-5}{\\meter}\n	\\end{align*}\n	pernyataan (1) benar. Pada kisi difraksi, terang ke $ n $ yaitu $ d\\sin\\theta = n\\lambda $ ini berarti bahwa sudut difraksi bergantung pada panjang gelombang sinar datang. Prnyataan (2) benar. Kisi difraksi ini dapat mendispersikan warna tetapi tidak dapat mempolarisasi cahaya sehingga pernyataan (3) benar dan (4) salah.', 0, 0, 0, 0, 0, 0, 0, 3, '2021-09-10 07:17:57', '0000-00-00 00:00:00'),
(14, 'Sebuah benda bergerak di suatu permukaan yang kasar dengan koefisien gesek antara permukaan dengan benda konstan sebesar $\\mu$. Bila awalnya energi kinetik benda adalah $ E $ dan jarak yang dapat ditempuh benda sebelum berhenti adalah $ x $, maka besar massa benda adalah$\\ldots$', '$ \\dfrac{3E}{g\\mu x} $', '$ \\dfrac{E}{2g\\mu x} $', '$ \\dfrac{2E}{g\\mu x} $', '$ \\dfrac{E}{g\\mu x} $', '$ \\dfrac{E}{4g\\mu x} $', 'pilgan', 'UTBK', 2011, 'd', 'Gaya gesek akan melakukan usaha pada benda selama gerakannya, besar usaha oleh gaya gesek sama dengan perubahan energi mekanik benda karena gaya gesek termasuk gaya non-konservatif. Andaikan massa benda adalah $ m $ maka usaha yang dilakukan oleh gaya gesek dapat kita uraikan sebagai berikut\n	\\begin{align*}\n		-f x ={}& 0 -E \\\\\n		\\mu mg x ={}& E \\\\\n		m ={}& \\frac{E}{g\\mu x}\n	\\end{align*}\n	maka jawaban yang tepat adalah opsi (D)', 0, 0, 0, 0, 0, 0, 0, 1, '2021-09-14 11:10:22', '0000-00-00 00:00:00'),
(15, '\\begin{align}\r\n		d ={}& \\frac{1}{\\SI{500}{\\per\\centi\\meter}}\r\n	\\end{align}', 'afasfasf', 'afasg', 'agasg', 'agaga', 'ag', 'pilgan', '', 0, 'a', '\\begin{align}\r\n		d ={}& \\frac{1}{\\SI{500}{\\per\\centi\\meter}}\\\\\r\n		d ={}& \\SI{2e-3}{\\centi\\meter} \\rightarrow \\SI{2e-5}{\\meter}\\notag\\\\\r\n		d ={}& \\SI{2e-3}{\\centi\\meter} \\rightarrow \\SI{2e-5}{\\meter}\r\n	\\end{align}', 0, 0, 0, 0, 0, 0, 0, 0, '2021-10-06 08:51:49', '0000-00-00 00:00:00'),
(16, '\\begin{align*}\n		d ={}& \\frac{1}{\\SI{500}{\\per\\centi\\meter}} \\\\\n		d ={}& \\SI{2e-3}{\\centi\\meter} \\rightarrow \\SI{2e-5}{\\meter}\n	\\end{align*}', 'ghfgh', 'fghfh', 'fhfgh', 'fghfgh', 'fghf', 'pilgan', '', 0, 'a', '\\begin{aligned}\n		d ={}& \\frac{1}{\\SI{500}{\\per\\centi\\meter}} \\\\\n		d ={}& \\SI{2e-3}{\\centi\\meter} \\rightarrow \\SI{2e-5}{\\meter}\n	\\end{aligned}', 0, 0, 0, 0, 0, 0, 0, 0, '2021-10-06 08:56:59', '0000-00-00 00:00:00'),
(17, '\\begin{align}\r\n	\\frac{T_M^2}{T_N^2} ={}& \\frac{h_M^3}{h_N^3} \\\\\r\n	\\left(\\frac{8}{27}\\right)^2 ={}& \\left(\\frac{1000+r}{6000+r}\\right)^3 \\notag\\\\\r\n	\\frac{1000+r}{6000+r} ={}& \\left(\\frac{2^3}{3^3}\\right)^{\\frac{2}{3}} \\\\\r\n	9000+9r ={}& 24000+4r \\\\\r\n	5r ={}& 15000 \\\\\r\n	r ={}& \\SI{3000}{\\kilo\\meter}\r\n\\end{align}', 'ghfghsdg', 'fghfhsdg', 'fhfghsdg', 'fghfghsdg', 'fghfsdg', 'pilgan', '', 0, 'a', 'Besar GGL induksi yang muncul dapat kita peroleh dari persamaan hukum Faraday dan hukum Lenz\r\n	\\begin{align}\r\n		\\varepsilon ={}& -\\frac{\\Delta \\phi}{\\Delta t}\\\\\r\n		\\varepsilon ={}& -\\frac{\\Delta B\\cdot A}{\\Delta t} \\notag\\\\\r\n		\\varepsilon ={}& -\\frac{\\left(\\SI{-0,2}{\\tesla}-\\SI{0,3}{\\tesla}\\right)\\left(\\SI{9e-2}{\\meter\\squared}\\right)}{\\SI{1,5}{\\second}} \\\\\r\n		\\varepsilon ={}& \\SI{30}{\\milli\\volt}\r\n	\\end{align}\r\n	besarnya ggl induksi yang muncul adalah \\SI{30}{\\milli\\volt}\r\n\\end{solution}', 0, 0, 0, 0, 0, 0, 0, 0, '2021-10-06 08:56:59', '2021-10-14 17:17:31'),
(18, 'Soni berangkat sekolah pukul 06.45 pagi hari dan tepat sampai di sekolah pukul 07.00. Jika jarak antara rumah dan sekolah soni adalah 0,9 km, kelajuan rata-rata Soni menuju sekolah adalah $\\ldots$\n', '$ \\SI{0.5}{\\meter\\per\\second} $ ', '$\\SI{0.6}{\\meter\\per\\second}$\n', '$\\SI{0.7}{\\meter\\per\\second}$', '$\\SI{0.9}{\\meter\\per\\second}$', '$\\SI{1}{\\meter\\per\\second}$', 'pilgan', 'BAB', 0, 'e', 'Kelajuan rata-rata didefinisikan sebagai jarak tempuh tiap satuan waktu, secara matematis dapat ditulis\n	\\begin{align*}\n	v={}& \\frac{s}{t}\\,\\text{ .}\n	\\end{align*}	\n	Dari data di soal $(s=\\SI{0,9}{\\kilo\\meter}, t=\\SI{15}{\\minute})$ maka kita bisa langsung menghitung nilai kelajuan sebagai berikut,\n	\\begin{align*}\n	v={}& \\frac{s}{t}\\\\\n	v={}& \\frac{\\SI{0,9}{\\kilo\\meter}}{\\SI{15}{\\minute}}\\\\\n	v={}& \\frac{\\SI{900}{\\meter}}{\\SI{900}{\\second}}\\\\	\n	v={}& \\SI{1}{\\meter\\per\\second}\\,\\text{ .}\n	\\end{align*}\n	Jadi jawaban yang tepat adalah opsi \"e\".', 0, 0, 1, 0, 2, 17, 16, 0, '2021-10-17 06:49:47', '0000-00-00 00:00:00'),
(19, 'Perhatikan grafik posisi terhadap waktu dari 3 mobil berikut!\n\n \n\nBerdasarkan data grafik di atas, urutan mobil dengan kecepatan tertinggi hingga terendah adalah $\\ldots$', 'mobil A, B, dan C', 'mobil B, C, dan A', 'mobil C, A, dan B', 'mobil C, B, dan A', 'tidak bisa dipastikan', 'pilgan', 'BAB', 2021, 'a', 'Kurva linear dari ketiga mobil pada grafik posisi terhadap waktu menunjukkan jenis gerak mobil adalah gerak lurus beraturan (GLB). Semakin curam kurva artinya semakin besar kecepatan mobil.\n\nJadi jawaban yang tepat adalah opsi \"A\".', 0, 0, 0, 0, 0, 0, 0, 0, '2021-10-17 07:01:35', '2021-10-17 07:03:37'),
(20, 'Tes soal buat cek fitur', 'Oke', 'Oke', 'Oke', 'Oke', 'Oke', 'pilgan', 'BAB', 0, 'a', 'Cari sendiri', 0, 0, 0, 0, 1, 0, 0, 0, '2021-10-26 23:37:57', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bantuan`
--

CREATE TABLE `bantuan` (
  `id` int NOT NULL,
  `id_user` varchar(191) NOT NULL,
  `pertanyaan` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bantuan`
--

INSERT INTO `bantuan` (`id`, `id_user`, `pertanyaan`, `created_at`) VALUES
(1, 'cf52dbd0-04ad-11ec-acef-f39629d4d68f', 'reat', '2021-10-04 14:09:22'),
(2, 'cf52dbd0-04ad-11ec-acef-f39629d4d68f', 'coba fitur bantuan', '2021-10-18 14:51:59'),
(3, 'cf52dbd0-04ad-11ec-acef-f39629d4d68f', 'coba lagi', '2021-10-18 14:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `chatroom`
--

CREATE TABLE `chatroom` (
  `id` varchar(191) NOT NULL,
  `name` varchar(199) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int NOT NULL,
  `pertanyaan` text NOT NULL,
  `jawaban` text NOT NULL
);

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `pertanyaan`, `jawaban`) VALUES
(1, 'Pertanyaan: bolehkah menyalin isi konten baik video maupun teks soal dan pembahasan?', 'Dilarang menyalin (baik berupa screenshoot, screen record, atau penyalinan manual) konten-konten yang ada di aplikasi ini untuk keperluan\r\nkomersil'),
(2, 'Pertanyaan: kapan pertanyaan yang saya ajukan di kolom bantuan akan direspon?', 'Kami akan berusaha memberi respon secepat mungkin, selambat-lambatnya dalam rentang waktu 2x24 jam. Respon atas pertanyaanmu\r\nakan kami balas melalui email dan atau notifikasi pada aplikasi.'),
(3, 'Pertanyaan: apakah aplikasi ini cocok untuk anak level SMP?', 'Aplikasi ini bisa digunakan semua kalangan baik guru maupun siswa, namun demikian level soal dan materi di aplikasi ini disesuaikan\r\ndengan level SMA'),
(4, 'Pertanyaan: apa perbedaan tryout UTBK dan tryout BAB?', 'Tryout UTBK berisi kumpulan soal tes SBMPTN, SIMAK UI, UM UGM serta soal-soal prediksi yang selevel dengannya. Tryout UTBK\r\ndiperuntukkan untuk mengukur kesiapan mengerjakan soal-soal UTBK. Adapun Tryout BAB terbagi dua berdasarkan level soalnya. Ada\r\nlevel LOTS (Low Order Thinking Skills) dan HOTS (High Order Thinking Skills). Tryout BAB diperuntukkan untuk mengukur kemampuan\r\nspesifik di BAB tertentu.'),
(5, 'Pertanyaan: mengapa status akun belum berubah?', 'Setelah melakukan pembayaran, admin kami akan melakukan verifikasi dan mengubah status akunmu paling lambat 1x24 jam setelah\r\npembayaran dilakukan. Jika melebihi batas waktu tersebut, silahkan menghubungi adimin di fisikamu2022@gmail.com dengan subject\r\n“Perubahan Status Akun”');

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `id` varchar(199) NOT NULL,
  `judul` text NOT NULL,
  `tag` varchar(199) NOT NULL,
  `pertanyaan` text NOT NULL,
  `gbr` varchar(199) NOT NULL,
  `gbr_text` text NOT NULL,
  `id_user` varchar(199) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`id`, `judul`, `tag`, `pertanyaan`, `gbr`, `gbr_text`, `id_user`, `create_at`, `update_at`) VALUES
('6fb54c20-f275-11eb-bd27-fbf59b3671b6', 'UN fisika 2008', 'random', 'menghitung luas lingkaran', 'http://wilirahmatm.xyz/uploads/1_20210801110616409767_question.jpg', 'D.5,55 cm\nE. 3,60 cmn\nUN Fis ka 2008 P16 No. 2\nSeorangsiswa me ngukurdiame tersebuah li ngkaran hasilnya adalah 8,50 cm. Keliling lingkarannyadituliskan\nmenurutaturan an gka penting adalah...(.=3.14)\nA. 267 cm\nB. 26,7 cm\nC.2,67 am\nD. 0,267 am\nE. 0,0267 cam', 'd5dad300-807c-11eb-bd94-ff2f69272687', '2021-08-01 11:06:09', '0000-00-00 00:00:00'),
('a357ae60-f275-11eb-bd27-fbf59b3671b6', 'UN fisika 2008 p4 no 20', 'random', 'mengukur bidang tanah', 'http://wilirahmatm.xyz/uploads/1_20210801110743041980_question.jpg', '5. UN Fisi ka 2008 P4 No. 20\nHasil pe ngukuran panjang dan le bar sebid ang tanahberbentuk empat pe segi panjang ad al ah 15,35 m dan 12,5\nm. Luas tanah men urut aturan angka penting adal ah..\nA. 191,875m\nB. 191,88 m\nC. 191,87 m\nD. 191,9 m\nE. 192 m', 'd5dad300-807c-11eb-bd94-ff2f69272687', '2021-08-01 11:07:35', '0000-00-00 00:00:00'),
('0560ba20-f276-11eb-bd27-fbf59b3671b6', 'fisika', 'random', 'menghitung lensa', 'http://wilirahmatm.xyz/uploads/1_20210801111027518696_question.jpg', 'Soal No. 20\nAmatilah diagram pembentukan bayang an oleh mikroskop berikut ini!\nMat\npangama\nObyktir\nOkular\nJika berkas sinar yang keluar dari lensa okuler merupakan berkas sejajar, dan mata yang mengamati\nberpenglihatan normal, maka perbesaran mikroskop adalah..[Sn= 25 cm]\nA. 10 kali\nB. 18 kali\nC. 22 kali\nD. 30 kali\nE. 50 kali', 'd5dad300-807c-11eb-bd94-ff2f69272687', '2021-08-01 11:10:21', '0000-00-00 00:00:00'),
('451068c0-f279-11eb-b47a-1b8948112121', 'fisika smp', 'random', 'menghitung massa', 'http://wilirahmatm.xyz/uploads/1_20210801113342814644_question.jpg', 'Sebuah benda bermassa 5 kg terletak diam di atas sebuah bidang kasar dengan\nkoefisien gesek statis 0,3 dan koefisien gesek kinetis 0,2. Jika percepatan gravitasi\nadalah 10 ms berapakah gaya geseknya?', 'd5dad300-807c-11eb-bd94-ff2f69272687', '2021-08-01 11:33:35', '0000-00-00 00:00:00'),
('60e4d840-f40b-11eb-9653-ef491e695794', 'coba 1', 'random', 'coba 1', 'http://wilirahmatm.xyz/uploads/1_20210803113207172077_question.jpg', 'ALCATROZ\nRIGHTS RESERVED MOUSeT DESS\nMOU\nTDESSN\nTAN\n0Y INTENNATIONAL ROPMRGHTANA\nARKS ARE TRADRARNS OF THER RESPECNEW\nTHER RE', 'd5dad300-807c-11eb-bd94-ff2f69272687', '2021-08-03 11:32:05', '0000-00-00 00:00:00'),
('ccd834b0-fb32-11eb-be95-01dd203c9d80', 'test 1 judul', 'random', 'test 1 pertanyaan', 'http://wilirahmatm.xyz/uploads/1_20210812140156831657_question.jpg', '', 'd5dad300-807c-11eb-bd94-ff2f69272687', '2021-08-12 14:01:54', '0000-00-00 00:00:00'),
('fa52b400-fb33-11eb-8223-49f9f3b23586', 'test 2', 'random', 'test 2', 'http://wilirahmatm.xyz/uploads/1_20210812141022635266_question.jpg', '', 'd5dad300-807c-11eb-bd94-ff2f69272687', '2021-08-12 14:10:20', '0000-00-00 00:00:00'),
('c8606090-fbd4-11eb-b2d7-056b876f848e', 'test 3', 'random', 'test 3', 'http://wilirahmatm.xyz/uploads/1_20210813092127792656_question.jpg', 'Mendapat Hadiah Premium\nEpic', 'd5dad300-807c-11eb-bd94-ff2f69272687', '2021-08-13 09:21:27', '0000-00-00 00:00:00'),
('06340390-fbd5-11eb-b2d7-056b876f848e', 'test 4', 'random', 'test 4', 'http://wilirahmatm.xyz/uploads/1_20210813092311557902_question.jpg', 'riSIKa\n0:59:58\nLensa mata manusia merupakan lensa\ncembung yang memiliki index bias 1,44 dan\njejari kelengkungan 7,0 mm. Anggap jejari\nkelengkungan kedua lensa adalah sama. Jika\nsebuah benda setinggi 10 cm diletakkan 50\ncm di depan lensa mata, terbentuk bayangan\nldots', 'e9cafb00-84ab-11eb-b949-c3dbd67ac016', '2021-08-13 09:23:11', '0000-00-00 00:00:00'),
('ee89d020-fbdf-11eb-9a1a-75a49cbadb81', 'test 5', 'random', 'test 5', 'http://wilirahmatm.xyz/uploads/d5dad300-807c-11eb-bd94-ff2f69272687_20210813104116311071_question.jpg', '+BATTLEU PASS\nNOW AVAILABLE UNTIL AUGUST 9TH\nBATTLE LEVEL BUNDLE\nPURCHASE UP TO TWO BUNDLES PER CUSTOMER\n+60 BATTLE PASS LEVELS\n60\n+6X NEMESTICE IMMORTAL TREASURES\n+3X NEMESTICE THEMED TREASURES\nSAVE 70%\nYOU MUST OWN A NEMESTICE 2021 BATTLE PASS IN ORDER TO PURCHASE THIS ITEM.\nPURCHASE BATTLE PASS\nE', 'd5dad300-807c-11eb-bd94-ff2f69272687', '2021-08-13 10:41:15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `gambar_soal`
--

CREATE TABLE `gambar_soal` (
  `id` int NOT NULL,
  `nama_file` varchar(191) NOT NULL,
  `deskripsi` varchar(191) NOT NULL,
  `id_soal` int NOT NULL
);

--
-- Dumping data for table `gambar_soal`
--

INSERT INTO `gambar_soal` (`id`, `nama_file`, `deskripsi`, `id_soal`) VALUES
(1, 'img0', '/uploads/img0_3.PNG', 3),
(2, 'img0', '/uploads/img0_12.png', 12),
(3, 'img0', '/uploads/img0_19.png', 19);

-- --------------------------------------------------------

--
-- Table structure for table `hasil_nilai`
--

CREATE TABLE `hasil_nilai` (
  `id` int NOT NULL,
  `id_user` varchar(199) NOT NULL,
  `id_paket` int NOT NULL,
  `nilai` double NOT NULL,
  `nomor_salah` varchar(199) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isi_paket_soal`
--

CREATE TABLE `isi_paket_soal` (
  `id` int NOT NULL,
  `id_paket` int NOT NULL,
  `id_tryout_part` int NOT NULL DEFAULT '0',
  `id_soal` int NOT NULL,
  `no_soal` int NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isi_paket_soal`
--

INSERT INTO `isi_paket_soal` (`id`, `id_paket`, `id_tryout_part`, `id_soal`, `no_soal`, `create_at`, `update_at`) VALUES
(14, 3, 0, 14, 2, '2021-09-14 13:12:04', '0000-00-00 00:00:00'),
(16, 3, 0, 14, 3, '2021-09-14 13:12:37', '0000-00-00 00:00:00'),
(8, 3, 0, 3, 1, '2021-09-14 12:39:35', '0000-00-00 00:00:00'),
(17, 6, 0, 15, 2, '2021-10-06 09:00:25', '0000-00-00 00:00:00'),
(18, 6, 0, 16, 2, '2021-10-06 09:00:30', '0000-00-00 00:00:00'),
(19, 6, 0, 17, 2, '2021-10-06 17:30:52', '0000-00-00 00:00:00'),
(20, 6, 0, 17, 2, '2021-10-07 12:46:42', '0000-00-00 00:00:00'),
(21, 6, 0, 17, 2, '2021-10-07 12:46:50', '0000-00-00 00:00:00'),
(22, 6, 0, 17, 2, '2021-10-07 12:46:55', '0000-00-00 00:00:00'),
(23, 6, 0, 17, 2, '2021-10-07 12:47:00', '0000-00-00 00:00:00'),
(24, 6, 0, 17, 2, '2021-10-07 12:47:08', '0000-00-00 00:00:00'),
(25, 6, 0, 17, 2, '2021-10-07 12:53:11', '0000-00-00 00:00:00'),
(26, 6, 0, 17, 2, '2021-10-07 12:53:16', '0000-00-00 00:00:00'),
(27, 6, 0, 17, 2, '2021-10-07 12:53:21', '0000-00-00 00:00:00'),
(28, 6, 0, 17, 2, '2021-10-07 12:53:26', '0000-00-00 00:00:00'),
(29, 6, 0, 17, 2, '2021-10-07 12:53:37', '0000-00-00 00:00:00'),
(30, 6, 0, 17, 2, '2021-10-07 12:53:43', '0000-00-00 00:00:00'),
(31, 6, 0, 17, 2, '2021-10-07 12:53:48', '0000-00-00 00:00:00'),
(32, 3, 0, 4, 4, '2021-10-20 11:11:10', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_forum`
--

CREATE TABLE `jawaban_forum` (
  `id` int NOT NULL,
  `id_forum` varchar(199) NOT NULL,
  `id_user` varchar(199) NOT NULL,
  `jawaban` text NOT NULL,
  `gbr` varchar(199) NOT NULL,
  `grb_text` text NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `deskripsi`) VALUES
(1, 'XI IPA 1'),
(2, 'XI IPA 2');

-- --------------------------------------------------------

--
-- Table structure for table `konsep_soal`
--

CREATE TABLE `konsep_soal` (
  `id` int NOT NULL,
  `nomor` int NOT NULL DEFAULT '1',
  `deskripsi` varchar(199) NOT NULL,
  `id_sub_bab` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konsep_soal`
--

INSERT INTO `konsep_soal` (`id`, `nomor`, `deskripsi`, `id_sub_bab`) VALUES
(10, 3, 'Pembacaan Alat Ukur', 12),
(9, 2, 'Dimensi Besaran Fisis', 12),
(8, 1, 'Besaran Pokok dan Besaran Turunan', 12),
(11, 4, 'Angka Penting dan Notasi Ilmiah', 12),
(13, 5, 'Penjumlahan Vektor', 11),
(14, 6, 'Penguraian Vektor', 11),
(15, 7, 'Perkalian Vektor', 11),
(16, 8, 'Gerak Lurus Beraturan', 17),
(17, 9, 'Gerak Lurus Berubah Beraturan', 17),
(18, 10, 'Gerak Vertikal', 17),
(19, 11, 'Besaran-Besaran pada Gerak Parabola', 18),
(20, 12, 'Ketinggian Maksimum Gerak Parabola', 18),
(21, 13, 'Jarak Maksimum Gerak Parabola', 18),
(22, 14, 'Gerak Melingkar Beraturan', 19),
(23, 15, 'Gerak Melingkar Berubah Beraturan', 19),
(24, 16, 'Hubungan Roda-Roda', 19),
(25, 17, 'Percepatan dan Gaya Sentripetal pada Gerak Melingkar', 19),
(26, 18, 'Hukum Gerak Newton', 20),
(27, 19, 'Aplikasi Hukum Newton pada Bidang Datar dan Bidang Miring', 20),
(28, 20, 'Aplikasi Hukum Newton pada Sistem Katrol', 20),
(29, 21, 'Aplikasi Hukum Newton pada Gerak Melingkar', 20),
(32, 22, 'Gaya Gravitasi', 21),
(33, 23, 'Medan Gravitasi', 21),
(34, 24, 'Energi Potensial dan Potensial Gravitasi', 21),
(35, 25, 'Hukum Kepler', 21);

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` int NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `deskripsi`) VALUES
(1, 'Fisika'),
(2, 'Matematika');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `id_chatroom` varchar(199) NOT NULL,
  `id_user` varchar(199) NOT NULL,
  `id_partner` varchar(199) NOT NULL,
  `message` text NOT NULL,
  `file_name` text,
  `message_type` varchar(199) NOT NULL,
  `status` varchar(199) NOT NULL DEFAULT 'not read',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int NOT NULL,
  `id_users` varchar(199) NOT NULL,
  `title` varchar(199) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(199) NOT NULL DEFAULT 'not read',
  `tipe` varchar(191) NOT NULL DEFAULT 'terbaru',
  `send_status` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'not send',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `id_users`, `title`, `description`, `status`, `tipe`, `send_status`, `created_at`, `updated_at`) VALUES
(86, 'cf52dbd0-04ad-11ec-acef-f39629d4d68f', 'akun premium', 'akun premium anda sudah aktif', 'read', 'terbaru', 'sended', '2021-09-15 11:12:45', '2021-10-26 13:45:31'),
(85, 'e00d82f0-16e0-11ec-b474-55f105e05f44', 'akun premium', 'akun premium anda sudah aktif', 'read', 'terbaru', 'sended', '2021-09-15 11:12:45', '2021-10-04 11:25:08'),
(84, 'cf52dbd0-04ad-11ec-acef-f39629d4d68f', 'akun premium', 'akun premium anda sudah aktif', 'read', 'terbaru', 'sended', '2021-09-15 11:12:45', '2021-10-04 09:53:26'),
(83, 'cf52dbd0-04ad-11ec-acef-f39629d4d68f', 'akun premium', 'akun premium anda sudah aktif', 'read', 'terbaru', 'sended', '2021-09-15 11:12:45', '2021-10-04 09:52:51'),
(82, 'cf52dbd0-04ad-11ec-acef-f39629d4d68f', 'akun premium', 'akun premium anda sudah aktif', 'read', 'terbaru', 'sended', '2021-09-15 11:12:45', '2021-09-30 10:53:13'),
(81, 'cf52dbd0-04ad-11ec-acef-f39629d4d68f', 'akun premium', 'akun premium anda sudah aktif', 'read', 'terbaru', 'sended', '2021-09-15 11:12:45', '2021-09-29 17:44:47'),
(73, 'cf52dbd0-04ad-11ec-acef-f39629d4d68f', 'akun premium', 'akun premium anda sudah aktif', 'read', 'terbaru', 'sended', '2021-09-15 11:12:45', '2021-09-29 14:08:20'),
(79, 'cf52dbd0-04ad-11ec-acef-f39629d4d68f', 'akun premium', 'akun premium anda sudah aktif', 'read', 'terbaru', 'sended', '2021-09-15 11:12:45', '2021-09-29 14:39:39'),
(80, 'cf52dbd0-04ad-11ec-acef-f39629d4d68f', 'akun premium', 'akun premium anda sudah aktif', 'read', 'terbaru', 'sended', '2021-09-15 11:12:45', '2021-09-29 17:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `paket_app`
--

CREATE TABLE `paket_app` (
  `id` int NOT NULL,
  `nama` varchar(191) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paket_app`
--

INSERT INTO `paket_app` (`id`, `nama`, `deskripsi`, `harga`, `create_at`, `update_at`) VALUES
(1, 'Premium', 'Akses Soal Premium', 0, '2021-09-11 11:07:18', '2021-10-04 14:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `paket_soal`
--

CREATE TABLE `paket_soal` (
  `id` int NOT NULL,
  `nomor` int NOT NULL DEFAULT '1',
  `deskripsi` varchar(199) NOT NULL,
  `waktu` int NOT NULL,
  `jml_soal` int NOT NULL DEFAULT '0',
  `tipe` varchar(199) NOT NULL,
  `status` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'no publish',
  `id_mapel` int NOT NULL DEFAULT '0',
  `id_bab` int NOT NULL DEFAULT '0',
  `id_sub_bab` int NOT NULL DEFAULT '0',
  `id_konsep` int NOT NULL DEFAULT '0',
  `id_kelas` int NOT NULL DEFAULT '0',
  `id_level` int NOT NULL DEFAULT '0',
  `id_utbk` int NOT NULL DEFAULT '0',
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paket_soal`
--

INSERT INTO `paket_soal` (`id`, `nomor`, `deskripsi`, `waktu`, `jml_soal`, `tipe`, `status`, `id_mapel`, `id_bab`, `id_sub_bab`, `id_konsep`, `id_kelas`, `id_level`, `id_utbk`, `create_at`, `update_at`) VALUES
(3, 2, 'SBMPTN 2011', 1800, 4, 'UTBK', 'no publish', 0, 0, 0, 0, 0, 0, 1, '2021-09-10 11:41:43', '2021-10-25 19:45:09'),
(6, 1, 'SBMPTN 2012', 1800, 15, 'UTBK', 'publish', 0, 0, 0, 0, 0, 0, 1, '2021-09-10 11:41:43', '2021-10-25 19:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan_premium`
--

CREATE TABLE `pertanyaan_premium` (
  `id` varchar(191) NOT NULL,
  `id_member` varchar(191) NOT NULL,
  `pertanyaan` text,
  `gbr` varchar(191) DEFAULT NULL,
  `gbr_txt` varchar(191) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slide_content`
--

CREATE TABLE `slide_content` (
  `id` int NOT NULL,
  `title` varchar(191) NOT NULL,
  `img` varchar(191) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_content`
--

INSERT INTO `slide_content` (`id`, `title`, `img`, `create_at`, `update_at`) VALUES
(1, 'afasf', '/uploads/slide_1632894373866.png', '2021-09-29 13:46:17', '0000-00-00 00:00:00'),
(2, 'cvfdfg', '/uploads/slide_1632894386366.png', '2021-09-29 13:46:29', '0000-00-00 00:00:00'),
(3, 'vdvdf', '/uploads/slide_1632894399396.jpg', '2021-09-29 13:46:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sub_bab_soal`
--

CREATE TABLE `sub_bab_soal` (
  `id` int NOT NULL,
  `nomor` int NOT NULL DEFAULT '1',
  `deskripsi` varchar(191) NOT NULL,
  `id_bab` int NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_bab_soal`
--

INSERT INTO `sub_bab_soal` (`id`, `nomor`, `deskripsi`, `id_bab`, `create_at`, `update_at`) VALUES
(12, 1, 'Besaran dan Satuan', 1, '2021-09-12 18:25:43', '0000-00-00 00:00:00'),
(11, 2, 'Vektor', 1, '2021-09-12 18:25:27', '0000-00-00 00:00:00'),
(18, 4, 'Gerak Parabola', 2, '2021-09-16 23:10:03', '0000-00-00 00:00:00'),
(17, 3, 'Gerak Lurus', 2, '2021-09-16 23:09:39', '0000-00-00 00:00:00'),
(19, 5, 'Gerak Melingkar', 2, '2021-09-16 23:10:19', '0000-00-00 00:00:00'),
(20, 6, 'Hukum Gerak Newton', 2, '2021-09-16 23:10:46', '0000-00-00 00:00:00'),
(21, 7, 'Hukum Gravitasi Newton', 2, '2021-09-16 23:11:05', '0000-00-00 00:00:00'),
(22, 8, 'Usaha dan Energi', 2, '2021-09-16 23:11:39', '0000-00-00 00:00:00'),
(23, 9, 'Momentum dan Impuls', 2, '2021-09-16 23:11:55', '0000-00-00 00:00:00'),
(24, 10, 'Getaran Harmonik', 4, '2021-09-16 23:12:56', '0000-00-00 00:00:00'),
(25, 11, 'Kesetimbangan dan Dinamika Benda Tegar', 2, '2021-09-16 23:13:44', '0000-00-00 00:00:00'),
(26, 12, 'Elastisitas dan Hukum Hooke', 2, '2021-09-16 23:14:26', '0000-00-00 00:00:00'),
(27, 13, 'Fluida Statis', 3, '2021-09-16 23:14:46', '0000-00-00 00:00:00'),
(28, 14, 'Fluida Dinamis', 3, '2021-09-16 23:14:59', '0000-00-00 00:00:00'),
(29, 15, 'Suhu dan Kalor', 5, '2021-09-16 23:15:31', '0000-00-00 00:00:00'),
(30, 16, 'Teori Kinetik Gas', 5, '2021-09-16 23:15:46', '0000-00-00 00:00:00'),
(31, 17, 'Termodinamika', 5, '2021-09-16 23:16:00', '0000-00-00 00:00:00'),
(32, 18, 'Gelombang Mekanik', 4, '2021-09-16 23:16:35', '0000-00-00 00:00:00'),
(33, 19, 'Gelombang Bunyi', 4, '2021-09-16 23:16:54', '0000-00-00 00:00:00'),
(34, 20, 'Gelombang Cahaya', 4, '2021-09-16 23:17:57', '0000-00-00 00:00:00'),
(35, 21, 'Alat Optik', 8, '2021-09-16 23:18:28', '0000-00-00 00:00:00'),
(36, 22, 'Listrik Statis', 6, '2021-09-16 23:19:20', '0000-00-00 00:00:00'),
(37, 23, 'Listrik Arus Searah', 6, '2021-09-16 23:19:36', '0000-00-00 00:00:00'),
(38, 24, 'Medan Magnet', 7, '2021-09-16 23:19:58', '0000-00-00 00:00:00'),
(39, 25, 'Induksi Elektromagnetik', 7, '2021-09-16 23:20:42', '2021-09-17 06:34:35'),
(40, 26, 'Listrik Arus Bolak-Balik', 6, '2021-09-16 23:21:43', '0000-00-00 00:00:00'),
(41, 27, 'Gelombang Elektromagnetik', 9, '2021-09-16 23:22:21', '0000-00-00 00:00:00'),
(42, 28, 'Relativitas Khusus', 9, '2021-09-16 23:22:38', '0000-00-00 00:00:00'),
(43, 29, 'Fisika Kuantum', 10, '2021-09-16 23:23:08', '0000-00-00 00:00:00'),
(45, 30, '', 0, '2021-09-17 06:39:50', '0000-00-00 00:00:00'),
(46, 30, 'Fisika Inti', 10, '2021-09-17 06:40:21', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tingkat_kesulitan`
--

CREATE TABLE `tingkat_kesulitan` (
  `id` int NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tingkat_kesulitan`
--

INSERT INTO `tingkat_kesulitan` (`id`, `deskripsi`) VALUES
(1, 'LOTS'),
(2, 'HOTS');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE `transaction_history` (
  `id` int NOT NULL,
  `id_user` varchar(199) NOT NULL,
  `id_paket` varchar(191) NOT NULL,
  `payment_type` varchar(199) NOT NULL,
  `jumlah` int NOT NULL DEFAULT '0',
  `status` varchar(199) NOT NULL,
  `description` text,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_history`
--

INSERT INTO `transaction_history` (`id`, `id_user`, `id_paket`, `payment_type`, `jumlah`, `status`, `description`, `created_at`) VALUES
(1, 'e00d82f0-16e0-11ec-b474-55f105e05f44', '1', 'Bank Transfer', 50000, 'Expired', 'Pembelian Paket \"Premium\"', '2021-10-02 22:52:59'),
(2, 'cf52dbd0-04ad-11ec-acef-f39629d4d68f', '1', 'Bank Transfer', 50000, 'Expired', 'Pembelian Paket \"Premium\"', '2021-10-03 22:53:43'),
(3, 'e00d82f0-16e0-11ec-b474-55f105e05f44', '1', 'Bank Transfer', 50000, 'Expired', 'Pembelian Paket \"Premium\"', '2021-10-04 11:05:57'),
(4, 'e00d82f0-16e0-11ec-b474-55f105e05f44', '1', 'Bank Transfer', 0, 'Expired', 'Pembelian Paket \"Premium\"', '2021-10-04 15:56:56'),
(5, 'e00d82f0-16e0-11ec-b474-55f105e05f44', '1', 'Bank Transfer', 0, 'Expired', 'Pembelian Paket \"Premium\"', '2021-10-05 19:07:20'),
(6, 'e00d82f0-16e0-11ec-b474-55f105e05f44', '1', 'Bank Transfer', 0, 'Expired', 'Pembelian Paket \"Premium\"', '2021-10-08 04:57:53'),
(7, 'e00d82f0-16e0-11ec-b474-55f105e05f44', '1', 'Bank Transfer', 0, 'Belum di Bayar', 'Pembelian Paket \"Premium\"', '2021-10-08 06:08:05'),
(8, 'e00d82f0-16e0-11ec-b474-55f105e05f44', '1', 'Bank Transfer', 0, 'Belum di Bayar', 'Pembelian Paket \"Premium\"', '2021-10-27 08:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `tryout_history`
--

CREATE TABLE `tryout_history` (
  `id` int NOT NULL,
  `id_user` varchar(199) NOT NULL,
  `id_tryout` int NOT NULL,
  `jawaban` varchar(199) NOT NULL,
  `sisa_waktu` int NOT NULL,
  `status` varchar(199) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tryout_part`
--

CREATE TABLE `tryout_part` (
  `id` int NOT NULL,
  `id_paket` int NOT NULL,
  `id_mapel` int NOT NULL,
  `nama_part` varchar(199) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tryout_part`
--

INSERT INTO `tryout_part` (`id`, `id_paket`, `id_mapel`, `nama_part`, `create_at`, `update_at`) VALUES
(1, 3, 1, 'Fisika', '2021-04-28 14:00:42', '0000-00-00 00:00:00'),
(2, 3, 2, 'Matematika', '2021-04-28 14:15:45', '0000-00-00 00:00:00'),
(3, 19, 1, 'Fisika', '2021-08-21 07:28:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(199) NOT NULL,
  `username` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `token_chat` text NOT NULL,
  `role` varchar(191) NOT NULL,
  `foto_profile` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `token_chat`, `role`, `foto_profile`) VALUES
('cf52dbd0-04ad-11ec-acef-f39629d4d68f', 'wili rahmat Muhamad', 'wilirahmatm@gmail.com', '492244734', '', '', NULL),
('e00d82f0-16e0-11ec-b474-55f105e05f44', 'Toto Budianto', 'totobudianto82@gmail.com', '106913516', '', '', NULL),
('e8261ce0-16e0-11ec-a11a-c747670e564c', 'akun smurf', 'smurfgameakun1@gmail.com', '496865333', '', '', NULL),
('70f1ba00-16e3-11ec-8a47-15547b59a46c', 'wili', 'wili123@gmail.com', 'wili123', '', '', NULL),
('aa77c2e0-16e5-11ec-ba71-6bf7c54a0616', 'coba', 'coba@gmail.com', '12345', '', '', NULL),
('a09780f0-16e8-11ec-9ce9-07be99d4e0ba', 'asdf', 'asdf@gmail.com', 'asdf123', '', '', NULL),
('cbd63680-16e8-11ec-9ce9-07be99d4e0ba', 'qwerty', 'qwerty @gmail.com', 'qwerty123', '', '', NULL),
('aea717e0-16e9-11ec-965a-9f834195b4c1', 'zxc', 'zxc@gmail.com', 'zxc123', '', '', NULL),
('baf5faf0-36c6-11ec-af34-118e3a560c33', 'aaaaa', 'aaaa@gmail.com', 'aaaa12345', '', '', NULL),
('c59d2bf0-21b2-11ec-9035-4fc17943901f', 'fisikamu', 'fisikamu2022@gmail.com', '12345678', '', '', NULL),
('9cea4920-22a9-11ec-9957-edc7ad0dbf6b', 'Indra', 'indra.budiansah@gmail.com', 'test12345', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_details`
--

CREATE TABLE `users_details` (
  `id` int NOT NULL,
  `id_user` varchar(199) NOT NULL,
  `id_kelas` varchar(199) NOT NULL,
  `harga` int DEFAULT '0',
  `rating` double DEFAULT '0',
  `status_online` varchar(191) DEFAULT 'offline',
  `photo` varchar(199) DEFAULT '',
  `pendidikan` varchar(199) DEFAULT '',
  `alamat` text,
  `no_hp` varchar(191) NOT NULL DEFAULT '',
  `koordinat_alamat` varchar(191) DEFAULT '',
  `coin` int NOT NULL DEFAULT '0',
  `membership` varchar(199) NOT NULL DEFAULT 'free',
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_details`
--

INSERT INTO `users_details` (`id`, `id_user`, `id_kelas`, `harga`, `rating`, `status_online`, `photo`, `pendidikan`, `alamat`, `no_hp`, `koordinat_alamat`, `coin`, `membership`, `created_at`, `update_at`) VALUES
(1, 'cf52dbd0-04ad-11ec-acef-f39629d4d68f', '', 0, 0, '', 'https://lh3.googleusercontent.com/a-/AOh14GghP3KpVNTiJHp4u6JLnjDoS2DBlSjR5E7d69Ah9w=s96-c', '', 'lombok timur sikur', '081703999567', '', 0, 'premium', '2021-08-24 15:35:21', '0000-00-00 00:00:00'),
(2, 'e00d82f0-16e0-11ec-b474-55f105e05f44', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 'free', '2021-09-16 19:26:07', '0000-00-00 00:00:00'),
(3, 'e8261ce0-16e0-11ec-a11a-c747670e564c', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 'free', '2021-09-16 19:26:21', '0000-00-00 00:00:00'),
(20, 'baf5faf0-36c6-11ec-af34-118e3a560c33', '', NULL, NULL, NULL, '', NULL, NULL, '', NULL, 0, 'free', '2021-10-27 09:39:32', '0000-00-00 00:00:00'),
(4, '70f1ba00-16e3-11ec-8a47-15547b59a46c', '', NULL, NULL, NULL, '', NULL, NULL, '', NULL, 0, 'free', '2021-09-16 19:44:23', '0000-00-00 00:00:00'),
(5, 'aa77c2e0-16e5-11ec-ba71-6bf7c54a0616', '', NULL, NULL, NULL, '', NULL, NULL, '', NULL, 0, 'free', '2021-09-16 20:00:17', '0000-00-00 00:00:00'),
(6, 'a09780f0-16e8-11ec-9ce9-07be99d4e0ba', '', NULL, NULL, NULL, '', NULL, NULL, '', NULL, 0, 'free', '2021-09-16 20:21:30', '0000-00-00 00:00:00'),
(7, 'cbd63680-16e8-11ec-9ce9-07be99d4e0ba', '', NULL, NULL, NULL, '', NULL, NULL, '', NULL, 0, 'free', '2021-09-16 20:22:42', '0000-00-00 00:00:00'),
(8, 'aea717e0-16e9-11ec-965a-9f834195b4c1', '', NULL, NULL, NULL, '', NULL, NULL, '', NULL, 0, 'free', '2021-09-16 20:29:03', '0000-00-00 00:00:00'),
(18, 'c59d2bf0-21b2-11ec-9035-4fc17943901f', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 'free', '2021-09-30 13:53:45', '0000-00-00 00:00:00'),
(19, '9cea4920-22a9-11ec-9957-edc7ad0dbf6b', '', NULL, NULL, NULL, '', NULL, NULL, '', NULL, 0, 'free', '2021-10-01 19:20:42', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `utbk`
--

CREATE TABLE `utbk` (
  `id` int NOT NULL,
  `deskripsi` varchar(191) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utbk`
--

INSERT INTO `utbk` (`id`, `deskripsi`, `create_at`, `update_at`) VALUES
(1, 'SBMPTN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'UM UGM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'SIMAK UI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'LATIHAN 2021', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `video_materi`
--

CREATE TABLE `video_materi` (
  `id` int NOT NULL,
  `nomor` int NOT NULL DEFAULT '1',
  `judul` varchar(199) NOT NULL,
  `tutor` varchar(191) NOT NULL,
  `Deskripsi` text NOT NULL,
  `poin` text NOT NULL,
  `thumbnail` varchar(191) DEFAULT NULL,
  `link_video` varchar(199) NOT NULL,
  `status` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'no publish',
  `id_sub_bab` int NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video_materi`
--

INSERT INTO `video_materi` (`id`, `nomor`, `judul`, `tutor`, `Deskripsi`, `poin`, `thumbnail`, `link_video`, `status`, `id_sub_bab`, `create_at`, `update_at`) VALUES
(1, 2, 'Gerak Lurus Berubah Berarturan asdfghjklmnbvcxzakljkljkljlkjlkjlkjkljljlkjkljkljljljl', 'Andi', '<p>Oke di video ini targetnya ada 5 poin,</p>\r\n<ol>\r\n<li>Paham apa itu besaran dan satuan fisika</li>\r\n<li>Bisa membedakan satuan baku dan non baku</li>\r\n<li>Bisa menjelaskan standar acuan dari beberapa besaran seperti standar 1 meter, standar 1 sekon dan standar 1 kg.</li>\r\n<li>Bisa membedakan satuan internasional dengan satuan baku</li>\r\n<li>Bisa menjelaskan satuan standar selain SI</li>\r\n</ol>\r\n<p></p>\r\n<p>Poin 1 <span style=\"color: rgb(84,172,210);\">(00.00 - 01.00)</span>, Poin 2 <span style=\"color: rgb(84,172,210);\">(01.00 - 02.30)</span>,</p>\r\n<p>Poin 3 <span style=\"color: rgb(84,172,210);\">(02.30 - 03.50)</span>, Poin 4 <span style=\"color: rgb(84,172,210);\">(03.50 - 04.30)</span>,</p>\r\n<p>Poin 5 <span style=\"color: rgb(84,172,210);\">(04.30 - 5.15)</span>.</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n<p></p>\r\n', '', '/uploads/thumbnail_1632974123814.PNG', '/uploads/video_materi_1_12_1632974138176.mp4', 'publish', 12, '2021-09-30 11:55:50', '2021-10-25 19:48:57'),
(2, 1, 'Gerak Lurus Beraturan', 'Andi', '<p>Oke di video ini targetnya ada 5 poin,</p>\r\n<ol>\r\n<li>Paham apa itu besaran dan satuan fisika</li>\r\n<li>Bisa membedakan satuan baku dan non baku</li>\r\n<li>Bisa menjelaskan standar acuan dari beberapa besaran seperti standar 1 meter, standar 1 sekon dan standar 1 kg.</li>\r\n<li>Bisa membedakan satuan internasional dengan satuan baku</li>\r\n<li>Bisa menjelaskan satuan standar selain SI</li>\r\n</ol>\r\n<p></p>\r\n<p>Poin 1 <span style=\"color: rgb(84,172,210);\">(00.00 - 01.00)</span>, Poin 2 <span style=\"color: rgb(84,172,210);\">(01.00 - 02.30)</span>,</p>\r\n<p>Poin 3 <span style=\"color: rgb(84,172,210);\">(02.30 - 03.50)</span>, Poin 4 <span style=\"color: rgb(84,172,210);\">(03.50 - 04.30)</span>,</p>\r\n<p>Poin 5 <span style=\"color: rgb(84,172,210);\">(04.30 - 5.15)</span>.</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n<p></p>\r\n', '', '/uploads/thumbnail_1632974219843.jpeg', '/uploads/video_materi_1_12_1632974197121.mp4', 'publish', 12, '2021-09-30 11:57:05', '2021-10-25 19:48:54'),
(4, 5, 'Vektor 3 Dimensi', 'Agus', '<p>Oke di video ini targetnya ada 5 poin,</p>\r\n<ol>\r\n<li>Paham apa itu besaran dan satuan fisika</li>\r\n<li>Bisa membedakan satuan baku dan non baku</li>\r\n<li>Bisa menjelaskan standar acuan dari beberapa besaran seperti standar 1 meter, standar 1 sekon dan standar 1 kg.</li>\r\n<li>Bisa membedakan satuan internasional dengan satuan baku</li>\r\n<li>Bisa menjelaskan satuan standar selain SI</li>\r\n</ol>\r\n<p></p>\r\n<p>Poin 1 <span style=\"color: rgb(84,172,210);\">(00.00 - 01.00)</span>, Poin 2 <span style=\"color: rgb(84,172,210);\">(01.00 - 02.30)</span>,</p>\r\n<p>Poin 3 <span style=\"color: rgb(84,172,210);\">(02.30 - 03.50)</span>, Poin 4 <span style=\"color: rgb(84,172,210);\">(03.50 - 04.30)</span>,</p>\r\n<p>Poin 5 <span style=\"color: rgb(84,172,210);\">(04.30 - 5.15)</span>.</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n<p></p>\r\n', '', '/uploads/thumbnail_1632975115278.png', '/uploads/video_materi_1_11_1632975102040.mp4', 'not publish', 11, '2021-09-30 12:12:03', '2021-09-30 04:12:03'),
(5, 3, 'text 2', 'admin', '<p></p>\n', '', '/uploads/thumbnail_1633138258100.jpg', '/uploads/video_materi_1_11_212313821212.mp4', 'publish', 11, '2021-10-02 09:33:15', '2021-10-25 19:48:59'),
(6, 4, 'coba 555', 'coba 555', '<p>asfasfaf</p>\n', '', '/uploads/thumbnail_1633141110243.jpg', '/uploads/video_materi_1_12_1633141165446.mp4', 'no publish', 12, '2021-10-02 10:19:38', '2021-10-26 09:39:41'),
(11, 8, 'qwerty', 'qwerty123', '<p><span style=\"color: rgb(147,101,184);font-size: 16px;\"><strong><ins>qwerty123</ins></strong></span></p>\n', '00:10,00:30,00:45,01:00,01:10', '/uploads/thumbnail_1635212742356.jpg', '/uploads/video_materi_1_12_1635212754801.mp4', 'publish', 12, '2021-10-26 09:46:02', '2021-10-26 09:46:18'),
(9, 6, 'asfas', 'asfa', '<p>asfasf</p>\n', '00:01,00:03', '/uploads/thumbnail_1635042446603.png', '/uploads/video_materi_1_12_1635042460698.mp4', 'not publish', 12, '2021-10-24 10:27:47', '2021-10-24 02:27:47'),
(10, 7, 'asfasg', 'dfhfghjf', '<p>khjkgkghkg</p>\n', '00:40,01:30,02:00', '/uploads/thumbnail_1635042599706.jpeg', '/uploads/video_materi_1_12_1635042607867.mkv', 'no publish', 12, '2021-10-24 10:30:15', '2021-10-26 09:39:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bab_soal`
--
ALTER TABLE `bab_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_soal`
--
ALTER TABLE `bank_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bantuan`
--
ALTER TABLE `bantuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatroom`
--
ALTER TABLE `chatroom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gambar_soal`
--
ALTER TABLE `gambar_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_nilai`
--
ALTER TABLE `hasil_nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isi_paket_soal`
--
ALTER TABLE `isi_paket_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawaban_forum`
--
ALTER TABLE `jawaban_forum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konsep_soal`
--
ALTER TABLE `konsep_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paket_app`
--
ALTER TABLE `paket_app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paket_soal`
--
ALTER TABLE `paket_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pertanyaan_premium`
--
ALTER TABLE `pertanyaan_premium`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide_content`
--
ALTER TABLE `slide_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_bab_soal`
--
ALTER TABLE `sub_bab_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tingkat_kesulitan`
--
ALTER TABLE `tingkat_kesulitan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tryout_history`
--
ALTER TABLE `tryout_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tryout_part`
--
ALTER TABLE `tryout_part`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_details`
--
ALTER TABLE `users_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utbk`
--
ALTER TABLE `utbk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_materi`
--
ALTER TABLE `video_materi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bab_soal`
--
ALTER TABLE `bab_soal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bank_soal`
--
ALTER TABLE `bank_soal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `bantuan`
--
ALTER TABLE `bantuan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gambar_soal`
--
ALTER TABLE `gambar_soal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hasil_nilai`
--
ALTER TABLE `hasil_nilai`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `isi_paket_soal`
--
ALTER TABLE `isi_paket_soal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `jawaban_forum`
--
ALTER TABLE `jawaban_forum`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `konsep_soal`
--
ALTER TABLE `konsep_soal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `paket_app`
--
ALTER TABLE `paket_app`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `paket_soal`
--
ALTER TABLE `paket_soal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slide_content`
--
ALTER TABLE `slide_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_bab_soal`
--
ALTER TABLE `sub_bab_soal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tingkat_kesulitan`
--
ALTER TABLE `tingkat_kesulitan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tryout_history`
--
ALTER TABLE `tryout_history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tryout_part`
--
ALTER TABLE `tryout_part`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_details`
--
ALTER TABLE `users_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `utbk`
--
ALTER TABLE `utbk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `video_materi`
--
ALTER TABLE `video_materi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
