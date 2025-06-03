-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 03 juin 2025 à 04:25
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `lamasset_beauty_app`
--

-- --------------------------------------------------------

--
-- Structure de la table `beauty_centers`
--

CREATE TABLE `beauty_centers` (
  `center_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `manager_id` int(11) DEFAULT NULL,
  `disponibilite` tinyint(1) DEFAULT 1 COMMENT '1=Disponible, 0=Non disponible',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `beauty_centers`
--

INSERT INTO `beauty_centers` (`center_id`, `name`, `description`, `address`, `city`, `postal_code`, `latitude`, `longitude`, `average_rating`, `manager_id`, `disponibilite`, `created_at`, `updated_at`) VALUES
(1, 'Hasdrubal Thalassa & Spa', 'Centre de thalassothérapie premium', 'Yasmine Hammamet', 'Hammamet', '8050', 36.40911800, 10.60198800, 5.00, 2, 1, '2025-05-28 02:11:57', '2025-05-28 02:11:57'),
(2, 'Algotherm Alkantara Thalassa', 'Centre de bien-être et spa', 'Zone touristique', 'Djerba', '4116', 33.87574900, 10.85724600, 4.50, 2, 1, '2025-05-28 02:11:57', '2025-05-28 02:11:57'),
(3, 'Beauté Éclat Tunis', 'Salon de beauté complet', 'Avenue Habib Bourguiba 25', 'Tunis', '1000', 36.80030800, 10.18053100, 4.70, 2, 1, '2025-05-28 02:11:57', '2025-05-28 02:11:57');

-- --------------------------------------------------------

--
-- Structure de la table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `notes` text DEFAULT NULL,
  `salonId` int(11) NOT NULL,
  `serviceId` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `bookings`
--

INSERT INTO `bookings` (`id`, `date`, `startTime`, `endTime`, `notes`, `salonId`, `serviceId`, `user_id`) VALUES
(6, '2024-12-15', '14:00:00', '15:30:00', 'good', 2, '2', 7);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `display_order` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `description`, `icon`, `is_active`, `display_order`, `created_at`, `updated_at`) VALUES
(1, 'Coiffure & Styling', 'Services de coupe, coloration et coiffage', 'scissors', 1, 1, '2025-05-28 02:12:05', '2025-05-28 02:12:05'),
(2, 'Sourcils & Cils', 'Épilation, teinture et extensions de cils/sourcils', 'eye', 1, 2, '2025-05-28 02:12:05', '2025-05-28 02:12:05'),
(3, 'Ongles', 'Manucure, pédicure et pose d\'ongles', 'nail', 1, 3, '2025-05-28 02:12:05', '2025-05-28 02:12:05'),
(4, 'Massage', 'Massages corporels divers', 'massage', 1, 4, '2025-05-28 02:12:05', '2025-05-28 02:12:05'),
(5, 'Épilation', 'Épilation définitive ou temporaire', 'wax', 1, 5, '2025-05-28 02:12:05', '2025-05-28 02:12:05'),
(6, 'Soins du visage & Peau', 'Traitements esthétiques pour le visage', 'facial', 1, 6, '2025-05-28 02:12:05', '2025-05-28 02:12:05');

-- --------------------------------------------------------

--
-- Structure de la table `opening_hours`
--

CREATE TABLE `opening_hours` (
  `opening_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `day_of_week` tinyint(4) NOT NULL,
  `opening_time` time NOT NULL,
  `closing_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `opening_hours`
--

INSERT INTO `opening_hours` (`opening_id`, `center_id`, `day_of_week`, `opening_time`, `closing_time`) VALUES
(1, 1, 1, '08:00:00', '20:00:00'),
(2, 1, 3, '08:00:00', '20:00:00'),
(3, 2, 3, '09:00:00', '19:00:00'),
(4, 3, 1, '08:30:00', '19:00:00'),
(5, 3, 5, '08:30:00', '19:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `reset_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `used` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`reset_id`, `user_id`, `token`, `expires_at`, `used`, `created_at`) VALUES
(1, 1, 'reset_token_xyz', '2023-12-31 22:59:59', 0, '2025-05-28 02:12:41');

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `reservation_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` enum('pending','confirmed','completed','cancelled') DEFAULT 'confirmed',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `user_id`, `service_id`, `center_id`, `reservation_date`, `start_time`, `end_time`, `status`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2023-12-15', '14:00:00', '15:00:00', 'confirmed', NULL, '2025-05-28 02:12:26', '2025-05-28 02:12:26'),
(2, 3, 4, 2, '2023-12-16', '10:00:00', '11:30:00', 'confirmed', NULL, '2025-05-28 02:12:26', '2025-05-28 02:12:26'),
(3, 1, 5, 3, '2023-12-17', '15:00:00', '16:30:00', 'pending', NULL, '2025-05-28 02:12:26', '2025-05-28 02:12:26');

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `reservation_id` int(11) DEFAULT NULL,
  `rating` tinyint(4) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reviews`
--

INSERT INTO `reviews` (`review_id`, `user_id`, `center_id`, `reservation_id`, `rating`, `comment`, `created_at`) VALUES
(1, 1, 1, 1, 5, 'Service exceptionnel, personnel très professionnel', '2025-05-28 02:12:33'),
(2, 3, 2, 2, 4, 'Très bon massage mais un peu cher', '2025-05-28 02:12:33');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `duration_min` int(11) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `is_popular` tinyint(1) DEFAULT 0,
  `disponibilite` tinyint(1) DEFAULT 1 COMMENT '1=Disponible, 0=Non disponible',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`service_id`, `center_id`, `category_id`, `name`, `description`, `duration_min`, `price`, `is_popular`, `disponibilite`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Massage relaxant', 'Massage corporel complet', 60, 120.00, 1, 1, '2025-05-28 02:12:12', '2025-05-28 02:12:12'),
(2, 1, 3, 'Manucure gel', 'Manucure avec vernis gel', 60, 80.00, 1, 1, '2025-05-28 02:12:12', '2025-05-28 02:12:12'),
(3, 1, 6, 'Soin hydratant', 'Soin facial hydratant', 60, 90.00, 0, 1, '2025-05-28 02:12:12', '2025-05-28 02:12:12'),
(4, 2, 4, 'Massage aux pierres chaudes', 'Massage thérapeutique', 90, 150.00, 1, 1, '2025-05-28 02:12:12', '2025-05-28 02:12:12'),
(5, 3, 1, 'Coupe et brushing', 'Coupe de cheveux et mise en plis', 90, 70.00, 1, 1, '2025-05-28 02:12:12', '2025-05-28 02:12:12'),
(6, 3, 5, 'Épilation intégrale', 'Épilation à la cire brésilienne', 45, 120.00, 0, 0, '2025-05-28 02:12:12', '2025-05-28 02:12:12');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `is_manager` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `phone_number`, `password_hash`, `is_manager`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed', 'Ben Ali', 'mohamed.benali@email.com', '+21650123456', '$2a$10$hashedpassword1', 0, '2025-05-28 02:11:48', '2025-05-28 02:11:48'),
(2, 'Leila', 'Trabelsi', 'leila.trabelsi@email.com', '+21650234567', '$2a$10$hashedpassword2', 1, '2025-05-28 02:11:48', '2025-05-28 02:11:48'),
(3, 'Samir', 'Khemiri', 'samir.khemiri@email.com', '+21650345678', '$2a$10$hashedpassword3', 0, '2025-05-28 02:11:48', '2025-05-28 02:11:48'),
(4, 'azert', NULL, 'azer@gmail.com', '24356565', '$2b$10$msq1kqBKpJhsKsnhi4o7C.zaVWf1fBdHXqAafFDWU.ob7tdfbGTMe', 0, '2025-06-01 23:00:25', '2025-06-01 23:00:25'),
(5, 'aaa', NULL, 'aa@gmail.com', '23444555', '$2b$10$Hpm3OpMvYpu91yY0q8sJz.9l5V48DoBBXs7eZiKt.5J.Rc.j0BN8q', 0, '2025-06-01 23:05:35', '2025-06-01 23:05:35'),
(6, 'BBBB', NULL, 'BB@gmail.com', '24356222', '$2b$10$I2Jerc6Esat3KPdEvLCe7e.1JI2UTUscn7pHc26HxY5FlzTM0GRG6', 0, '2025-06-01 23:06:45', '2025-06-01 23:06:45'),
(7, 'mmmm', NULL, 'mm@gmail.com', '2222222', '$2b$10$N2ZVqVKMor.LSoR8yjFNkuGrbNIoYgNKATgiLUckRcg/70wQboN0e', 0, '2025-06-01 23:09:29', '2025-06-01 23:09:29');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `beauty_centers`
--
ALTER TABLE `beauty_centers`
  ADD PRIMARY KEY (`center_id`),
  ADD KEY `manager_id` (`manager_id`);

--
-- Index pour la table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`user_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Index pour la table `opening_hours`
--
ALTER TABLE `opening_hours`
  ADD PRIMARY KEY (`opening_id`),
  ADD KEY `center_id` (`center_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`reset_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `center_id` (`center_id`);

--
-- Index pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `center_id` (`center_id`),
  ADD KEY `reservation_id` (`reservation_id`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `center_id` (`center_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `beauty_centers`
--
ALTER TABLE `beauty_centers`
  MODIFY `center_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `opening_hours`
--
ALTER TABLE `opening_hours`
  MODIFY `opening_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `reset_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `beauty_centers`
--
ALTER TABLE `beauty_centers`
  ADD CONSTRAINT `beauty_centers_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `opening_hours`
--
ALTER TABLE `opening_hours`
  ADD CONSTRAINT `opening_hours_ibfk_1` FOREIGN KEY (`center_id`) REFERENCES `beauty_centers` (`center_id`);

--
-- Contraintes pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`),
  ADD CONSTRAINT `reservations_ibfk_3` FOREIGN KEY (`center_id`) REFERENCES `beauty_centers` (`center_id`);

--
-- Contraintes pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`center_id`) REFERENCES `beauty_centers` (`center_id`),
  ADD CONSTRAINT `reviews_ibfk_3` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`reservation_id`);

--
-- Contraintes pour la table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`center_id`) REFERENCES `beauty_centers` (`center_id`),
  ADD CONSTRAINT `services_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
