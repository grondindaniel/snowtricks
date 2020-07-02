-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  jeu. 02 juil. 2020 à 10:05
-- Version du serveur :  8.0.20
-- Version de PHP :  7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `snowtrick`
--

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `trick` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `content`, `author`, `created_at`, `trick`) VALUES
(13, 'Really a good trick !', 'danielg', '2020-06-27 09:19:00', 13),
(14, 'The best beef', 'paul-snow', '2020-06-27 09:27:27', 13),
(15, 'I did it last week and it was fantastic', 'erika_b', '2020-06-27 09:35:13', 13),
(16, 'So fun. I hope to go to Chamonix this winter', 'julia', '2020-06-27 09:44:45', 13),
(17, 'thanks for this articule', 'julia', '2020-06-27 09:45:13', 15),
(18, 'nice picture', 'paul-snow', '2020-06-27 09:49:50', 15),
(19, 'This one is my favorite', 'erika_b', '2020-06-27 09:52:55', 16),
(20, 'it\'s me on the picture', 'danielg', '2020-06-27 09:54:43', 16),
(21, 'Great', 'paul-snow', '2020-06-27 09:59:45', 13),
(22, 'Chamonix ? I know very well this place', 'paul-snow', '2020-06-27 10:00:26', 13),
(23, 'nice picture', 'paul-snow', '2020-06-27 10:22:18', 16),
(24, 'i will try it for my next hollidays', 'julia', '2020-06-27 10:24:17', 16),
(25, 'it\'s easy you will see', 'danielg', '2020-06-27 10:25:19', 16),
(26, 'yep really easy Julia', 'erika_b', '2020-06-27 10:28:05', 16),
(27, 'did you ever try this one ?', 'erika_b', '2020-06-27 10:28:47', 12),
(28, 'a basic', 'erika_b', '2020-06-27 10:29:00', 11),
(29, 'yep a basic', 'paul-snow', '2020-06-27 10:29:28', 11),
(30, 'What do you thing about this article ?', 'danielg', '2020-06-27 10:32:52', 9),
(31, 'Amazing trick', 'danielg', '2020-06-27 10:33:14', 8),
(32, 'what a sensation', 'danielg', '2020-06-27 10:36:55', 7),
(33, 'the top of trick', 'danielg', '2020-06-27 10:38:04', 6),
(34, 'A technical trick', 'danielg', '2020-06-27 10:39:46', 5);

-- --------------------------------------------------------

--
-- Structure de la table `featured_image`
--

