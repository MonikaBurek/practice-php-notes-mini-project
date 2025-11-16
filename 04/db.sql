/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `author_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authors_email_idx` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `articles` (`id`, `title`, `body`, `author_id`) VALUES
(1, 'Wiosna', 'Wiosna zaczyna się 21 marca.', 1),
(2, 'Lato', 'LAto jest goraco', 2),
(3, 'Wiosna ', 'Idzie wiosna radosna', 1),
(4, 'Poranek', 'Cichy i spokojny świt', 1),
(5, 'Wieczór', 'Ciemne niebo nad miastem', 2),
(6, 'Deszcz', 'Delikatny letni deszcz', 1),
(7, 'Słońce', 'Jasne i ciepłe światło', 2),
(8, 'Chmury', 'Białe chmury na niebie', 1),
(9, 'Wiatr', 'Silny wiatr na polach', 2),
(10, 'Burza', 'Głośne grzmoty w nocy', 1),
(11, 'Tęcza', 'Kolorowy łuk na niebie', 2),
(12, 'Góry', 'Wysokie szczyty w chmurach', 1),
(13, 'Rzeka', 'Wolno płynąca rzeka', 2),
(14, 'Las', 'Zielone drzewa wokół nas', 1),
(15, 'Plaża', 'Ciepły piasek pod stopami', 2),
(16, 'Morze', 'Szumiące fale o brzegu', 1),
(17, 'Jezioro', 'Spokojna tafla wody', 2),
(18, 'Łąka', 'Kolorowe kwiaty na wietrze', 1),
(19, 'Miasto', 'Gwar ulic i ludzi', 2),
(20, 'Ulica', 'Ciche popołudnie w parku', 1),
(21, 'Park', 'Zielone alejki spacerowe', 2),
(22, 'Kwiaty', 'Kolory w pełnym rozkwicie', 1),
(23, 'Ogród', 'Pachnące rośliny wokół', 2),
(24, 'Zachód', 'Pomarańczowe niebo wieczorem', 1),
(25, 'Świt', 'Pierwsze promienie słońca', 2),
(26, 'Noc', 'Ciemna i cicha noc', 1),
(27, 'Śnieg', 'Biały puch na ziemi', 2),
(28, 'Mróz', 'Chłodne powietrze rankiem', 1),
(29, 'Upał', 'Gorące lato w pełni', 2),
(30, 'Mgła', 'Gęsta mgła nad łąką', 1),
(31, 'Droga', 'Długa prosta ścieżka', 2),
(32, 'Pole', 'Złote zboża na wietrze', 1),
(33, 'Wzgórze', 'Łagodne wzniesienia terenu', 2);
INSERT INTO `authors` (`id`, `name`, `surname`, `email`) VALUES
(1, 'Adam', 'Kowalski', 'kowalski@blog.pl'),
(2, 'Asia', 'Michalska', 'michalska.asia@hot.pl'),
(3, 'Katarzyna', 'Oleksiewicz', 'katarzyna.oleksiewicz@wp.pl');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;