-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 26, 2019 at 03:52 PM
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

--
-- Dumping data for table `animals_type`
--

INSERT INTO `animals_type` (`id`, `name`) VALUES
(1, 'type1'),
(2, 'zaea');

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

INSERT INTO `announces` (`id`, `active`, `city`, `created_at`, `dept`, `description`, `street_address`, `title`, `updated_at`, `uuid`) VALUES
(1, b'1', 'draveil', '2019-11-26 15:22:19', '91210', 'my descezaeaze', 'eazoelaopzle aze ae a', 'thats firstazeaeae fheo', '2019-11-26 15:22:19', '6b760506-d998-4883-b915-dd4e4e910424'),
(2, b'1', 'draveil', '2019-11-26 15:32:48', '91210', 'my descezaeaze', 'eazoelaopzle aze ae a', 'thats firstazeaeae fheo', '2019-11-26 15:32:48', '3240ce34-7b46-4b8e-b913-8ffe8333d716'),
(3, b'1', 'draveil', '2019-11-26 15:33:46', '91210', 'my descezaeaze', 'eazoelaopzle aze ae a', 'thats firstazeaeae fheo', '2019-11-26 15:33:46', '4c580231-d22c-43fa-867f-82c376d1f3fd'),
(4, b'1', 'draveil', '2019-11-26 15:35:35', '91210', 'my descezaeaze', 'eazoelaopzle aze ae a', 'thats firstazeaeae fheo', '2019-11-26 15:35:35', 'fd06d87b-09d4-4ab9-afb5-ead843d32683'),
(5, b'1', 'draveil', '2019-11-26 15:37:55', '91210', 'my descezaeaze', 'eazoelaopzle aze ae a', 'thats firstazeaeae fheo', '2019-11-26 15:37:55', 'd1400e6d-a27a-4c51-99f5-b2d72dba0e6d');

-- --------------------------------------------------------

--
-- Table structure for table `announces_animals_type`
--

CREATE TABLE `announces_animals_type` (
`announces_id` bigint(20) NOT NULL,
`animals_type_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `announces_animals_type`
--

INSERT INTO `announces_animals_type` (`announces_id`, `animals_type_id`) VALUES
(1, 1),
(1, 2),
(5, 2),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `announces_equipments`
--

CREATE TABLE `announces_equipments` (
`announces_id` bigint(20) NOT NULL,
`equipments_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `announces_equipments`
--

INSERT INTO `announces_equipments` (`announces_id`, `equipments_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `announces_services`
--

CREATE TABLE `announces_services` (
`announces_id` bigint(20) NOT NULL,
`services_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `announces_services`
--

INSERT INTO `announces_services` (`announces_id`, `services_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
`id` bigint(20) NOT NULL,
`name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`id`, `name`) VALUES
(1, 't3 naxx de fdp 60'),
(2, 'sulfuras');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
`id` bigint(20) NOT NULL,
`name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`) VALUES
(1, 'rush H24'),
(2, 'gg wp le LFR');

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
(1, 'admin@admin.fr', '$2a$10$DVxzsMhChfwaAEEw8iya1.hVBiS6OMoOGzAqF6SAJ8cyRUQJX0krC', 'admin');

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
-- Indexes for table `announces_animals_type`
--
ALTER TABLE `announces_animals_type`
ADD KEY `FKk610cvu8fhub2yl3b2rfwf1lh` (`animals_type_id`),
ADD KEY `FKrc49qnwg2ytybqugguvdgrvf6` (`announces_id`);

--
-- Indexes for table `announces_equipments`
--
ALTER TABLE `announces_equipments`
ADD KEY `FKcuo2tn860645t9lt91u031jfj` (`equipments_id`),
ADD KEY `FKaii0strpy25h6rr0ujr1bulye` (`announces_id`);

--
-- Indexes for table `announces_services`
--
ALTER TABLE `announces_services`
ADD KEY `FKi7yrltc6w8kevodu047y7vuim` (`services_id`),
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

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animals_type`
--
ALTER TABLE `animals_type`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `announces`
--
ALTER TABLE `announces`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;