CREATE TABLE `featured_image` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id` int NOT NULL,
  `trick_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id`, `trick_id`, `name`) VALUES
(1, 5, '133b59d5f30991611b977e9355126cd6.png'),
(2, 5, '7b2269cc7d784a19e5e04524e52583d1.png'),
(3, 5, 'ca45006f346c925155a1ac578406159f.png'),
(4, 6, '5a47896a30e5ef05600f34836666918e.png'),
(5, 6, '9b4462dc60cc5a4fe76d7063fe9d76f2.png'),
(6, 6, '7f138876b1177df0b1088ce06eb6f245.png'),
(7, 7, '75f745ce943a82ca52ee434ab46d1815.png'),
(8, 7, '7585f46806fcb86f77964c64600d8f97.png'),
(9, 8, '226431a274574efe09656b39a66a7476.png'),
(10, 8, '68499e5d7645986f220b6a3769a288e0.png'),
(11, 8, 'b1aa265e037e89d880707852dea7acd3.png'),
(12, 8, '59623e1e5c84dc2d544f459aa974874e.png'),
(13, 9, '7b3c3b9d565c4deaa9ec0b9caa055d7a.png'),
(14, 9, 'ce2a9fd2f75a75b40ef9131a9d1ed1e3.png'),
(15, 9, '4c894de2b4c89fff3e5019de4f4fce56.png'),
(18, 11, '31579731cb67f9ad1d78f705f1606676.png'),
(19, 11, 'bfd7cf93e6400286189f11d374b5e35d.png'),
(20, 12, '1cfa7c5b131d405581e6a798927a95fe.png'),
(21, 12, '22ffcea9d83e022d58124d686460cd3e.png'),
(22, 12, 'e831d5cddcf0ee7e30c8ec055b6e27fa.png'),
(23, 13, '268fc5fe68d259b6a86d96a841f16cf5.png'),
(24, 13, '930a698c4177aee1e11d196f535bd1d6.png'),
(25, 13, 'a9daf235f548170aaa03c7abdd8a4f31.png'),
(30, 15, 'a4bb95609ae8131a501d2f79725bc3a5.png'),
(31, 15, '5d8e12058144237fcf85a2879fea0088.png'),
(32, 16, '64c3420c5a0a658acddcd1f86084115c.png'),
(33, 16, '9086c670b3ce294c3aeb2cdc3ca70c3b.png'),
(34, 16, '7549f1b2f5ede127f867178e4fdbc872.png'),
(35, 16, '21232a5ec207abee20313710b2a72429.png');

-- --------------------------------------------------------

--
-- Structure de la table `image_profil`
--

CREATE TABLE `image_profil` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `image_profil`
--

INSERT INTO `image_profil` (`id`, `name`) VALUES
(1, '32f96f3468e519394d6c662811d434c6.png'),
(2, '3f43ec1c6b3c57b3a79f96e83326bff5.png'),
(3, '761692fa5beabded9e910969947e49fc.png'),
(4, '20d81b7b4048294b344f1991d2ccef7f.png'),
(5, 'fea1e5de9584f94042a735cdb631b94e.png');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200625125829', '2020-06-25 12:58:38'),
('20200625132211', '2020-06-25 13:22:18');

-- --------------------------------------------------------

--
-- Structure de la table `trick`
--

CREATE TABLE `trick` (
  `id` int NOT NULL,
  `featured_image_id` int DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `list` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `comments` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `trick`
--

INSERT INTO `trick` (`id`, `featured_image_id`, `name`, `description`, `creator`, `list`, `created_at`, `update_at`, `comments`) VALUES
(5, NULL, 'Truck driver', 'When both hands grab Indy and Melon.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'danielg', 'The rotations', '2020-06-27 08:13:17', NULL, 'Doctrine\\Common\\Collections\\ArrayCollection@0000000063ca65f3000000001df019a0'),
(6, NULL, 'Taipan air', 'The back hand grabs the toe edge just in front of the rear foot. However, the arm must go around the outside of your rear knee. The board is then pulled behind the rider (tweaked). The name Taipan is a portmanteau of tail/Japan air.\r\n\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'danielg', 'The grabs', '2020-06-27 08:15:48', NULL, 'Doctrine\\Common\\Collections\\ArrayCollection@000000004a33293400000000624fd837'),
(7, NULL, 'Lien air', 'When performing a frontside air on transition, the snowboarder grabs heelside in front or behind the leading binding with their leading hand. In order for it to be a Lien air, the board can not be tweaked and has to be kept flat. The origin of the name of the trick is the reverse spelling of skateboarder Neil Blender\'s first name.\r\n\r\nBut I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\r\n\r\nOn the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.', 'danielg', 'The slides', '2020-06-27 08:22:36', NULL, 'Doctrine\\Common\\Collections\\ArrayCollection@0000000000807271000000006644fac0'),
(8, NULL, 'Frontside grab/indy', 'A fundamental trick performed by grabbing the toe edge between the bindings with the trailing hand. This trick is referred to as a frontside grab on a straight air, or while performing a frontside spin. When performing a backside aerial or backside rotation, this grab is referred to as an Indy. The frontside air was popularized by skatebo.\r\n\r\nBut I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\r\n\r\nOn the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.', 'danielg', 'The slides', '2020-06-27 08:26:20', NULL, 'Doctrine\\Common\\Collections\\ArrayCollection@0000000061de86f6000000004c662758'),
(9, NULL, 'Cross-rocket', 'Advanced variation of a Rocket Air, where the arms are crossed in order to grab opposite sides of the nose of the board, while the rear leg is boned straight and the front leg is tucked up.\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nBut I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure', 'danielg', 'The one foot tricks', '2020-06-27 08:31:52', NULL, 'Doctrine\\Common\\Collections\\ArrayCollection@000000004a15d2b10000000066763235'),
(11, NULL, 'Stiffy', 'Grab indy in between the bindings and bone both legs 90° to the body.\r\n\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'danielg', 'The flips', '2020-06-27 08:44:24', NULL, 'Doctrine\\Common\\Collections\\ArrayCollection@0000000052db463a0000000001c8fd85'),
(12, NULL, 'Mute', 'The front hand grabs the toe edge either between the toes or in front of the front foot. Variations include the Mute Stiffy, in which a mute grab is performed while straightening both legs, or alternatively, some snowboarders will grab mute and rotate the board frontside 90 degrees.\r\n\r\nOn the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse.', 'danielg', 'The flips', '2020-06-27 08:48:02', NULL, 'Doctrine\\Common\\Collections\\ArrayCollection@000000005c93898e00000000381b4d36'),
(13, NULL, 'Beef Curtains', 'A Roast Beef and Chicken Salad (in between the legs) at the same time. Also known as The King or Steak Tar Tar', 'danielg', 'The rotations', '2020-06-27 08:50:30', NULL, 'Doctrine\\Common\\Collections\\ArrayCollection@0000000055de1405000000003065d2d1'),
(15, NULL, 'Bloody Dracula', 'A trick in which the rider grabs the tail of the board with both hands. The rear hand grabs the board as it would do it during a regular tail-grab but the front hand blindly reaches for the board behind the riders back.\r\n\r\nBut I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure.\r\n\r\nOn the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.', 'danielg', 'The rotations', '2020-06-27 09:05:03', NULL, 'Doctrine\\Common\\Collections\\ArrayCollection@000000005411a9bd0000000021118bbc'),
(16, NULL, 'Crail', 'The rear hand grabs the toe edge in front of the front foot while the rear leg is boned. Alternatively, some consider any rear handed grab in front of the front foot on the toeside edge a crail grab, classifying a grab to the nose a \"nose crail\" or \"real crail\".\r\n\r\nOn the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\r\n\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'danielg', 'The slides', '2020-06-27 09:08:06', NULL, 'Doctrine\\Common\\Collections\\ArrayCollection@000000004da8700a0000000027ecb170');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `image_profil_id` int DEFAULT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `image_profil_id`, `username`, `email`, `roles`, `password`, `is_verified`, `token`) VALUES
(1, 1, 'danielg', 'lesbleachos@gmail.com', '{\"ROLES\": \"ROLE_ADMIN\"}', '$argon2id$v=19$m=65536,t=4,p=1$P+VFdvrWXQhfbI9m4vE2og$Iy1B7s8nzie09tTUjcLOR9/Y2r0SSpDHNxhX14jdiCc', 1, NULL),
(3, 2, 'paul-snow', 'paul@gmail.com', '{\"ROLES\": \"ROLE_USER\"}', '$argon2id$v=19$m=65536,t=4,p=1$PLGYno5T2OyP+sz8lPc8cg$Ib5isIeItbw5KO0ol/VoJA1jG8i34elrvWlJWO5D3pE', 1, NULL),
(4, 3, 'erika_b', 'erika.baltimore@yahoo.com', '{\"ROLES\": \"ROLE_USER\"}', '$argon2id$v=19$m=65536,t=4,p=1$PP3neu164mAi7YELq0EHYw$mGdPO6YAM/qEUEzoUfBsDCIPqo75XHzR8HqJGvMyiDc', 1, NULL),
(5, 4, 'julia', 'julia.h@outlook.com', '{\"ROLES\": \"ROLE_USER\"}', '$argon2id$v=19$m=65536,t=4,p=1$NjkavOryHbS9AqHGj2O3JQ$oCHEZmjm0fUJmFlSYK7LQF4niOgx5oH792VbYTNG1lQ', 1, NULL),
(6, 5, 'root', 'root@gmail.com', '{\"ROLES\": \"ROLE_ADMIN\"}', '$argon2id$v=19$m=65536,t=4,p=1$fweQGrUK4659XgtSmJ2dJw$IPCbmxaYPCiIlNw9Ch/U0tWEMhw0Eqe3Cr/RzNWmT9o', 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE `video` (
  `id` int NOT NULL,
  `trick_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `video`
