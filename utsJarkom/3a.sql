-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2023 at 07:51 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `3a`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbkategori`
--

CREATE TABLE `tbkategori` (
  `id_kategori` int(2) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbkategori`
--

INSERT INTO `tbkategori` (`id_kategori`, `kategori`) VALUES
(1, 'Fotografi'),
(2, 'Kuliner'),
(3, 'Wisata Religi'),
(4, 'Resep Masakan');

-- --------------------------------------------------------

--
-- Table structure for table `tbmenu`
--

CREATE TABLE `tbmenu` (
  `id_menu` int(2) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `urutan` int(1) NOT NULL,
  `link` varchar(200) NOT NULL,
  `id_induk` int(2) NOT NULL,
  `target` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbmenu`
--

INSERT INTO `tbmenu` (`id_menu`, `menu`, `urutan`, `link`, `id_induk`, `target`) VALUES
(1, 'Home', 1, '', 0, ''),
(2, 'About', 2, '', 0, ''),
(3, 'Service', 3, '', 0, ''),
(5, 'Page 1', 1, '', 9, ''),
(6, 'Page 2', 2, '', 9, ''),
(9, 'Contact', 4, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbpage`
--

CREATE TABLE `tbpage` (
  `id_page` int(11) NOT NULL,
  `judul_page` varchar(100) NOT NULL,
  `isi_page` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbpage`
--

INSERT INTO `tbpage` (`id_page`, `judul_page`, `isi_page`) VALUES
(1, 'About', 'Isi dari halaman about'),
(2, 'Services', 'Ini merupakan isi dari halaman Services'),
(3, 'Page 1', 'Halaman ini halaman page 1'),
(4, 'Page 2', 'Halaman page dua');

-- --------------------------------------------------------

--
-- Table structure for table `tbpost`
--

CREATE TABLE `tbpost` (
  `id_post` int(3) NOT NULL,
  `judul_post` varchar(100) NOT NULL,
  `isi_post` text NOT NULL,
  `tgl_post` varchar(10) NOT NULL,
  `gambar` varchar(50) NOT NULL DEFAULT 'blog3.jpg',
  `id_katgori` int(2) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbpost`
--

INSERT INTO `tbpost` (`id_post`, `judul_post`, `isi_post`, `tgl_post`, `gambar`, `id_katgori`, `status`) VALUES
(1, 'Tripod', 'Kaki tiga atau tripod dalam fotografi, adalah alat stan untuk membantu agar badan kamera bisa berdiri dengan tegak dan tegar. Hal ini dimaksudkan untuk mengurangi kelelahan fotografer dalam mengambil gambar dan mengurangi derau yang ditimbulkan oleh guncangan tangan fotografer.\r\n\r\nTripod biasanya dipakai jika fotografer menggunakan kecepatan rana di angka 30 atau lebih lambat atau menggunakan lensa kamera dengan focal length lebih dari 200 mm.', '2023-01-01', 'blog3.jpg', 1, 1),
(2, 'Lensa Tetap (Fix)', 'Lensa tetap atau prime lens atau mungkin kita lebih mengenal istilah bahasa Inggris fixed lens adalah lensa dengan panjang fokal yang tidak dapat diubah, dalam arti ketika ingin memperbesar atau memperlebar jangkauan objek yang ingin difoto, Anda harus melakukan zooming secara manual yakni menggunakan kaki alias maju mundurkan badan. Tentu berbeda dengan lensa zoom yang terdapat grip untuk melakukan zooming pada kamera, sehingga Anda tidak perlu maju-mundur untuk memperbesar atau memperlebar objek.', '2023-01-02', 'blog2.jpg', 1, 1),
(3, 'Diafragma', 'Diafragma merupakan bagian dari lensa yang berfungsi mengatur intensitas cahaya yang masuk ke kamera. Saat ini, jenis diafragma yang paling terkenal adalah diafragma yang tingkapnya dapat diatur besar kecilnya, yang disebut diafragma iris atau hanya iris.', '2023-01-03', 'blog3.jpg', 1, 1),
(4, 'Filter Lensa', 'Filter lensa yang terpasang di setiap lensa kamera adalah kaca transparan yang tipis, dan berfungsi untuk melindungi kondisi lensa kamera, mengubah karakteristik pencahayaan yang masuk ke dalam lensa kamera.', '2023-01-04', 'blog4.jpg', 1, 1),
(5, 'Gethuk', 'Fimela.com, Jakarta Indonesia dikenal dengan beragam makanan khasnya yang menggugah selera. Setiap daerah bahkan punya makanan khas masing-masing yang begitu mengesankan. Salah satu makanan khas Indonesia yang begitu mengesankan dan menggugah selera adalah getuk atau gethuk.\r\n\r\nGethuk merupakan makanan ringan yang terbuat dari singkong atau ketela pohon. Gethuk adalah makanan ringan yang bisa dengan mudah ditemukan di daerah Jawa Tengah maupun Jawa Timur. Umumnya, gethuk memiliki rasa manis dan gurih yang khas. Gethuk juga memiliki tekstur yang cukup lembut dengan tampilan yang menarik hati.', '2023-01-01', 'blog2.jpg', 2, 1),
(6, 'Tahu Takwa', 'Tahu merupakan salah satu makanan yang terbuat dari kedelai yang difermentasi. Asal tahu sendiri dari negara Tiongkok. Konon katanya tahu sudah dibuat dari 2000 tahun yang lalu, sejak zaman dinasti Han.\r\n\r\nAsal kata tahu adalah dari kata ‘tauhu’ yang artinya kedelai  yang difermentasi. Kedatangan bangsa Tiongkok ke Indonesia membuat makanan satu ini juga tersebar di Indonesia.\r\n\r\nTak dipungkiri bahwa tahu merupakan salah satu kuliner yang melekat di hati rakyat Indonesia. Banyak makanan yang menggunakan tahu sebagai bahan bakunya sebut saja sapo tahu, tahu campur lamongan, tahu telur, dan banyak lainnya.\r\n\r\nDi berbagai daerah Indonesia sendiri banyak terdapat variasi tahu seperti tahu sutra, tahu sumedang, hingga tahu takwa. Tahu takwa sendiri merupakan tahu khas dari Kediri yang menjadi salah satu oleh-oleh bila berkunjung ke Kediri. Tak lengkap rasanya bila ke Kediri tanpa mencoba gurihnya tahu takwa.\r\n\r\nNah, artikel ini akan membahas serba-serbu dari tahu takwa khas kediri. Apa saja? Yuk simak artikel berikut!', '2023-01-02', 'blog3.jpg', 2, 1),
(7, 'Rujak Cingur', 'Rujak cingur adalah salah satu makanan tradisional yang mudah ditemukan di daerah Jawa Timur, terutama di daerah asalnya Surabaya. Dalam bahasa Jawa , kata cingur berarti \"mulut\", hal ini merujuk pada bahan irisan mulut atau moncong sapi yang direbus dan dicampurkan ke dalam hidangan. Rujak cingur biasanya terdiri dari irisan beberapa jenis buah seperti timun, kerahi (krai, yaitu sejenis timun khas Jawa Timur), bengkuang, mangga muda, nanas, kedondong, kemudian ditambah lontong, tahu, tempe, bendoyo, cingur, serta sayuran seperti kecambah/taoge, kangkung, dan kacang panjang. Semua bahan tadi dicampur dengan saus atau bumbu yang terbuat dari olahan petis udang, air matang untuk sedikit mengencerkan, gula/gula merah, cabai, kacang tanah yang digoreng, bawang goreng, garam, dan irisan tipis pisang biji hijau yang masih muda (pisang klutuk). Semua saus/bumbu dicampur dengan cara diulek, kemudian diberi topping cingur. Jika tanpa cingur maka rujak ini disebut rujak ulek.\r\n\r\nDalam penyajiannya, rujak cingur dibedakan menjadi dua macam, yaitu penyajian \'biasa\' dan \'matengan\' (menyebut huruf e dalam kata matengan seperti menyebut huruf e dalam kata: seperti/menyebut/bendoyo). Penyajian \'biasa\' atau umumnya, berupa semua bahan yang telah disebutkan di atas, sedangkan \'matengan\' (matang, Jawa) hanya terdiri dari bahan-bahan matang saja; lontong, tahu goreng, tempe goreng, bendoyo (kerahi yang digodok) dan sayur (kangkung, kacang panjang, tauge) yang telah direbus atau dikukus. Tanpa ada bahan \'mentah\'nya yaitu buah-buahan, karena pada dasarnya ada orang yang tidak menyukai buah-buahan. Keduanya memakai saus atau bumbu yang sama.\r\n\r\nMakanan ini disebut rujak cingur karena bumbu olahan yang digunakan adalah petis udang dan irisan cingur. Hal ini yang membedakan dengan makanan rujak pada umumnya yang biasanya tanpa menggunakan bahan cingur atau bibir sapi tersebut. Rujak cingur biasa disajikan dengan tambahan kerupuk udang dan dengan alas pincuk (daun pisang) atau piring.', '2023-01-03', 'blog4.jpg', 2, 1),
(8, 'Martabak', 'Di Indonesia, ada dua jenis martabak, yaitu martabak asin/telur yang terbuat dari campuran telur dan daging, serta martabak manis, yang biasanya diisi coklat dan keju. Berbeda dengan martabak telur, martabak manis adalah sejenis kue atau roti isi selai yang biasa dimakan di saat santai sebagai makanan ringan. Di Malaysia, martabak manis (yang dikenal dengan nama Apam Balik) sering dijadikan sebagai hidangan sarapan dengan ditemani segelas teh tarik. Martabak manis yang dikenal di Indonesia bukanlah sejenis martabak. Tetapi merupakan Kue Terang Bulan. Yang disalah artikan oleh warga Indonesia bagian barat (dari area Jawa Barat ke barat) sebagai martabak manis karena biasa dijual pedagang bersamaan dengan martabak.', '2023-01-04', 'blog1.jpg', 2, 1),
(9, 'Tuban', 'Kota Tuban memiliki asal usul dalam beberapa versi, pertama disebut sebagai Tuban dari lakuran watu tiban (batu yang jatuh dari langit), yaitu batu pusaka yang dibawa oleh sepasang burung dari Majapahit menuju Demak, dan ketika batu tersebut sampai di atas Kota Tuban, batu tersebut jatuh dan dinamakan Tuban. Saat ini wujud dari batu tersebut (watu tiban) masih ada dan dalam kondisi yang relatif utuh yang sekarang disimpan di Museum Kambang Putih, Tuban. Adapun versi yang kedua berupa lakuran dari metu banyu berarti keluar air, yaitu peristiwa ketika Raden Dandang Wacana (Kyai Gede Papringan) atau Bupati Tuban yang pertama membuka hutan Papringan dan anehnya, ketika pembukaan hutan tersebut keluar air yang sangat deras. Hal ini juga berkaitan dengan adanya sumur tua yang dangkal tetapi airnya melimpah, dan istimewanya sumur tersebut airnya tawar padahal berada di dekat pantai. Ada juga versi ketiga, Tuban berasal dari kata \"tuba\" atau racun yang artinya sama dengan nama kecamatan di Tuban yaitu Kecamatan Jenu.', '2023-01-01', 'blog4.jpg', 3, 1),
(10, 'Kediri', 'Seiring kemajuan zaman, sudah mulai dilupakan oleh masyarakat Indonesia, padahal Tuban mengandung nilai sejarah tinggi dan besar peran serta perjuangan masyarakat Tuban dalam melawan penjajah itu sudah mulai luntur dalam dunia pemerintahan Indonesia saat ini.\r\n\r\nPT Semen Indonesia (PERSERO) Tbk (sebelumnya bernama semen gresik) yang terkenal besar di Indonesia pada masa sekarang juga beroperasi dan mendirikan pabrik di daerah Tuban sejak awal tahun 1990 an. Selain itu di Tuban juga terdapat beberapa industri skala internasional, terutama dibidang minyak & Gas. Perusahaan yang beroperasi di Tuban antara lain Pertamina Petrochina East Java (di kecamatan Soko) yang menghasilkan minyak mentah, serta PT Trans Pacific Petrochemical Indotama (TPPI) & PERTAMINA TTU (di kecamatan Jenu) dan pada tahun 2010 dibangun Pabrik Semen Holcim & Pembangkit Listrik Tenaga Uap yang dibangun di daerah Jenu.\r\n\r\nUntuk pendidikan Tuban tidak kalah dengan daerah lain dipulau jawa, sudah sangat sedikit masyarakat Tuban yang buta huruf bahkan tinggal seberapa persennya, untuk pendidikan rata-rata masyarakat sudah mencapai pendidikan SMA. Lulusan-lulusan SMA di Tuban sudah banyak yang melanjutkan studinya ke Universitas negeri dan swasta terkenal seperti ITS, UI, UGM, ITB, UNAIR, UNBRAW, UNDIP, IPB, UMM, UNTAG dll.', '2023-01-02', 'blog3.jpg', 3, 1),
(11, 'Malang', 'Kabupaten Malang terletak pada 112 035`10090`` sampai 112``57`00`` Bujur Timur 7044`55011`` sampai 8026`35045`` Lintang Selatan. Kabupaten Malang berbatasan dengan Kabupaten Jombang, Kabupaten Pasuruan; dan Kota Batu di sebelah utara, Kabupaten Probolinggo dan Kabupaten Lumajang di sebelah timur, Kabupaten Blitar dan Kabupaten Kediri di sebelah barat, serta Samudra Hindia di sebelah selatan. Kota Malang menjadi enklave di tengah-tengah kabupaten ini.\r\n\r\nSebagian besar wilayah Kabupaten Malang merupakan kawasan dataran tinggi dan pegunungan yang berhawa sejuk. Bagian barat dan barat laut berupa pegunungan, dengan puncaknya Gunung Arjuno (3.339 m) dan Gunung Kawi (2.651 m). Di pegunungan ini terdapat mata air Sungai Brantas, sungai terpanjang kedua di pulau Jawa dan terpanjang di Jawa Timur.\r\n\r\nBagian timur merupakan kompleks Pegunungan Bromo-Tengger-Semeru, dengan puncaknya Gunung Bromo (2.392 m) dan Gunung Semeru (3.676 m). Gunung Semeru adalah gunung tertinggi di Pulau Jawa. Kota Malang sendiri berada di cekungan antara kedua wilayah pegunungan tersebut. Bagian selatan berupa pegunungan dan dataran bergelombang. Dataran rendah di pesisir selatan cukup sempit dan sebagian besar pantainya berbukit.', '2023-01-03', 'blog2.jpg', 3, 1),
(12, 'Nganjuk', 'Secara topografi wilayah kabupaten ini terletak di dataran rendah dan pegunungan, Kabupaten Nganjuk memiliki kondisi dan struktur tanah yang cukup produktif untuk berbagai jenis tanaman, baik tanaman pangan maupun tanaman perkebunan sehingga sangat menunjang pertumbuhan ekonomi di bidang pertanian. Kondisi dan struktur tanah yang produktif ini sekaligus ditunjang adanya sungai Widas yang mengalir sepanjang 69,332 km dan mengairi daerah seluas 3.236 Ha, dan sungai Brantas yang mampu mengairi sawah seluas 12.705 Ha.\r\n\r\nKabupaten Nganjuk identik dengan keberadaan Gunung Wilis sebab 2 puncak tertinggi pegunungan Wilis berada di Nganjuk tepatnya Puncak Liman di Desa Ngliman, Sawahan dan Puncak Limas di Desa Bajulan, Loceret. Terdapat 3 Kecamatan yang berada di lereng gunung wilis yakni Loceret, Ngetos dan Sawahan.\r\n\r\nMenurut Kementerian Pertanian (Kementan), Kabupaten Nganjuk menjadi salah satu daerah fokus pemerintah untuk menyerap bawang merah dan menjadi stok pemerintah tiap tahunnya. Daerah-daerah di Indonesia yang menjadi fokus penyerapan bawang merah adalah, Nganjuk, Brebes, Bima dan Solok.', '2023-01-04', 'blog3.jpg', 3, 1),
(13, 'Sayur Asem', 'Sayur asam atau sayur asem adalah masakan sejenis sayur yang khas Indonesia. Ada banyak variasi lokal sayur asam seperti sayur asam Jakarta (variasi dari orang Betawi di Jakarta), sayur asam kangkung (variasi yang menggunakan kangkung), dan sayur asam ikan asin.\r\n\r\nSayur asam dari Sumatra memiliki kuah yang lebih keruh, merah, dan berminyak dibandingkan dengan sayur asam Betawi yang berkuah bening. Sayur asam dari Aceh dikenal dengan nama sayur asam sunti, Kalimantan, tepatnya Kalimantan Selatan, sayur asam memakai terung asam (asam rimbang), kunyit, dan kepala ikan patin.\r\n\r\nDi Pulau Jawa sendiri ada banyak ragam sayur asam, seperti sayur asam ala Jawa Timur yang dikenal memiliki cita rasa cenderung pedas.\r\n\r\nJawa Barat, sayur asam Sunda cenderung lebih sedikit isinya dan ciri khas yang menonjol adalah menggunakan kacang tanah yang sudah terkupas. Bukan kacang tanah beserta kulit seperti pada sayur asam Betawi, Semarang, sayur asam dominan dengan rasa pedas dan asam. Beda lagi dengan sayur asam Solo yang rasanya tidak tajam dengan bumbu.', '2023-01-01', 'blog2.jpg', 4, 1),
(14, 'Sayur Lodeh', 'Sayur lodeh diyakini telah ada pada masa peradaban Jawa Tengah sejak abad ke-10. Konon, sayur lodeh membantu melewati masa-masa sulit selama letusan dahsyat Gunung Merapi pada 1006.[1]\r\n\r\nSejarawan kuliner Fadly Rahman memperkirakan tradisi memasak lodeh sudah dilakukan pada abad ke-16, tepatnya setelah bangsa Spanyol dan Portugis memperkenalkan kacang panjang ke Jawa. Sementara sejarawan lain meyakini bahwa sayur lodeh mulai diperkenalkan kembali pada akhir abad-19, ketika Yogyakarta menjadi jantung Kebangkitan Nasional Indonesia, periode di mana banyak mitos daerah ditemukan dan dirayakan.[1]\r\n\r\nMemasuki awal abad ke-20, keberadaan legenda sayur lodeh kian menguat. Contoh paling terkenal adalah pada 1931 pada masa pemerintahan Sultan Hamengkubuwono VIII. Ketika wabah pes terjadi selama lebih dari dua dekade di Jawa, sultan memerintahkan kepada warganya untuk memasak sayur lodeh dan berdiam diri di rumah selama 49 hari. Kemudian wabah pun berakhir. Catatan sejarah juga menunjukkan bahwa sayur lodeh telah dimasak untuk menanggapi krisis pada 1876, 1892, 1946, 1948, dan 1951', '2023-01-02', 'blog3.jpg', 4, 1),
(15, 'Tempe Mendoan', 'Tempe mendoan mudah ditemui di warung tradisional di daerah Keresidenan Banyumas, seperti Purbalingga, Banjarnegara, Cilacap, Kebumen, dan Banyumas.[5] Para wisatawan bisa membeli oleh-oleh makanan mendoan tempe di daerah Sawangan, Banyumas.\r\n\r\nDi kota-kota lain di Jawa Tengah seperti Semarang, mendoan lebih merujuk ke tempe goreng tepung. Di Kabupaten Wonosobo disebut tempe kemul yang berbentuk irisan tipis.\r\n\r\n\r\nSroto Sokaraja, sangat sering disantap dengan tempe mendoan\r\nMendoan Banyumasan berbeda dengan mendoan dari beberapa kota di wilayah Jawa Tengah. Makanan ini dapat dibuat tanpa memperhatikan besarnya tempe atau banyaknya tepung, tanpa tempe, atau dari bekas sisa adonan tepung.[6] Biasanya mendoan disajikan sebagai makanan pendamping Sroto Sokaraja.[7]\r\n\r\nMendoan juga dikenal di daerah pesisir pantai utara Jawa Tengah bagian barat, seperti Tegal dan Brebes. Di daerah tersebut, mendoan biasa dijajakan di tempat-tempat wisata, seperti pantai atau di pedagang kaki lima dan angkringan, Bahkan di kota magelang dan sekitarnya , mendoan biasa di nikmati dengan sambal rujak dan kopi atau teh hangat\r\n\r\nSaat ini, tempe mendoan mulai populer hampir di seluruh Indonesia. Hidangan tempe mendoan biasanya dijual di warung makan, pedagang kaki lima, dan di tempat kuliner lainnya.[8][9][10]', '2023-01-03', 'blog3.jpg', 4, 1),
(16, 'Wedang Jahe', 'Wedang jahe (Jawa: ꦮꦺꦢꦁ​ꦗꦲꦺ, translit. Wédang jaé) adalah hidangan minuman sari jahe tradisional dari daerah Jawa Tengah, DI Yogyakarta dan Jawa Timur, Indonesia yang umumnya disajikan hangat atau panas.[1] Wedang jahe juga kadang disebut sebagai teh jahe, meskipun sama sekali tidak mengandung daun teh. \"Wedang\" sendiri adalah istilah dalam bahasa Jawa yang berarti \"minuman panas\".\r\n\r\nWalaupun tanpa kandungan kafeina, minuman ini sering kali disajikan dan dinikmati seperti teh. Minuman ini dibuat dari irisan jahe segar, gula jawa atau gula batu yang dicampur ke dalam air panas. Sebelum itu, rimpang jahe sebagai bahan utama wedang jahe biasanya dibakar terlebih dulu. Kemudian, digeprek atau ditumbuk kasar hingga air ekstraknya keluar.[2] Selain menggunakan jahe segar, masyarakat Indonesia juga menggunakan jahe bubuk sebagai bahan umum di resep tradisional mereka.\r\n\r\nTerkadang rempah-rempah seperti daun pandan, batang sereh, cengkih dan/atau kayu manis ditambahkan untuk menambah aroma.[1] Susu segar atau susu kental manis juga dapat ditambahkan.[3] Minuman serupa wedang jahe yang terbuat dari jahe (secara umum disebut teh jahe) memiliki sejarah panjang sebagai obat herbal tradisional di Asia Timur, Asia Selatan, Asia Tenggara, dan Asia Barat.[4]', '2023-01-04', 'blog4.jpg', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE `tbuser` (
  `id_user` int(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `hak_akses` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`id_user`, `username`, `password`, `hak_akses`) VALUES
(1, 'admin', 'admin', 1),
(2, 'user', 'user', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbkategori`
--
ALTER TABLE `tbkategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbmenu`
--
ALTER TABLE `tbmenu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `tbpage`
--
ALTER TABLE `tbpage`
  ADD PRIMARY KEY (`id_page`);

--
-- Indexes for table `tbpost`
--
ALTER TABLE `tbpost`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `id_katgori` (`id_katgori`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbkategori`
--
ALTER TABLE `tbkategori`
  MODIFY `id_kategori` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbmenu`
--
ALTER TABLE `tbmenu`
  MODIFY `id_menu` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbpage`
--
ALTER TABLE `tbpage`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbpost`
--
ALTER TABLE `tbpost`
  MODIFY `id_post` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbuser`
--
ALTER TABLE `tbuser`
  MODIFY `id_user` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
