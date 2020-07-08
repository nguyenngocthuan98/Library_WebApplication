-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th7 08, 2020 lúc 06:38 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `libra`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `authors`
--

INSERT INTO `authors` (`id`, `name_author`, `created_at`, `updated_at`) VALUES
(1, 'Ernestine Eichmann', '2020-07-02 02:43:55', '2020-07-02 02:43:55'),
(22, 'Ms. Claudine Beer', '2020-07-02 02:43:55', '2020-07-02 02:43:55'),
(23, 'Savanna Armstrong', '2020-07-02 02:43:55', '2020-07-02 02:43:55'),
(24, 'Joey Littel', '2020-07-02 02:43:55', '2020-07-02 02:43:55'),
(25, 'Giuseppe O\'Connell DDS', '2020-07-02 02:43:55', '2020-07-02 02:43:55'),
(26, 'Prof. Kamryn Abshire II', '2020-07-02 02:43:55', '2020-07-02 02:43:55'),
(27, 'Mabelle Collier', '2020-07-02 02:43:55', '2020-07-02 02:43:55'),
(28, 'Forest Jacobson', '2020-07-02 02:43:55', '2020-07-02 02:43:55'),
(29, 'Raina Schmidt', '2020-07-02 02:43:55', '2020-07-02 02:43:55'),
(30, 'Rosanna Watsica', '2020-07-02 02:43:55', '2020-07-02 02:43:55'),
(31, 'Burnice Watsica', '2020-07-02 02:43:55', '2020-07-02 02:43:55'),
(32, 'Charles Rolfson', '2020-07-02 02:43:55', '2020-07-02 02:43:55'),
(33, 'Cathryn Thompson', '2020-07-02 02:43:55', '2020-07-02 02:43:55'),
(34, 'Raheem Harris', '2020-07-02 02:43:55', '2020-07-02 02:43:55'),
(35, 'Dr. Darrel Steuber', '2020-07-02 02:43:55', '2020-07-02 02:43:55'),
(36, 'Mr. Raleigh Kuhic II', '2020-07-02 02:43:55', '2020-07-02 02:43:55'),
(37, 'Prof. Torrance Towne Jr.', '2020-07-02 02:43:55', '2020-07-02 02:43:55'),
(38, 'Mrs. Winifred Armstrong V', '2020-07-02 02:43:55', '2020-07-02 02:43:55'),
(39, 'Virgil Lang', '2020-07-02 02:43:55', '2020-07-02 02:43:55'),
(40, 'Gretchen McKenzie', '2020-07-02 02:43:55', '2020-07-02 02:43:55'),
(41, 'Antoine de Saint-Exupéry', '2020-07-02 03:33:50', '2020-07-02 03:33:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_book` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `page_number` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_publisher` int(11) NOT NULL,
  `id_author` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id`, `name_book`, `status`, `page_number`, `quantity`, `image`, `description`, `id_category`, `id_publisher`, `id_author`, `created_at`, `updated_at`) VALUES
(1, 'Quisque eget nibh tristique', NULL, 100, 20, 'https://salt.tikicdn.com/cache/w390/ts/product/83/6a/4a/f433d5732e97815ac8b375327191197a.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 9, 22, 1, '2020-07-01 20:03:41', '2020-07-06 11:57:51'),
(2, 'Pellentesque vitae libero ut nulla', NULL, 100, 20, 'https://salt.tikicdn.com/cache/w390/ts/product/83/6a/4a/f433d5732e97815ac8b375327191197a.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 16, 23, 1, '2020-07-01 20:03:41', '2020-07-06 11:58:38'),
(3, 'Praesent sed', NULL, 100, 20, 'https://salt.tikicdn.com/cache/w390/ts/product/83/6a/4a/f433d5732e97815ac8b375327191197a.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 8, 25, 1, '2020-07-01 20:03:41', '2020-07-01 20:03:41'),
(4, 'History', NULL, 100, 20, 'https://salt.tikicdn.com/cache/w390/ts/product/83/6a/4a/f433d5732e97815ac8b375327191197a.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 15, 26, 1, '2020-07-01 20:03:41', '2020-07-06 11:59:26'),
(5, 'Cras dignissim ex vel', NULL, 100, 20, 'https://salt.tikicdn.com/cache/w390/ts/product/83/6a/4a/f433d5732e97815ac8b375327191197a.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 10, 27, 1, '2020-07-01 20:03:41', '2020-07-01 20:03:41'),
(6, 'Sed pharetra', NULL, 100, 20, 'https://salt.tikicdn.com/cache/w390/ts/product/83/6a/4a/f433d5732e97815ac8b375327191197a.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 16, 28, 24, '2020-07-01 20:03:41', '2020-07-06 11:58:58'),
(7, 'Vietnamese history - 12 Tragic Songs', NULL, 214, 23, 'https://salt.tikicdn.com/cache/w390/media/catalog/product/b/i/bia-1_su-viet--tai-ban-co-sua-chua-.u2769.d20170825.t145604.820179.jpg', 'The work \"Historical History - 12 epic songs\" tells about 12 stories of building and defending the feudal country, selected according to the important and majestic nature in the flow of Vietnamese history. The book is a combination of verified historical documents, interspersed with the judgment and evaluation of the author. The work tells fascinating Vietnamese stories with a completely new approach, not like a historical novel, but also a dry monograph.', 13, 22, 35, '2020-07-01 20:21:21', '2020-07-06 11:48:58'),
(8, 'Interior design', NULL, 211, 38, 'https://salt.tikicdn.com/cache/w390/ts/product/5d/aa/be/98068d8a6c5a147a663dd36617a4a219.jpg', 'Our life mainly takes place inside the interior spaces of the structures and the roofs of the constructions. These spaces fully prepare the physical context for a lot of what we can create and make the architecture that contains them has vivid content and form. This book is a display study of the nature and design of these interior layouts.', 10, 25, 32, '2020-07-01 20:26:14', '2020-07-05 07:27:31'),
(9, 'Microeconomics', NULL, 267, 50, 'https://salt.tikicdn.com/cache/w390/ts/product/0d/61/5b/9f2539a57c5b84601881759e974cddd4.jpg', 'Following the current trend of basic and comprehensive innovation in Vietnamese higher education and serving the project of internationalizing economic training programs to advanced directions to quickly reach regional and asymptotic qualifications With higher education in the world, one of the innovations to adapt to this trend is to choose the best textbooks of famous publishers in the world to translate into Vietnamese for the purpose of studying. easier for students, Ho Chi Minh City Book Distribution Joint Stock Company - FAHASA has collaborated with Cengage Learning Publishing House and lecturers of Economics Faculty at University of Economics Ho Chi Minh City - one of 16 key schools. of the Ministry of Education and Training - organizing the translation of Economics book by N.Gregory Mankiw for two versions of Microeconomics and Macroeconomics in Vietnamese to serve learning and research of lecturers and students of the Economics Faculty of Universities across the country. After being translated by a team of lecturers at Ho Chi Minh City University of Economics, Cengage Publisher organized editing and printing in Singapore, copyright of these two books belongs to Cengage Learning Publisher, imported by FAHASA Company and Exclusive distribution in Vietnam.', 6, 24, 1, '2020-07-01 20:29:16', '2020-07-04 20:40:16'),
(10, 'Little Prince (Le Petit Prince)', NULL, 112, 16, 'https://salt.tikicdn.com/cache/w390/ts/product/31/56/db/f2760035b59ed6a21cfbad589376e12a.jpg', '\"Little Prince\" (French name: Le Petit Prince) was published in 1943 and is the most famous work in the career of the French pilot writer Antoine de Saint-Exupéry. The work has been translated into more than 250 languages and has so far sold more than 200 million copies worldwide. The book is as beautiful as a bright poem, a fairy tale of love, kindness, the meaning of existence, about sympathy between people. The simple simplicity that pervades the work makes it an immortal poem that people want to forever give as gifts of love.', 17, 28, 41, '2020-07-01 20:37:27', '2020-07-06 12:09:15'),
(11, 'Architecture Direction Natural Ventilation Line', NULL, 98, 21, 'https://salt.tikicdn.com/cache/w390/ts/product/58/c3/02/baa219fc25b854114e4212c6e6ebef38.jpg', 'References for practitioners of architectural design - construction, construction managers as well as architecture - construction students in their creative learning process. The empirical research data, the survey data, the actual measurement of the impact of climatic factors in natural conditions in the field of basic investigation research of the architecture - construction industry, is the basis first to formulate a construction plan.', 10, 24, 32, '2020-07-01 20:28:25', '2020-07-06 18:45:20'),
(18, 'Crash Code - Programmers Dont Just Know The Code', NULL, 266, 37, 'https://salt.tikicdn.com/cache/w390/ts/product/83/6a/4a/f433d5732e97815ac8b375327191197a.jpg', 'If you have read the programming blogs in Vietnam, maybe the name I go for coding is nothing too strange for you. About the author of the blog I go for a walk of code, his real name is Pham Huy Hoang, a Developer Full Stack, a former student of FPT University, he is currently studying for a Master of Computer Science at Lancaster University in the UK ($ 18,000 scholarship) . Before coming to the Land of Fog, he has worked at FPT Software and ASWIG Solutions, with the desire to share his experience in programming and the skills he experienced during his studies and working as a trainer. as a former developer as well as a Full Stack Developer, so he decided to publish the book Code of the memoir - programmers dont just know code. Currently, on the Vietnamese book market with the subject of IT In general and programmers in particular are very scarce, mainly translated from foreign authors. We have been so engrossed in books like “Ways to get rich or something like that” have made us somewhat delusional about ourselves that your skills really do not allow to do that. So we need books to guide our career and build solid knowledge, so that you can think of more great things in the future. Code walk around - the programmer doesnt just know the code will give you that. Some technology books today are too hard, focus too much on technology so its hard to absorb. The majority of books are about algorithms, are rather old, or focus on one technology, very quickly expires. This book is completely different from the books on IT and technology on the market. So what is it special about these short and interesting articles about the soft and hard skills that a programmer must have, drawn from his many bloody experience. Unlike a technical book, it is easy to learn. The book focuses on the ability to learn and guide readers. With self-study skills, good orientation, you will easily survive and advance in this field.', 7, 22, 32, '2020-07-01 20:03:41', '2020-07-07 02:03:20'),
(19, 'Read How To Read The Circuit Diagram', 1, 135, 28, 'https://salt.tikicdn.com/cache/w390/ts/product/a7/fd/c2/97b0cf0adeb696ba81aaacd41cdf6027.jpg', 'Electricity and electronics, for some people who may seem difficult and complex, but modern life is indispensable for electricity and electronics. power supplies, circuits and components and their connections, and actuators or components.', 12, 23, 1, '2020-07-01 20:11:11', '2020-07-07 02:04:36'),
(20, 'The strange life of Nikola Tesla', 1, 164, 31, 'https://salt.tikicdn.com/cache/w390/ts/product/4a/79/ef/1040fd0a61cd9fe630c170f85c095704.jpg', 'Dubbed the \"mad scientist\" of physics, Tesla is a pioneer in bringing electrical and electronic techniques to life. With his strange thinking, he has about 300 patents, typically asynchronous electric motors or Tesla cores. Many of Teslas inventions are being applied to electrical devices around us today.', 18, 24, 35, '2020-07-01 20:12:54', '2020-07-06 11:57:05'),
(21, 'Anthropology Facing The Problems Of The Modern World', NULL, 375, 24, 'https://salt.tikicdn.com/cache/w390/ts/product/4d/57/5a/d5692b73e9b47b09261a528ce9a4f982.jpg', 'Since the famous Race et histoire (translated by Race and History, Huyen Giang) was published by the Vietnam Association of Historical Sciences in 1996, three more of his works have been translated into the last ten years. Vietnamese. Claude Lévi-Strauss is still a great dinosaur of anthropology and ethnology. In the spring of 1986, Claude Lévi-Strauss (1908-2009) came to Japan for the fourth time, according to the invited by Foundation Ishizaka Foundation, giving three lectures in Tokyo on the topic of anthropology. He chose the common title for the three lectures, LAnthropologie face aux problèmes du monde moderne (Anthropology facing problems of the modern world), which is the title of this book.', 14, 27, 1, '2020-07-01 20:15:39', '2020-07-01 20:15:39'),
(22, 'Guide to Self-Assembly Electrical Circuit - Electronics', NULL, 122, 0, 'https://salt.tikicdn.com/cache/w390/media/catalog/product/i/m/img094.u547.d20170222.t170119.631854.jpg', 'The Guide to Self-Assembly of Electronic Circuits - Electronic selection from many prestigious documents and magazines in the field of electronics introduces readers to electronic circuits, electronics from simple to relatively complex. Introduced in books with practical and popular applications in daily life. If you are an avid electronics enthusiast and have basic knowledge, you can assemble circuits like the instructions in the book, and get interesting and useful products.', 11, 23, 37, '2020-07-01 20:16:22', '2020-07-06 12:36:28'),
(23, 'Dai Viet Su Ki Toan Thu', NULL, 1059, 35, 'https://salt.tikicdn.com/cache/w390/media/catalog/product/d/a/dai-viet-su-ki-toan-thu.jpg', 'Dai Viet Su Ky Toan Thu is the famous national history, a valuable heritage of the Vietnamese nation of thousands of years of civilization. It is a set of history books, with many values, associated with famous names of famous historians such as Le Van Huu, Phan Phu Tien, Ngo Si Lien, Pham Cong Tru, Le Hy ... The discovery of the oldest print of Dai Viet Su Ky Toan Thu, the Cabinet copy, in the 18th Chinh Hoa year, or 1697, has a special meaning. The series was launched readers in the 90s of the last century and has been reprinted in recent years.', 13, 22, 36, '2020-07-01 20:18:58', '2020-07-06 12:10:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `borrows`
--

CREATE TABLE `borrows` (
  `id` int(10) UNSIGNED NOT NULL,
  `date_pay` date NOT NULL,
  `accept` tinyint(4) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_book` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `borrows`
--

INSERT INTO `borrows` (`id`, `date_pay`, `accept`, `id_user`, `id_book`, `created_at`, `updated_at`) VALUES
(64, '2020-07-21', 1, 1, 11, '2020-07-05 07:45:21', '2020-07-05 19:56:44'),
(65, '2020-07-24', 2, 1, 9, '2020-07-05 07:45:38', '2020-07-05 11:58:44'),
(66, '2020-07-22', 3, 1, 10, '2020-07-05 07:45:50', '2020-07-05 18:19:40'),
(67, '2020-07-09', 2, 32, 9, '2020-07-05 18:06:13', '2020-07-05 18:12:04'),
(68, '2020-07-08', 3, 32, 11, '2020-07-05 18:13:21', '2020-07-06 08:46:29'),
(70, '2020-07-30', 3, 1, 10, '2020-07-05 19:57:12', '2020-07-06 08:46:34'),
(71, '2020-07-24', 3, 1, 11, '2020-07-05 20:09:15', '2020-07-06 18:45:20'),
(72, '2020-07-24', 1, 1, 11, '2020-07-05 20:10:23', '2020-07-05 20:10:31'),
(73, '2020-07-23', 3, 1, 10, '2020-07-06 08:44:37', '2020-07-06 12:09:15'),
(74, '2020-07-23', 3, 1, 10, '2020-07-06 08:52:40', '2020-07-06 08:52:57'),
(75, '2020-07-23', 0, 33, 6, '2020-07-04 20:13:56', '2020-03-04 20:13:56'),
(76, '2020-07-23', 0, 35, 8, '2020-07-04 20:13:56', '2020-03-04 20:13:56'),
(77, '2020-07-23', 0, 38, 9, '2020-07-04 20:13:56', '2020-02-04 20:13:56'),
(78, '2020-07-22', 1, 32, 23, '2020-07-06 12:10:00', '2020-07-06 12:10:20'),
(79, '2020-07-15', 0, 32, 19, '2020-07-06 12:10:12', '2020-07-06 12:10:12'),
(80, '2020-07-15', 0, 32, 23, '2020-07-06 13:00:31', '2020-07-06 13:00:31'),
(81, '2020-07-14', 1, 32, 18, '2020-07-06 13:00:58', '2020-07-06 13:01:16'),
(82, '2020-07-08', 0, 32, 18, '2020-07-07 02:01:12', '2020-07-07 02:01:12'),
(83, '2220-07-08', 1, 32, 18, '2020-07-07 02:01:37', '2020-07-07 02:03:20'),
(84, '2020-07-17', 1, 32, 19, '2020-07-07 02:04:10', '2020-07-07 02:04:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_parent` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name_category`, `id_parent`, `created_at`, `updated_at`) VALUES
(1, 'Science - Technology', NULL, '2020-05-11 06:10:23', '2020-05-11 06:10:23'),
(2, 'Cultural - society', NULL, '2020-05-11 06:10:23', '2020-05-11 06:10:23'),
(3, 'History', NULL, '2020-05-11 06:10:23', '2020-05-11 06:10:23'),
(4, 'Celebrity', NULL, '2020-05-11 06:10:23', '2020-05-11 06:10:23'),
(5, 'Literary', NULL, '2020-05-11 06:10:23', '2020-05-11 06:10:23'),
(6, 'Medicine', 1, '2020-05-11 06:10:23', '2020-05-11 06:10:23'),
(7, 'Atheist science', 1, '2020-05-11 06:10:23', '2020-05-11 06:10:23'),
(8, 'Scientific knowledge', 1, '2020-05-11 06:10:23', '2020-05-11 06:10:23'),
(9, 'Politics - law', 2, '2020-05-11 06:10:23', '2020-05-11 06:10:23'),
(10, 'Education', 2, '2020-05-11 06:10:23', '2020-05-11 06:10:23'),
(11, 'Culture and arts', 2, '2020-05-11 06:10:23', '2020-05-11 06:10:23'),
(12, 'Social science', 2, '2020-05-11 06:10:23', '2020-05-11 06:10:23'),
(13, 'VietNam history', 3, '2020-05-11 06:10:23', '2020-05-11 06:10:23'),
(14, 'World History', 3, '2020-05-11 06:10:23', '2020-05-11 06:10:23'),
(15, 'Vietnamese celebrity', 4, '2020-05-11 06:10:23', '2020-05-11 06:10:23'),
(16, 'Celebrity world', 4, '2020-05-11 06:10:23', '2020-05-11 06:10:23'),
(17, 'Short story', 5, '2020-05-11 06:10:23', '2020-05-11 06:10:23'),
(18, 'Poem', 5, '2020-05-11 06:10:23', '2020-05-11 06:10:23'),
(19, 'Horror', 5, '2020-05-11 06:10:23', '2020-05-11 06:10:23'),
(20, 'Detective', 5, '2020-05-11 06:10:23', '2020-05-11 06:10:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_book` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `comment`, `id_user`, `id_book`, `created_at`, `updated_at`) VALUES
(22, 'cool', 1, 1, '2020-07-02 03:04:30', '2020-07-02 03:04:30'),
(23, 'Đáng mong chờ, truyện rất hay', 33, 10, '2020-07-02 03:52:38', '2020-07-02 03:52:38'),
(24, 'hay, hào hùng', 33, 1, '2020-07-02 03:52:56', '2020-07-02 03:52:56'),
(25, 'cool, awesome', 32, 1, '2020-07-02 03:53:39', '2020-07-02 03:53:39'),
(26, 'awsome', 1, 10, '2020-07-05 07:46:54', '2020-07-05 07:46:54'),
(27, 'hay lam, nhung dua con cua toi cung rat thich', 35, 10, '2020-07-05 11:52:16', '2020-07-05 11:52:16'),
(28, 'tuyet pham', 36, 10, '2020-07-05 11:52:25', '2020-07-05 11:52:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `follows`
--

CREATE TABLE `follows` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_author` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `like` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_book` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_11_081616_create_books_table', 1),
(5, '2020_04_11_081647_create_categories_table', 1),
(6, '2020_04_11_081720_create_publishers_table', 1),
(7, '2020_04_11_081746_create_authors_table', 1),
(8, '2020_04_11_081829_create_borrows_table', 1),
(9, '2020_04_11_081850_create_follows_table', 1),
(10, '2020_04_11_081915_create_rates_table', 1),
(11, '2020_05_06_011753_create_likes_table', 1),
(12, '2020_05_06_012117_create_comments_table', 1),
(13, '2020_05_11_124939_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `publishers`
--

CREATE TABLE `publishers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `publishers`
--

INSERT INTO `publishers` (`id`, `name_publisher`, `email`, `address`, `created_at`, `updated_at`) VALUES
(21, 'World Publisher', 'thegioi@thegioi.com', '4976  Oak Way, COLUMBUS, UK', '2020-07-02 02:53:41', '2020-07-06 09:26:51'),
(22, 'People Publisher', 'dantri@dantri.com', '4832  Jadewood Drive', '2020-07-02 02:54:47', '2020-07-06 09:29:21'),
(23, 'Science & Technology Publisher', 'khtt@khkt.com', '4717  Lewis Street, UK', '2020-07-02 02:55:39', '2020-07-06 09:29:52'),
(24, 'Ho Chi Minh City Economic Publisher', 'KTTPHCM@kt.edu', '16 Nguyen Tat Thanh', '2020-07-02 02:56:19', '2020-07-06 09:31:52'),
(25, 'DaNang Publisher', 'nxbdn@dn.com', '36 Dach Dang', '2020-07-02 02:56:44', '2020-07-06 09:32:12'),
(26, 'Labor Publisher', 'nxbld@ld.com', '143  Lamphey Road, UK', '2020-07-02 02:57:28', '2020-07-06 09:32:43'),
(27, 'Asia Publisher', 'ac@ac.com', '49  Asfordby Rd', '2020-07-02 02:58:02', '2020-07-06 09:34:28'),
(28, 'Kim Dong publisher', 'kd@kd.com', '55 Quang Trung, Ha Noi', '2020-07-02 03:33:24', '2020-07-06 09:34:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rates`
--

CREATE TABLE `rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `rate` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_book` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` date DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `phone`, `address`, `birth`, `gender`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$GxGq9yRbjQ26IAfV.FeEvOhl9txUAiU9sxoK6OjjNyTu8cDsPqyoy', 1, '0123456789', 'LocalHost', '1111-01-01', 0, NULL, NULL, '2020-05-11 06:10:21', '2020-05-11 06:10:21'),
(32, 'userTest', 'user@user.com', '$2y$10$vKqzd6lbkdwvw/2ZzPoW9OhOHmSVAVbHzPJI3aB4iLuq5f8WR4cnK', 0, '0123456798', 'LocalHost', '2020-04-28', 2, NULL, NULL, '2020-05-11 18:21:17', '2020-05-11 18:21:17'),
(33, 'thuan', 'thuannguyen1998@gmail.com', '$2y$10$tdNAzaCBYsWLRBOdpji8GOY4nqrGB38NSgHOlBV669ymnRZtGefMG', 1, '0397420253', 'Hue', '1998-09-16', 2, NULL, NULL, '2020-07-02 02:22:18', '2020-07-02 02:32:10'),
(34, 'phuc', 'v.phuc021@gmail.com', '$2y$10$hCMFfC.jQukWGShUJHgK.eUmi.s6FQUjFHmXHrF8rwseL7bKEsPUm', 0, '0321654789', 'Hue', '1999-02-01', 2, NULL, NULL, '2020-07-02 02:23:11', '2020-07-02 02:23:11'),
(35, 'NguyenVanA', 'vananguyen@gmail.com', '$2y$10$BAORgnQ9NxcQqyMVcnvn4uWiVY6mix46fqKfz/B9UML/h7h5GqfU.', 0, '0123654852', 'Hue', '2018-06-02', 2, NULL, NULL, '2020-07-02 02:24:17', '2020-07-02 02:24:17'),
(36, 'user test 1', 'user1@user.com', '$2y$10$t2WMZRemgpxpMNSfnAEg8ODeWFUJC6DtVoj/WluyKmcbGfPXIAWzW', 0, '0321852963', 'localhost', '1111-01-01', 0, NULL, NULL, '2020-07-02 02:25:53', '2020-07-02 02:25:53'),
(37, 'user test 2', 'user2@user.com', '$2y$10$FJJi3atFPXNG3gPc7Sa4HeXppyyNU/BF6fNw9lD.GY5uZOTs.vuBG', 0, '0741852963', 'localhost', '1111-01-01', 2, NULL, NULL, '2020-07-02 02:26:25', '2020-07-02 02:26:25'),
(38, 'user test 3', 'user3@user.com', '$2y$10$a4mz1UOSAT92Sl5ahDjwhuFD5FRW1pXc7HpzwFnAmylJDJd6U4jXi', 0, '0159753645', 'localhost', '1111-01-01', 1, NULL, NULL, '2020-07-02 02:26:57', '2020-07-06 09:35:07'),
(39, 'user test 4', 'user4@user.com', '$2y$10$oYf1AcVbepkSb/L4BNFwyejpiGDeH22Qeacm6pWQGSJA6ROk27YfW', 0, '0852741967', 'localhost', '1111-01-01', 1, NULL, NULL, '2020-07-02 02:30:40', '2020-07-02 02:32:49');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `borrows`
--
ALTER TABLE `borrows`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `publishers_email_unique` (`email`);

--
-- Chỉ mục cho bảng `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `borrows`
--
ALTER TABLE `borrows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `follows`
--
ALTER TABLE `follows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