--

INSERT INTO `video` (`id`, `trick_id`, `name`) VALUES
(1, 5, '<iframe width=\"1206\" height=\"678\" src=\"https://www.youtube.com/embed/gbHU6J6PRRw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(2, 5, '<iframe width=\"1206\" height=\"678\" src=\"https://www.youtube.com/embed/7B4-Lwlo3xM?list=PLA19FB9E97B041212\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(3, 6, '<iframe width=\"1206\" height=\"678\" src=\"https://www.youtube.com/embed/Sh3qT1INT_I?list=PLA19FB9E97B041212\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(4, 7, '<iframe width=\"1206\" height=\"678\" src=\"https://www.youtube.com/embed/5bpzng08nzk?list=PLA19FB9E97B041212\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(5, 8, '<iframe width=\"1206\" height=\"678\" src=\"https://www.youtube.com/embed/v5Am2awFHcI?list=PLA19FB9E97B041212\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(6, 8, '<iframe width=\"1206\" height=\"678\" src=\"https://www.youtube.com/embed/s3jRiFyOijw?list=PLA19FB9E97B041212\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(7, 9, '<iframe width=\"1206\" height=\"678\" src=\"https://www.youtube.com/embed/msYOcwZ5mDg?list=PLA19FB9E97B041212\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(9, 11, '<iframe width=\"1206\" height=\"678\" src=\"https://www.youtube.com/embed/s3jRiFyOijw?list=PLA19FB9E97B041212\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(10, 12, '<iframe width=\"1206\" height=\"678\" src=\"https://www.youtube.com/embed/HDq-W3rYTTw?list=PLA19FB9E97B041212\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(11, 12, '<iframe width=\"1206\" height=\"678\" src=\"https://www.youtube.com/embed/Zj9Wb26ZQ2M?list=PLA19FB9E97B041212\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(12, 13, '<iframe width=\"1206\" height=\"678\" src=\"https://www.youtube.com/embed/HDq-W3rYTTw?list=PLA19FB9E97B041212\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(13, 13, '<iframe width=\"1206\" height=\"678\" src=\"https://www.youtube.com/embed/msYOcwZ5mDg?list=PLA19FB9E97B041212\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(15, 15, '<iframe width=\"1206\" height=\"678\" src=\"https://www.youtube.com/embed/5bpzng08nzk?list=PLA19FB9E97B041212\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(16, 16, '<iframe width=\"1206\" height=\"678\" src=\"https://www.youtube.com/embed/l7IQFRexMAI?list=PLA19FB9E97B041212\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(17, 16, '<iframe width=\"1206\" height=\"678\" src=\"https://www.youtube.com/embed/7B4-Lwlo3xM?list=PLA19FB9E97B041212\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `featured_image`
--
ALTER TABLE `featured_image`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C53D045FB281BE2E` (`trick_id`);

--
-- Index pour la table `image_profil`
--
ALTER TABLE `image_profil`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `trick`
--
ALTER TABLE `trick`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D8F0A91E3569D950` (`featured_image_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  ADD UNIQUE KEY `UNIQ_8D93D649FFDC0B2C` (`image_profil_id`);

--
-- Index pour la table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CC7DA2CB281BE2E` (`trick_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `featured_image`
--
ALTER TABLE `featured_image`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `image_profil`
--
ALTER TABLE `image_profil`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `trick`
--
ALTER TABLE `trick`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `video`
--
ALTER TABLE `video`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_C53D045FB281BE2E` FOREIGN KEY (`trick_id`) REFERENCES `trick` (`id`);

--
-- Contraintes pour la table `trick`
--
ALTER TABLE `trick`
  ADD CONSTRAINT `FK_D8F0A91E3569D950` FOREIGN KEY (`featured_image_id`) REFERENCES `featured_image` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D649FFDC0B2C` FOREIGN KEY (`image_profil_id`) REFERENCES `image_profil` (`id`);

--
-- Contraintes pour la table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `FK_7CC7DA2CB281BE2E` FOREIGN KEY (`trick_id`) REFERENCES `trick` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
