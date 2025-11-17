/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
                            `id` int NOT NULL AUTO_INCREMENT,
                            `body` varchar(255) DEFAULT NULL,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `comments` (`id`, `body`) VALUES
                                          (1, 'Świetny artykuł, bardzo ciekawie przedstawiony temat!'),
                                          (2, 'Nie zgadzam się z opinią, ale dobrze się czytało.'),
                                          (3, 'Bardzo pomocne informacje, dziękuję za wyjaśnienia.'),
                                          (4, 'Czekam na więcej wpisów o podobnej tematyce.'),
                                          (5, 'Świetnie napisane, autor ma lekkie pióro.'),
                                          (6, 'Kilka rzeczy można dopracować, ale jest okej ogólnie.'),
                                          (7, 'Dobrze przedstawione, wszystko jasne i zrozumiałe.'),
                                          (8, 'Zaskakująco trafne spostrzeżenia, brawo!'),
                                          (9, 'Podoba mi się sposób pisania, bardzo naturalny styl.'),
                                          (10, 'Bardzo interesujący wpis, zdecydowanie polecam innym.'),
                                          (11, 'Świetny artykuł, bardzo ciekawie przedstawiony temat!'),
                                          (12, 'Nie zgadzam się z opinią, ale dobrze się czytało.'),
                                          (13, 'Bardzo pomocne informacje, dziękuję za wyjaśnienia.'),
                                          (14, 'Czekam na więcej wpisów o podobnej tematyce.'),
                                          (28, 'tak tak tak'),
                                          (29, 'nowy komentarz'),
                                          (30, '[b]pogrubienie[/b]'),
                                          (31, '[quote=&#34;Cyceron&#34;]cytat[/quote]');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;