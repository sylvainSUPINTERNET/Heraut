-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 24, 2019 at 04:14 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `heraut`
--

-- --------------------------------------------------------

--
-- Table structure for table `animals_type`
--

CREATE TABLE `animals_type` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announces`
--

CREATE TABLE `announces` (
  `id` bigint(20) NOT NULL,
  `active` bit(1) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `dept` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `announces`
--

-- INSERT INTO `announces` (`id`, `active`, `city`, `created_at`, `dept`, `description`, `street_address`, `title`, `updated_at`, `uuid`) VALUES
-- (2, b'1', 'draveil', '2019-11-24 16:12:16', '91210', 'my descezaeaze', 'eazoelaopzle aze ae a', 'thats firstazeaeae fheo', '2019-11-24 16:12:16', '4e05d8cc-cab7-456f-9f84-9d1a1f9ab11d'),
-- (3, b'1', 'draveil', '2019-11-24 16:12:34', '91210', 'my descezaeaze', 'eazoelaopzle aze ae a', 'thats firstazeaeae fheo', '2019-11-24 16:12:34', '6aa06a59-0ff6-48ae-afd3-86b3a1ad0d5a');

-- --------------------------------------------------------

--
-- Table structure for table `announces_animals_types`
--

CREATE TABLE `announces_animals_types` (
  `announces_id` bigint(20) NOT NULL,
  `animals_types_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announces_equipments`
--

CREATE TABLE `announces_equipments` (
  `announces_id` bigint(20) NOT NULL,
  `equipments_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announces_services`
--

CREATE TABLE `announces_services` (
  `announces_id` bigint(20) NOT NULL,
  `services_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(4),
(4),
(4),
(4),
(4),
(4);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`) VALUES
(1, 'admin@admin.fr', '$2a$10$WfE6C1Dt7Q6vjFJbfoFP5OAjtEA4fgMOuWZCOGOT.W35OfeaXkBaC', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users_announces`
--

CREATE TABLE `users_announces` (
  `user_id` bigint(20) NOT NULL,
  `announces_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `roles` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `roles`) VALUES
(1, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animals_type`
--
ALTER TABLE `animals_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announces`
--
ALTER TABLE `announces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announces_animals_types`
--
ALTER TABLE `announces_animals_types`
  ADD UNIQUE KEY `UK_97l30tkeq477nx8r2pds7ksev` (`animals_types_id`),
  ADD KEY `FK4soexxwrvyr4tijewct1l7aik` (`announces_id`);

--
-- Indexes for table `announces_equipments`
--
ALTER TABLE `announces_equipments`
  ADD UNIQUE KEY `UK_6h1fffv9utpj2hbv4eaeeg7j6` (`equipments_id`),
  ADD KEY `FKaii0strpy25h6rr0ujr1bulye` (`announces_id`);

--
-- Indexes for table `announces_services`
--
ALTER TABLE `announces_services`
  ADD UNIQUE KEY `UK_2g5ma4t089pl92qfmyab897oi` (`services_id`),
  ADD KEY `FKss70dxs79frvqp9xkop0t79mh` (`announces_id`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_announces`
--
ALTER TABLE `users_announces`
  ADD UNIQUE KEY `UK_29wxj8eyuidyrslrhn7xgv3ya` (`announces_id`),
  ADD KEY `FKiqo3jervb2c7vpqkd7jhse3kd` (`user_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD KEY `FKhfh9dx7w3ubf1co1vdev94g3f` (`user_id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);
