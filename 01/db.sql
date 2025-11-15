/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE `articles` (
                            `id` int NOT NULL AUTO_INCREMENT,
                            `title` varchar(255) NOT NULL,
                            `body` longtext NOT NULL,
                            `author_id` int NOT NULL,
                            PRIMARY KEY (`id`),
                            KEY `author_id` (`author_id`),
                            CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `articles_categories` (
                                       `id` int NOT NULL AUTO_INCREMENT,
                                       `articles_id` int DEFAULT NULL,
                                       `category_id` int NOT NULL,
                                       PRIMARY KEY (`id`),
                                       KEY `articles_id` (`articles_id`),
                                       KEY `category_id` (`category_id`),
                                       CONSTRAINT `articles_categories_ibfk_1` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
                                       CONSTRAINT `articles_categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `authors` (
                           `id` int NOT NULL AUTO_INCREMENT,
                           `name` varchar(255) NOT NULL,
                           `surname` varchar(255) NOT NULL,
                           `email` varchar(255) NOT NULL,
                           PRIMARY KEY (`id`),
                           UNIQUE KEY `authors_email_idx` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `categories` (
                              `id` int NOT NULL AUTO_INCREMENT,
                              `name` varchar(255) NOT NULL,
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `articles` (`id`, `title`, `body`, `author_id`) VALUES
                                                                (1, 'Wiosna', 'Wiosna zaczyna się 21 marca.', 1),
                                                                (2, 'Lato', 'LAto jest goraco', 2);
INSERT INTO `articles_categories` (`id`, `articles_id`, `category_id`) VALUES
                                                                           (1, 1, 1),
                                                                           (2, 1, 2),
                                                                           (3, 2, 4);
INSERT INTO `authors` (`id`, `name`, `surname`, `email`) VALUES
                                                             (1, 'Adam', 'Kowalski', 'kowalski@blog.pl'),
                                                             (2, 'Asia', 'Michalska', 'michalska.asia@hot.pl');
INSERT INTO `categories` (`id`, `name`) VALUES
                                            (1, 'Biznes'),
                                            (2, 'Rolnictwo'),
                                            (3, 'Polityka'),
                                            (4, 'Rozrywka');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


