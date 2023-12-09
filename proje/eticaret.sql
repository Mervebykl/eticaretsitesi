-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 09 Ara 2023, 13:53:21
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(11) NOT NULL,
  `ayar_logo` varchar(250) NOT NULL,
  `ayar_url` varchar(50) NOT NULL,
  `ayar_title` varchar(250) NOT NULL,
  `ayar_description` varchar(250) NOT NULL,
  `ayar_keywords` varchar(50) NOT NULL,
  `ayar_author` varchar(250) NOT NULL,
  `ayar_tel` varchar(50) NOT NULL,
  `ayar_gsm` varchar(50) NOT NULL,
  `ayar_faks` varchar(50) NOT NULL,
  `ayar_mail` varchar(50) NOT NULL,
  `ayar_ilce` varchar(50) NOT NULL,
  `ayar_il` varchar(50) NOT NULL,
  `ayar_adres` varchar(250) NOT NULL,
  `ayar_mesai` varchar(250) NOT NULL,
  `ayar_maps` varchar(250) DEFAULT NULL,
  `ayar_analystic` varchar(250) DEFAULT NULL,
  `ayar_zoopim` varchar(250) DEFAULT NULL,
  `ayar_facebook` varchar(50) NOT NULL,
  `ayar_twitter` varchar(50) NOT NULL,
  `ayar_google` varchar(50) NOT NULL,
  `ayar_youtube` varchar(50) NOT NULL,
  `ayar_smtphost` varchar(50) DEFAULT NULL,
  `ayar_smtpuser` varchar(50) DEFAULT NULL,
  `ayar_smtppassword` varchar(50) NOT NULL,
  `ayar_smtpport` varchar(50) NOT NULL,
  `ayar_bakim` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_url`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_ilce`, `ayar_il`, `ayar_adres`, `ayar_mesai`, `ayar_maps`, `ayar_analystic`, `ayar_zoopim`, `ayar_facebook`, `ayar_twitter`, `ayar_google`, `ayar_youtube`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`, `ayar_bakim`) VALUES
(0, 'dimg/2393620345logo.png', 'http://localhost/dashboard/proje/', 'Moda | Burada', 'Moda Burada E-Ticaret Sitesi', 'e-ticaret, shopping', 'Moda Burada', '05318238136', '05318238136', '05318238136', 'mervebykli61@gmail.com', 'Trabzon', 'Akçaabat', 'Yenimahalle ', '7-24 açık alışveriş hizmeti', '', '', '', 'www.facebook.com', 'www.twitter.com', 'www.google.com', 'www.youtube.com', 'smtp.gmail.com', '', 'password', '587', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banka`
--

