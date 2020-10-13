CREATE DATABASE  IF NOT EXISTS `veritabanim` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci */;
USE `veritabanim`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: veritabanim
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `baslik` varchar(50) collate utf8_turkish_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES (1,'Magazin'),(2,'Eğitim'),(3,'Spor'),(4,'Konu Dışı');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yazi`
--

DROP TABLE IF EXISTS `yazi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yazi` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `kat_id` int(10) unsigned NOT NULL,
  `baslik` varchar(50) collate utf8_turkish_ci NOT NULL,
  `detay` text collate utf8_turkish_ci NOT NULL,
  `okunma` int(10) unsigned NOT NULL default '1',
  `kayit_tarihi` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yazi`
--

LOCK TABLES `yazi` WRITE;
/*!40000 ALTER TABLE `yazi` DISABLE KEYS */;
INSERT INTO `yazi` VALUES (1,2,'150 öğrencinin 23 Nisan sevinci','Ümraniye Özel Eğitim ve Rehabilitasyon Merkezi\'nde eğitim gören 150 öğrenci 23 Nisan Bayramı\'nı coşkuyla kutladı. İşitme, fizyoterapi, zihinsel engel, yaygın gelişimsel bozukluklar ve özel öğrenme güçlüğü branşlarında eğitim alan çocuklar, önce balıkçı oyunu oynadı. Palyaço eşliğinde dans eden çocuklar daha sonra müzikle birlikte ıspanaklı yumurta yemeği yaptı.\r\n\r\nÇocuklar mutluluğunu gören veliler duygulu anlar yaşadı. Merkezin kurucu müdürü Naki Aksu, \'\"amacımız çocuklara, 23 Nisan Çocuk Bayramı\'nın hissettirmek\" dedi.\r\n\r\nKaynak: Sabah',6,'2012-04-25 18:32:18'),(2,2,'İngiltere\'de burslu eğitim fırsatı','London School of Business and Financial (Londra İşletme ve Finans Okulu-LSBF) Yönetim Kurulu Başkanı Aaron Etingen, söz konusu ülkelerdeki ekonomik büyümenin en az felaket senaryoları eşliğinde tartışılan kriz kadar görülmeye değer olduğu yorumunu yaptı. Bir programa katılmak için geldiği İstanbul\'da sorularımızı cevaplayan Etingen, \"Yunanistan gibi küçük ülkelerdeki krizi değil, gelişen ekonomilerdeki başarıyı görüp enerjimizi o yönde harcamalıyız.\" dedi.\r\n\r\nEtingen, Türklere, açılan ekonomik fırsat kapılarını değerlendirebilecek hazırlığı yapmasını tavsiye etti.\r\n\r\nKaynak: Sabah',42,'2012-04-25 18:32:18'),(3,4,'Polisten kaçarken eve çarptılar','Son model otomobille seyir halindeyken polisi fark eden Ali Y., kaçarken merkez Karatay ilçesi Akabe Mahallesi Yeniçelen Sokak\'ta direksiyon hakimiyetini kaybederek yol kenarında bulunan boş bir eve çarptı. Araçtaki şüpheliler Ali Y. ile yanındaki arkadaşı Mehmet Ç. gözaltına alındı.\r\n\r\nOtomobilin bagaj, stepne bölümü ve sökülen arka koltukların yerinden 7 bin pakete yakın kaçak sigara çıktı. Kaza anı ise bir okulun güvenlik kamerası tarafından saniye saniye kaydedildi.\r\n\r\nKaynak: Sabah',15,'2012-04-25 18:53:53'),(4,4,'Fen-Edebiyat öğrencilerine şok!','Yükseköğretim Kurulu (YÖK), 5 Nisan\'da aldığı karar ile fen edebiyat fakültesi öğrencilerinin aldığı pedagojik formasyon programını kaldırdı. Fen ve edebiyat fakülteleri öğrencilerinin veya mezunlarının öğretmen olmasını sağlayan sistemin kalkmasının gerekçesi ise bu bölümlerde ortaya çıkan öğretmen fazlası gösterildi. Karara göre, yeni pedagojik formasyon sertifika programları açılmayacak. Daha önce açılan programlar ise, mevcut öğrencilerin işlemleri bittikten sonra kapatılacak.\r\n\r\n184 fen ve edebiyat fakültesinde okuyan 200 bin öğrenciden pedagojik formasyon alanlar karardan etkilenmeyecek. Ancak, karardan dolayı her yıl 5 bin öğrencinin mezun olduğu fen edebiyat fakültelerine olan talebin düşeceği belirtiliyor. Vatan\'ın haberine göre; fen edebiyat fakültelerinin dekanları ise YÖK\'ün aldığı karara son derece kızgın.\r\n\r\nKaynak: Sabah',2,'2012-04-25 18:53:53'),(5,3,'Cüneyt Çakır çiçeklerle karşılandı','Barcelona ile Chelsea arasında dün akşam İspanya\'da oynanan ve 2 - 2 berabere biten maçı başarıyla yöneten Cüneyt Çakır ve yardımcılarını, Atatürk Havaalanı\'nda eşi ve yakınları ile bazı hakem arkadaşları çiçeklerle karşıladı.\r\n \r\nUEFA\'nın talimatları gereği maçla ilgili açıklama yapmayan Cüneyt Çakır ve yardımcıları, daha sonra havaalanından ayrıldı.\r\n\r\nKaynak: DHA',13,'2012-04-25 18:54:46'),(6,3,'Futbol tarihinin en ilginç hatası','Ada kulübü, İzlandalı futbolcusu Gretar Steinsson\'la yeniden anlaşırken, imzaların atıldığı sözleşmenin tarihinde yapılan bir yanlışlık mukavelenin farklı bir boyut kazanmasına sebep oldu.\r\nZira, 30 yaşındaki futbolcu, Haziran ayında bitecek olan sözleşmesini 2 yıl uzatmak isterken, yapılan bir hatayla imzaların atıldığı sözleşmenin bitiş tarihi 2014 yılı yerine 20014 yılı oldu.\r\nBöylelikle Steinsson, kulübüyle 18 bin 2 yıllık sözleşmenin altına imza atmış oldu.\r\n\r\nHatanın anlaşılmasının ardından açıklamalarda bulunan İzlandalı futbolcu, \"Takımımla sözleşme yenilediğim için mutluyum. Aslında ben sözleşmemin bu kadar uzun olacağını düşünmemiştim. Sözleşmem bittiğinde 18 bin 32 yaşında olacağım. Futbolu bırakmak için uygun bir yaş\" esprisini yaptı.\r\n\r\nKaynak: DHA',3,'2012-04-25 18:54:46');
/*!40000 ALTER TABLE `yazi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yorum`
--

DROP TABLE IF EXISTS `yorum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yorum` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `yazi_id` int(10) unsigned NOT NULL,
  `adsoyad` varchar(50) collate utf8_turkish_ci NOT NULL,
  `email` varchar(100) collate utf8_turkish_ci NOT NULL,
  `mesaj` text collate utf8_turkish_ci NOT NULL,
  `kayit_tarihi` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yorum`
--

LOCK TABLES `yorum` WRITE;
/*!40000 ALTER TABLE `yorum` DISABLE KEYS */;
INSERT INTO `yorum` VALUES (1,2,'Sercan Çakır','ornek@mail.com','Deneme yorum.','2012-04-25 20:33:50'),(2,2,'Sercan Çakır','ornek@mail.com','Etingen, Türklere, açılan ekonomik fırsat kapılarını değerlendirebilecek hazırlığı yapmasını tavsiye etti.','2012-04-25 20:34:03'),(3,2,'Sercan Çakır','ornek@mail.com','Bir programa katılmak için geldiği İstanbul\'da sorularımızı cevaplayan Etingen, \"Yunanistan gibi küçük ülkelerdeki krizi değil, gelişen ekonomilerdeki başarıyı görüp enerjimizi o yönde harcamalıyız.\" dedi.','2012-04-25 20:34:22');
/*!40000 ALTER TABLE `yorum` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-04-25 23:54:27