CREATE TABLE `banka` (
  `banka_id` int(11) NOT NULL,
  `banka_ad` varchar(50) NOT NULL,
  `banka_iban` varchar(50) NOT NULL,
  `banka_hesapadsoyad` varchar(50) NOT NULL,
  `banka_durum` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `banka`
--

INSERT INTO `banka` (`banka_id`, `banka_ad`, `banka_iban`, `banka_hesapadsoyad`, `banka_durum`) VALUES
(1, 'Mervebank', 'TR11111111111', 'merve bıyıklı', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_baslik` varchar(250) NOT NULL,
  `hakkimizda_icerik` text NOT NULL,
  `hakkimizda_video` varchar(250) NOT NULL,
  `hakkimizda_vizyon` varchar(500) NOT NULL,
  `hakkimizda_misyon` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'Modanın Başladığı yer', '<p>Moda burada detaylı bilgi yazıyoruz:</p>\r\n\r\n<p>Moda Burada sitesi 2023 yılında modayı herkes i&ccedil;in ulaşılabilir kılmak amacıyla kuruldu. O g&uuml;nden bug&uuml;ne giyimden aksesuara, ayakkabıdan kozmetiğe kadar pek &ccedil;ok &uuml;r&uuml;nle beğeni kazanmaya devam ediyor.</p>\r\n\r\n<p>Moda Burada hem farklı zevklere hem de b&uuml;t&ccedil;elere hitap eder. Kolay ve g&uuml;venli bir deneyim sunar.</p>\r\n', 'video_kodu', 'Modaburada müşterilerimize mümkün olan en düşük fiyatları, mevcut en iyi seçimi ve en yüksek rahatlığı sunmaya çalışıyoruz.', 'modaburada müşterilerin çevrimiçi olarak satın almak isteyebilecekleri her şeyi bulabilecekleri ve keşfedebilecekleri, dünyanın en müşteri odaklı şirketi olmak.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_ad` varchar(100) NOT NULL,
  `kategori_ust` int(2) DEFAULT NULL,
  `kategori_seourl` varchar(250) NOT NULL,
  `kategori_sira` int(2) NOT NULL,
  `kategori_durum` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_ad`, `kategori_ust`, `kategori_seourl`, `kategori_sira`, `kategori_durum`) VALUES
(1, 'kadin giyim', 0, 'kadin-giyim', 0, '1'),
(2, 'erkek giyim', 0, 'erkek-giyim', 1, '1'),
(3, 'çocuk giyim', 0, 'cocuk-giyim', 2, '1'),
(4, 'ayakkabi', 0, 'ayakkabi', 3, '1'),
(14, 'elektronik', 0, 'elektronik', 4, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_zaman` datetime DEFAULT current_timestamp(),
  `kullanici_resim` varchar(250) DEFAULT NULL,
  `kullanici_tc` varchar(50) DEFAULT NULL,
  `kullanici_ad` varchar(50) DEFAULT NULL,
  `kullanici_mail` varchar(100) NOT NULL,
  `kullanici_gsm` varchar(50) DEFAULT NULL,
  `kullanici_password` varchar(50) NOT NULL,
  `kullanici_adsoyad` varchar(50) DEFAULT NULL,
  `kullanici_adres` varchar(250) DEFAULT NULL,
  `kullanici_il` varchar(100) DEFAULT NULL,
  `kullanici_ilce` varchar(100) DEFAULT NULL,
  `kullanici_unvan` varchar(100) DEFAULT NULL,
  `kullanici_yetki` varchar(50) NOT NULL,
  `kullanici_durum` int(11) DEFAULT 1,
  `verificationCode` text NOT NULL,
  `isActive` int(11) NOT NULL DEFAULT 0 COMMENT '0: passive,\r\n1: Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_resim`, `kullanici_tc`, `kullanici_ad`, `kullanici_mail`, `kullanici_gsm`, `kullanici_password`, `kullanici_adsoyad`, `kullanici_adres`, `kullanici_il`, `kullanici_ilce`, `kullanici_unvan`, `kullanici_yetki`, `kullanici_durum`, `verificationCode`, `isActive`) VALUES
(5, '2023-06-04 17:36:27', NULL, NULL, NULL, 'merve@gmail.com', NULL, '123456', 'merve bıyıklı', NULL, NULL, NULL, NULL, '5', 1, '', 0);



-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_ust` varchar(50) DEFAULT NULL,
  `menu_ad` varchar(100) NOT NULL,
  `menu_detay` text DEFAULT NULL,
  `menu_url` varchar(250) NOT NULL,
  `menu_sira` int(2) NOT NULL,
  `menu_durum` enum('0','1') NOT NULL,
  `menu_seourl` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_ust`, `menu_ad`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`, `menu_seourl`) VALUES
(1, '0', 'Hakkımızda', '', 'hakkimizda.php', 0, '1', 'hakk脹m脹zda'),
(3, '0', 'Ürünler', '<p>kategorilerburda</p>\r\n', 'kategoriler.php', 1, '1', 'kategoriler'),
(5, '0', 'Gizlilik', '<p>Gizli bilgiyi alan taraf, bu S&ouml;zleşme s&uuml;resince ve S&ouml;zleşme&rsquo;nin aşağıdaki 8. maddeye uygun olarak feshedilmesi veya ge&ccedil;erlilik s&uuml;resinin bitmesi halinde, fesih veya sona erme tarihinden itibaren s&uuml;resiz olarak şekilde Gizli Bilgi&rsquo;nin koruma ve kullanımına y&ouml;nelik olarak aşağıdaki maddelere uymayı kabul, beyan ve taahh&uuml;t eder: a) Gizli Bilgiyi sadece diğer Taraf&ccedil;a verilme amacına uygun olarak kullanmak, b) Gizli Bilgiyi konuyla ilgili olmaları şartıyla &ldquo;bilmesi gereken&rdquo; prensibine g&ouml;re kendi personeline bu S&ouml;zleşme şartlarına uymalarını sağlamak sureti ile vermek, c) Gizli bilgiyi a&ccedil;an tarafın Gizli Bilgisine en az kendisine ait olan ve aynı derecede &ouml;nemli Gizli Bilgiyi korumak i&ccedil;in sarf ettiği itinayı g&ouml;stermek, d) Gizli Bilgiyi, Gizli Bilgiyi a&ccedil;an Tarafın yazılı onayı olmadan hissedarları, bağlı şirketleri ve yan kuruluşları dahil olmak &uuml;zere &uuml;&ccedil;&uuml;nc&uuml; şahıslara a&ccedil;ıklamamak, e) İşbu S&ouml;zleşme&rsquo;nin ama&ccedil;larının yerine getirilmesi i&ccedil;in gerekli olan haller dışında, Gizli Bilgiyi tamamen veya kısmen herhangi bir şekilde kopyalamamak veya &ccedil;oğaltmamak; eğer bu S&ouml;zleşme&#39;nin amacı dahilince tamamen veya kısmen kopyalanmış veya &ccedil;oğaltılmışsa, kopyalanmış veya &ccedil;oğaltılmış n&uuml;shaların &uuml;zerinde orijinal metnin &uuml;zerinde bulunanlara eşdeğer kısıtlayıcı bir ibare koymak, f) İşbu S&ouml;zleşme amacına uygun olarak gerekmesi halinde, Gizli Bilginin aktarıldığı kuruluş, alt y&uuml;klenici ya da diğer &uuml;&ccedil;&uuml;nc&uuml; tarafların da Gizli Bilginin saklanması ve a&ccedil;ıklanması ile ilgili olarak aynı sınırlamalara bağlı olmasını sağlamak.</p>\r\n', '', 2, '1', 'gizlilik');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `sepet_id` int(11) NOT NULL,
  `kullanici_id` int(11) DEFAULT NULL,
  `urun_id` int(11) DEFAULT NULL,
  `urun_adet` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

CREATE TABLE `siparis` (
  `siparis_id` int(11) NOT NULL,
  `siparis_zaman` timestamp NULL DEFAULT current_timestamp(),
  `siparis_no` int(11) DEFAULT NULL,
  `kullanici_id` int(11) DEFAULT NULL,
  `siparis_toplam` float(9,2) DEFAULT NULL,
  `siparis_tip` varchar(50) DEFAULT NULL,
  `siparis_banka` varchar(50) DEFAULT NULL,
  `siparis_odeme` enum('0','1') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`siparis_id`, `siparis_zaman`, `siparis_no`, `kullanici_id`, `siparis_toplam`, `siparis_tip`, `siparis_banka`, `siparis_odeme`) VALUES


-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis_detay`
--

CREATE TABLE `siparis_detay` (
  `siparisdetay_id` int(11) NOT NULL,
  `siparis_id` int(11) DEFAULT NULL,
  `urun_id` int(11) DEFAULT NULL,
  `urun_fiyat` float(9,2) DEFAULT NULL,
  `urun_adet` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis_detay`
--

INSERT INTO `siparis_detay` (`siparisdetay_id`, `siparis_id`, `urun_id`, `urun_fiyat`, `urun_adet`) VALUES


-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(100) NOT NULL,
  `slider_resimyol` varchar(250) NOT NULL,
  `slider_sira` int(10) NOT NULL,
  `slider_link` varchar(250) NOT NULL,
  `slider_durum` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_sira`, `slider_link`, `slider_durum`) VALUES
(1, 'slider1', 'dimg/slider/28402275843124823339slide-1.jpg', 1, '', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

CREATE TABLE `urun` (
  `urun_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `urun_zaman` timestamp NULL DEFAULT current_timestamp(),
  `urun_ad` varchar(250) NOT NULL,
  `urun_seourl` varchar(250) DEFAULT NULL,
  `urun_detay` text DEFAULT NULL,
  `urun_fiyat` float NOT NULL,
  `urun_video` varchar(50) DEFAULT NULL,
  `urun_keyword` varchar(250) DEFAULT NULL,
  `urun_stok` int(11) NOT NULL,
  `urun_durum` enum('0','1') DEFAULT NULL,
  `urun_onecikar` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`urun_id`, `kategori_id`, `urun_zaman`, `urun_ad`, `urun_seourl`, `urun_detay`, `urun_fiyat`, `urun_video`, `urun_keyword`, `urun_stok`, `urun_durum`, `urun_onecikar`) VALUES
(2, 1, '2023-06-04 22:31:43', 'elbise', 'elbise', 'kırmızı elbise', 700, '1', NULL, 3, '1', '0'),
(4, 1, '2023-06-04 23:35:10', 'Spor Takim', 'spor-takim', 'Kahverengi takım', 350, NULL, NULL, 5, '1', '0'),
(5, 1, '2023-06-04 23:35:33', 'Çiçekli elbise', 'cicekli-elbise', 'kısa çiçekli elbise', 450, NULL, NULL, 2, '1', '0'),
(6, 1, '2023-06-04 23:36:06', 'Uzun Elbise', 'uzun-elbise', 'siyah uzun elbise', 390, NULL, NULL, 19, '1', '0'),
(7, 1, '2023-06-04 23:36:43', 'siyah elbise', 'siyah-elbise', '<p>kısa siyah şık elbise</p>\r\n', 690, NULL, NULL, 0, '1', '1'),
(8, 1, '2023-06-04 23:37:03', 'mor abiye', 'mor-abiye', 'mor detaylı elbise', 580, NULL, NULL, 3, '1', '0'),
(9, 2, '2023-06-04 23:37:44', 'kot pantolon', 'kot-pantolon', 'kot bilek detaylı pantolon', 350, NULL, NULL, 20, '1', '0'),
(10, 2, '2023-06-04 23:38:14', 'takim elbise', 'takim-elbise', 'şık takım', 950, NULL, NULL, 2, '1', '0'),
(11, 2, '2023-06-04 23:38:41', 'gömlek', 'gomlek', 'şık gri gömlek', 300, NULL, NULL, 6, '1', '0'),
(12, 2, '2023-06-04 23:39:18', 'Gri takım', 'gri-takim', 'spor görünümlü şık takım', 700, NULL, NULL, 3, '1', '0'),
(13, 2, '2023-06-04 23:39:43', 'Tişört', 'tisort', 'siyah beyaz şık tişört', 270, NULL, NULL, 4, '1', '0'),
(14, 2, '2023-06-04 23:40:00', 'kazak', 'kazak', 'gri kazak', 360, NULL, NULL, 1, '1', '0'),
(15, 3, '2023-06-04 23:40:31', 'kırmızı elbise', 'kirmizi-elbise', 'kırmızı tül elbise', 359, NULL, NULL, 3, '1', '0'),
(16, 3, '2023-06-04 23:40:54', 'erkek takim', 'erkek-takim', '<p>fun yazılı alt &uuml;st takım</p>\r\n', 690, NULL, NULL, 0, '1', '1'),
(17, 3, '2023-06-04 23:41:25', 'yeşil elbise', 'yesil-elbise', 'pullu üst ile şık elbise', 300, NULL, NULL, 2, '1', '1'),
(18, 3, '2023-06-04 23:42:00', 'spor takim', 'spor-takim', 'mavi spor takım', 240, NULL, NULL, 10, '1', '0'),
(19, 3, '2023-06-04 23:42:30', 'Rengarenk elbise ', 'rengarenk-elbise', '<p>rengarenk t&uuml;lleriyle şık elbise</p>\r\n', 280, NULL, NULL, 0, '1', '0'),
(20, 3, '2023-06-04 23:42:47', 'erkek takim', 'erkek-takim', '<p>şık takım</p>\r\n', 200, NULL, NULL, 9, '1', '0'),
(21, 4, '2023-06-04 23:43:16', 'kiz çocuk ', 'kiz-cocuk', 'kiz-cocuk', 350, NULL, NULL, 5, '1', '1'),
(22, 4, '2023-06-04 23:43:44', 'kadin topuklu', 'kadin-topuklu', 'kırmızı topuklu ayakkabı', 950, NULL, NULL, 20, '1', '0'),
(23, 4, '2023-06-04 23:44:01', 'erkek spor', 'erkek-spor', 'beyaz spor ayakkabı', 300, NULL, NULL, 0, '1', '0'),
(24, 4, '2023-06-04 23:44:37', 'renkli ayakkabi', 'renkli-ayakkabi', '<p>yazlık kadın ayakkabısı</p>\r\n', 340, NULL, NULL, 1, '1', '1'),
(25, 4, '2023-06-04 23:45:08', 'erkek spor', 'erkek-spor', 'gri renk spor ayakkabı\n', 280, NULL, NULL, 32, '1', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunfoto`
--

CREATE TABLE `urunfoto` (
  `urunfoto_id` int(11) NOT NULL,
  `urun_id` int(11) DEFAULT NULL,
  `urunfoto_resimyol` varchar(250) DEFAULT NULL,
  `urunfoto_sira` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunfoto`
--

INSERT INTO `urunfoto` (`urunfoto_id`, `urun_id`, `urunfoto_resimyol`, `urunfoto_sira`) VALUES
(3, 24, 'dimg/urun/25388271292973225652uc.jpg', NULL),
(4, 23, 'dimg/urun/27791310592622226744a3.jpg', NULL),
(5, 22, 'dimg/urun/31239277052146028118a2.jpg', NULL),
(7, 20, 'dimg/urun/20060203502124925473ec2.jpg', NULL),
(8, 19, 'dimg/urun/20798203792419324206elbise-3.jpg', NULL),
(9, 25, 'dimg/urun/23534279272790031979a4.jpg', NULL),
(11, 18, 'dimg/urun/30363281102809630969ecocuk.jpg', NULL),
(12, 17, 'dimg/urun/24134230572367321810dor.jpg', NULL),
(13, 16, 'dimg/urun/30620223162803530293cocuke.jpg', NULL),
(14, 14, 'dimg/urun/27573211072484528062erkekgiy1.jpg', NULL),
(15, 2, 'dimg/urun/27476236213172428037elbise-2.jpg', NULL),
(16, 12, 'dimg/urun/30961235723058727849haftayildizi7.jpg', NULL),
(17, 11, 'dimg/urun/22635285362874424559haftayildiz3.jpg', NULL),
(18, 6, 'dimg/urun/30228209512704126079k1.jpg', NULL),
(19, 8, 'dimg/urun/26799268142040122497el1.jpg', NULL),
(20, 15, 'dimg/urun/30590245292859923322jjelbise.jpg', NULL),
(21, 9, 'dimg/urun/23977296272322830432alti.jpg', NULL),
(22, 13, 'dimg/urun/27409289372807829950erkek.jpg', NULL),
(23, 10, 'dimg/urun/26277296072779121142bes.jpg', NULL),
(24, 5, 'dimg/urun/22514290352447629401iki.jpg', NULL),
(25, 7, 'dimg/urun/31185234932342521171elbise.jpg', NULL),
(26, 4, 'dimg/urun/31720296322280026003haftayildiz6.jpg', NULL),
(27, 21, 'dimg/urun/23863226152689831199haftayildiz4.jpg', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorum_id` int(11) NOT NULL,
  `kullanici_id` int(11) DEFAULT NULL,
  `urun_id` int(11) NOT NULL,
  `yorum_detay` text DEFAULT NULL,
  `yorum_zaman` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `kullanici_id`, `urun_id`, `yorum_detay`, `yorum_zaman`) VALUES
(1, 26, 16, 'aaa', '2023-06-21 22:18:24'),
(2, 26, 21, 'çok güzel', '2023-06-21 22:21:04'),
(3, 31, 22, 'çok güzel', '2023-06-23 10:56:56'),
(4, 32, 21, 'iyi', '2023-06-23 13:07:46');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `banka`
--
ALTER TABLE `banka`
  ADD PRIMARY KEY (`banka_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`sepet_id`);

--
-- Tablo için indeksler `siparis`
--
ALTER TABLE `siparis`
  ADD PRIMARY KEY (`siparis_id`);

--
-- Tablo için indeksler `siparis_detay`
--
ALTER TABLE `siparis_detay`
  ADD PRIMARY KEY (`siparisdetay_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Tablo için indeksler `urun`
--
ALTER TABLE `urun`
  ADD PRIMARY KEY (`urun_id`);

--
-- Tablo için indeksler `urunfoto`
--
ALTER TABLE `urunfoto`
  ADD PRIMARY KEY (`urunfoto_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `banka`
--
ALTER TABLE `banka`
  MODIFY `banka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `sepet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Tablo için AUTO_INCREMENT değeri `siparis`
--
ALTER TABLE `siparis`
  MODIFY `siparis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `siparis_detay`
--
ALTER TABLE `siparis_detay`
  MODIFY `siparisdetay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `urun`
--
ALTER TABLE `urun`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Tablo için AUTO_INCREMENT değeri `urunfoto`
--
ALTER TABLE `urunfoto`
  MODIFY `urunfoto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
