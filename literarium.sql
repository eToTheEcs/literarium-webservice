-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 13, 2019 alle 23:31
-- Versione del server: 10.1.38-MariaDB
-- Versione PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `literarium`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `condivisioni`
--

CREATE TABLE `condivisioni` (
  `IdLibro` int(11) NOT NULL,
  `IdUtente` int(11) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `condivisioni`
--

INSERT INTO `condivisioni` (`IdLibro`, `IdUtente`, `Timestamp`) VALUES
(600, 8, '2019-05-05 20:14:15'),
(1240, 8, '2019-05-11 14:13:11'),
(1241, 8, '2019-05-11 14:23:43'),
(1249, 8, '2019-05-11 14:26:50'),
(1349, 8, '2019-05-11 14:27:09'),
(1379, 8, '2019-05-11 14:28:14'),
(1399, 8, '2019-05-11 15:54:11'),
(200720, 8, '2019-05-05 20:15:35'),
(200720, 9, '2019-05-11 12:01:49'),
(923832, 5, '2019-05-13 20:34:03'),
(923832, 9, '2019-05-13 20:58:02'),
(923842, 8, '2019-05-13 21:02:52'),
(923842, 9, '2019-05-13 21:02:17'),
(973842, 8, '2019-05-13 21:14:46'),
(15827665, 5, '2019-05-04 14:44:32'),
(15827665, 8, '2019-05-05 19:16:22'),
(15827665, 9, '2019-05-05 19:26:44'),
(16034833, 5, '2019-05-03 14:44:32'),
(16034833, 9, '2019-05-03 15:44:32');

-- --------------------------------------------------------

--
-- Struttura della tabella `posizione`
--

CREATE TABLE `posizione` (
  `Latitudine` float NOT NULL,
  `Longitudine` float NOT NULL,
  `Indirizzo` varchar(512) DEFAULT NULL,
  `IdPosizione` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `posizione`
--

INSERT INTO `posizione` (`Latitudine`, `Longitudine`, `Indirizzo`, `IdPosizione`) VALUES
(44.9713, 10.5625, 'Via Madasi Antonio, 15, 46019 Casaletto MN, Italia', 359),
(44.9716, 10.5626, 'Via Madasi Antonio, 15, 46019 Casaletto MN, Italia', 362),
(44.9714, 10.5625, 'Via Madasi Antonio, 15, 46019 Casaletto MN, Italia', 391),
(45.1382, 10.768, 'Via Spolverina, 45, 46100 Mantova MN, Italia', 392),
(45.1416, 10.7674, 'Strada Spolverina, 5, 46100 Mantova MN, Italia', 393),
(44.9578, 10.5589, 'Via Ottoponti Salina, 87, 46019 Viadana MN, Italia', 394);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `raggruppamento_posizioni`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `raggruppamento_posizioni` (
`IdUtente` int(11)
,`IdPosizione` int(11)
,`Timestamp` timestamp
);

-- --------------------------------------------------------

--
-- Struttura della tabella `storico_posizioni`
--

CREATE TABLE `storico_posizioni` (
  `IdUtente` int(11) NOT NULL,
  `IdPosizione` int(11) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `storico_posizioni`
--

INSERT INTO `storico_posizioni` (`IdUtente`, `IdPosizione`, `Timestamp`) VALUES
(5, 359, '2019-04-29 15:21:29'),
(5, 359, '2019-04-29 20:00:39'),
(5, 359, '2019-04-29 20:00:53'),
(5, 362, '2019-04-29 19:14:38'),
(5, 362, '2019-04-29 19:24:47'),
(5, 362, '2019-04-29 19:25:16'),
(5, 394, '2019-05-02 16:10:33'),
(5, 394, '2019-05-02 16:11:15'),
(8, 359, '2019-04-29 19:56:49'),
(8, 359, '2019-04-29 19:57:45'),
(8, 359, '2019-04-29 19:59:18'),
(8, 359, '2019-04-29 20:00:13'),
(8, 359, '2019-04-29 20:01:08'),
(8, 359, '2019-04-29 20:07:10'),
(8, 359, '2019-04-29 20:07:27'),
(8, 359, '2019-04-29 20:08:10'),
(8, 359, '2019-04-29 20:09:13'),
(8, 359, '2019-04-29 20:15:06'),
(8, 359, '2019-04-29 20:16:06'),
(8, 359, '2019-04-30 20:15:06'),
(8, 359, '2019-04-30 20:16:12'),
(8, 359, '2019-04-30 20:17:09'),
(8, 359, '2019-04-30 20:18:09'),
(8, 359, '2019-04-30 20:19:09'),
(8, 359, '2019-04-30 20:20:10'),
(8, 359, '2019-04-30 20:21:10'),
(8, 359, '2019-04-30 20:22:10'),
(8, 359, '2019-04-30 20:27:19'),
(8, 359, '2019-04-30 20:28:19'),
(8, 359, '2019-04-30 20:30:25'),
(8, 359, '2019-04-30 20:31:09'),
(8, 359, '2019-04-30 20:32:15'),
(8, 359, '2019-04-30 20:34:06'),
(8, 359, '2019-04-30 20:35:01'),
(8, 359, '2019-04-30 20:36:01'),
(8, 359, '2019-04-30 20:38:11'),
(8, 359, '2019-04-30 20:42:28'),
(8, 359, '2019-04-30 20:50:28'),
(8, 359, '2019-04-30 20:56:30'),
(8, 359, '2019-04-30 20:57:05'),
(8, 359, '2019-04-30 20:59:33'),
(8, 359, '2019-04-30 21:00:16'),
(8, 359, '2019-04-30 21:00:44'),
(8, 359, '2019-04-30 21:03:49'),
(8, 359, '2019-04-30 21:14:32'),
(8, 359, '2019-04-30 21:25:25'),
(8, 359, '2019-04-30 21:36:19'),
(8, 359, '2019-04-30 21:48:41'),
(8, 359, '2019-05-01 14:29:47'),
(8, 359, '2019-05-01 14:30:47'),
(8, 359, '2019-05-01 14:32:15'),
(8, 359, '2019-05-01 14:34:46'),
(8, 359, '2019-05-01 14:35:27'),
(8, 359, '2019-05-01 14:36:27'),
(8, 359, '2019-05-01 14:37:27'),
(8, 359, '2019-05-01 14:37:57'),
(8, 359, '2019-05-01 14:38:48'),
(8, 359, '2019-05-01 14:39:48'),
(8, 359, '2019-05-01 14:40:49'),
(8, 359, '2019-05-01 14:41:49'),
(8, 359, '2019-05-01 14:42:23'),
(8, 359, '2019-05-01 14:43:23'),
(8, 359, '2019-05-01 14:44:23'),
(8, 359, '2019-05-01 14:45:23'),
(8, 359, '2019-05-01 14:46:23'),
(8, 359, '2019-05-01 14:49:34'),
(8, 359, '2019-05-01 14:55:40'),
(8, 359, '2019-05-01 14:56:40'),
(8, 359, '2019-05-01 15:02:52'),
(8, 359, '2019-05-01 15:04:01'),
(8, 359, '2019-05-01 15:05:23'),
(8, 359, '2019-05-01 15:06:23'),
(8, 359, '2019-05-01 15:07:23'),
(8, 359, '2019-05-01 15:08:30'),
(8, 359, '2019-05-01 15:09:34'),
(8, 359, '2019-05-01 15:10:34'),
(8, 359, '2019-05-01 15:11:02'),
(8, 359, '2019-05-01 15:12:02'),
(8, 359, '2019-05-01 15:13:02'),
(8, 359, '2019-05-01 15:14:02'),
(8, 359, '2019-05-01 15:15:02'),
(8, 359, '2019-05-01 15:16:02'),
(8, 359, '2019-05-01 15:17:02'),
(8, 359, '2019-05-01 15:18:02'),
(8, 359, '2019-05-01 15:19:02'),
(8, 359, '2019-05-01 15:20:02'),
(8, 359, '2019-05-01 15:21:26'),
(8, 359, '2019-05-01 15:22:54'),
(8, 359, '2019-05-01 15:23:54'),
(8, 359, '2019-05-01 15:24:54'),
(8, 359, '2019-05-01 15:36:37'),
(8, 359, '2019-05-01 15:37:37'),
(8, 359, '2019-05-01 15:38:37'),
(8, 359, '2019-05-01 15:39:05'),
(8, 359, '2019-05-01 15:39:46'),
(8, 359, '2019-05-01 19:56:47'),
(8, 359, '2019-05-02 16:34:35'),
(8, 359, '2019-05-02 16:35:47'),
(8, 359, '2019-05-02 16:36:37'),
(8, 359, '2019-05-02 16:37:45'),
(8, 359, '2019-05-02 16:49:19'),
(8, 359, '2019-05-02 16:49:44'),
(8, 359, '2019-05-02 16:50:10'),
(8, 359, '2019-05-02 17:01:59'),
(8, 359, '2019-05-02 17:02:34'),
(8, 359, '2019-05-02 17:03:30'),
(8, 359, '2019-05-02 17:04:30'),
(8, 359, '2019-05-02 17:05:30'),
(8, 359, '2019-05-02 17:06:30'),
(8, 359, '2019-05-02 17:07:30'),
(8, 359, '2019-05-02 17:08:30'),
(8, 359, '2019-05-02 17:09:30'),
(8, 359, '2019-05-02 17:10:30'),
(8, 359, '2019-05-02 17:11:30'),
(8, 359, '2019-05-02 17:12:30'),
(8, 359, '2019-05-02 17:13:30'),
(8, 359, '2019-05-02 17:14:31'),
(8, 359, '2019-05-02 17:15:31'),
(8, 359, '2019-05-02 17:16:31'),
(8, 359, '2019-05-02 19:31:10'),
(8, 359, '2019-05-02 19:32:10'),
(8, 359, '2019-05-02 19:33:10'),
(8, 359, '2019-05-02 19:34:10'),
(8, 359, '2019-05-02 19:35:23'),
(8, 362, '2019-04-29 16:11:27'),
(8, 362, '2019-04-29 19:11:35'),
(8, 362, '2019-04-29 19:13:07'),
(8, 362, '2019-04-29 19:14:20'),
(8, 362, '2019-04-29 19:19:28'),
(8, 362, '2019-04-29 19:21:58'),
(8, 362, '2019-04-29 19:23:57'),
(8, 362, '2019-04-29 19:24:29'),
(8, 362, '2019-04-29 19:27:37'),
(8, 362, '2019-04-30 15:01:37'),
(8, 362, '2019-04-30 15:01:57'),
(8, 362, '2019-04-30 15:02:08'),
(8, 362, '2019-04-30 15:03:08'),
(8, 362, '2019-04-30 15:04:08'),
(8, 362, '2019-04-30 15:05:08'),
(8, 362, '2019-04-30 15:06:08'),
(8, 362, '2019-04-30 15:07:08'),
(8, 362, '2019-04-30 15:08:08'),
(8, 362, '2019-04-30 15:09:08'),
(8, 362, '2019-04-30 15:10:08'),
(8, 362, '2019-04-30 15:11:08'),
(8, 362, '2019-04-30 15:12:08'),
(8, 362, '2019-04-30 15:13:08'),
(8, 362, '2019-04-30 15:14:08'),
(8, 362, '2019-04-30 15:15:08'),
(8, 362, '2019-04-30 15:16:08'),
(8, 362, '2019-04-30 15:17:08'),
(8, 362, '2019-04-30 15:18:08'),
(8, 362, '2019-04-30 15:19:08'),
(8, 362, '2019-04-30 15:20:08'),
(8, 362, '2019-04-30 15:21:08'),
(8, 362, '2019-04-30 15:22:14'),
(8, 362, '2019-04-30 15:23:09'),
(8, 362, '2019-04-30 15:24:09'),
(8, 362, '2019-04-30 15:25:14'),
(8, 362, '2019-04-30 15:26:09'),
(8, 362, '2019-04-30 15:27:09'),
(8, 362, '2019-04-30 15:28:09'),
(8, 362, '2019-04-30 15:29:09'),
(8, 362, '2019-04-30 15:30:09'),
(8, 362, '2019-04-30 15:31:17'),
(8, 362, '2019-04-30 15:32:09'),
(8, 362, '2019-04-30 15:33:14'),
(8, 362, '2019-04-30 15:34:09'),
(8, 362, '2019-04-30 15:35:09'),
(8, 362, '2019-04-30 15:36:09'),
(8, 362, '2019-04-30 15:37:09'),
(8, 362, '2019-04-30 15:38:14'),
(8, 362, '2019-04-30 15:39:09'),
(8, 362, '2019-04-30 15:39:45'),
(8, 362, '2019-04-30 15:49:44'),
(8, 362, '2019-04-30 15:50:49'),
(8, 362, '2019-04-30 15:51:44'),
(8, 362, '2019-04-30 15:52:44'),
(8, 362, '2019-04-30 15:53:44'),
(8, 362, '2019-04-30 15:56:29'),
(8, 362, '2019-04-30 15:56:30'),
(8, 362, '2019-04-30 15:56:44'),
(8, 362, '2019-04-30 15:57:45'),
(8, 362, '2019-04-30 15:58:49'),
(8, 362, '2019-04-30 15:59:45'),
(8, 362, '2019-04-30 16:00:44'),
(8, 362, '2019-04-30 16:01:50'),
(8, 362, '2019-04-30 16:02:45'),
(8, 362, '2019-04-30 16:06:19'),
(8, 362, '2019-04-30 16:06:45'),
(8, 362, '2019-04-30 16:07:45'),
(8, 362, '2019-04-30 16:08:50'),
(8, 362, '2019-04-30 16:09:45'),
(8, 362, '2019-04-30 16:10:50'),
(8, 362, '2019-04-30 16:11:45'),
(8, 362, '2019-04-30 16:12:45'),
(8, 362, '2019-04-30 16:15:04'),
(8, 362, '2019-04-30 16:25:09'),
(8, 362, '2019-04-30 16:26:04'),
(8, 362, '2019-04-30 16:27:04'),
(8, 362, '2019-04-30 16:28:04'),
(8, 362, '2019-04-30 16:29:04'),
(8, 362, '2019-04-30 16:30:09'),
(8, 362, '2019-04-30 16:31:04'),
(8, 362, '2019-04-30 16:32:04'),
(8, 362, '2019-04-30 16:33:04'),
(8, 362, '2019-04-30 16:34:09'),
(8, 362, '2019-04-30 16:35:04'),
(8, 362, '2019-04-30 16:36:04'),
(8, 362, '2019-04-30 16:37:05'),
(8, 362, '2019-04-30 16:38:04'),
(8, 362, '2019-04-30 16:39:05'),
(8, 362, '2019-04-30 16:40:09'),
(8, 362, '2019-04-30 16:41:05'),
(8, 362, '2019-04-30 16:42:05'),
(8, 362, '2019-04-30 16:43:05'),
(8, 362, '2019-04-30 16:53:05'),
(8, 362, '2019-04-30 16:54:05'),
(8, 362, '2019-04-30 16:55:05'),
(8, 362, '2019-04-30 16:56:05'),
(8, 362, '2019-04-30 16:59:28'),
(8, 362, '2019-04-30 16:59:29'),
(8, 362, '2019-04-30 17:00:05'),
(8, 362, '2019-04-30 17:01:05'),
(8, 362, '2019-04-30 17:02:05'),
(8, 362, '2019-04-30 17:02:28'),
(8, 362, '2019-04-30 17:03:28'),
(8, 362, '2019-04-30 17:04:28'),
(8, 362, '2019-04-30 17:05:28'),
(8, 362, '2019-04-30 17:06:33'),
(8, 362, '2019-04-30 17:07:28'),
(8, 362, '2019-04-30 17:08:28'),
(8, 362, '2019-04-30 17:09:28'),
(8, 362, '2019-04-30 17:13:18'),
(8, 362, '2019-04-30 17:13:28'),
(8, 362, '2019-04-30 17:14:28'),
(8, 362, '2019-04-30 17:15:28'),
(8, 362, '2019-04-30 17:16:28'),
(8, 362, '2019-04-30 17:17:28'),
(8, 362, '2019-04-30 17:18:28'),
(8, 362, '2019-04-30 17:19:33'),
(8, 362, '2019-04-30 17:20:28'),
(8, 362, '2019-04-30 17:21:28'),
(8, 362, '2019-04-30 17:22:28'),
(8, 362, '2019-05-01 15:40:39'),
(8, 362, '2019-05-01 15:41:38'),
(8, 362, '2019-05-01 15:42:16'),
(8, 362, '2019-05-01 15:43:17'),
(8, 362, '2019-05-01 15:43:33'),
(8, 362, '2019-05-01 15:45:46'),
(8, 362, '2019-05-01 15:46:46'),
(8, 362, '2019-05-01 15:48:26'),
(8, 362, '2019-05-01 15:49:26'),
(8, 362, '2019-05-01 15:50:26'),
(8, 362, '2019-05-01 15:51:26'),
(8, 362, '2019-05-01 15:52:26'),
(8, 362, '2019-05-01 15:53:27'),
(8, 362, '2019-05-01 15:54:27'),
(8, 362, '2019-05-01 15:55:27'),
(8, 362, '2019-05-01 15:56:27'),
(8, 362, '2019-05-01 15:56:35'),
(8, 362, '2019-05-01 15:57:14'),
(8, 362, '2019-05-01 15:59:07'),
(8, 362, '2019-05-01 15:59:23'),
(8, 362, '2019-05-01 15:59:38'),
(8, 362, '2019-05-01 15:59:56'),
(8, 362, '2019-05-01 16:00:38'),
(8, 362, '2019-05-01 16:01:06'),
(8, 362, '2019-05-01 16:02:06'),
(8, 362, '2019-05-01 16:03:06'),
(8, 362, '2019-05-01 16:04:06'),
(8, 362, '2019-05-01 16:05:06'),
(8, 362, '2019-05-01 16:05:58'),
(8, 362, '2019-05-01 16:06:58'),
(8, 362, '2019-05-01 16:07:58'),
(8, 362, '2019-05-01 16:08:58'),
(8, 362, '2019-05-01 16:09:58'),
(8, 362, '2019-05-01 16:10:58'),
(8, 362, '2019-05-01 16:11:58'),
(8, 362, '2019-05-01 16:12:58'),
(8, 362, '2019-05-01 16:13:58'),
(8, 362, '2019-05-01 16:14:58'),
(8, 362, '2019-05-01 16:15:58'),
(8, 362, '2019-05-01 16:16:44'),
(8, 362, '2019-05-02 17:17:44'),
(8, 362, '2019-05-02 18:54:54'),
(8, 362, '2019-05-02 18:55:34'),
(8, 362, '2019-05-02 18:55:45'),
(8, 362, '2019-05-03 19:59:45'),
(8, 362, '2019-05-03 20:00:45'),
(8, 362, '2019-05-03 20:38:24'),
(8, 362, '2019-05-03 20:39:24'),
(8, 362, '2019-05-03 20:40:25'),
(8, 362, '2019-05-03 20:41:24'),
(8, 362, '2019-05-03 20:42:24'),
(8, 362, '2019-05-03 20:43:24'),
(8, 362, '2019-05-03 20:44:24'),
(8, 362, '2019-05-03 20:45:24'),
(8, 362, '2019-05-03 20:46:24'),
(8, 362, '2019-05-03 20:47:24'),
(8, 362, '2019-05-03 20:59:32'),
(8, 391, '2019-04-29 18:42:32'),
(8, 391, '2019-05-01 16:41:36'),
(8, 391, '2019-05-01 16:42:36'),
(8, 391, '2019-05-01 16:43:36'),
(8, 391, '2019-05-01 16:44:36'),
(8, 391, '2019-05-01 16:45:36'),
(8, 391, '2019-05-01 16:46:36'),
(8, 391, '2019-05-01 16:47:36'),
(8, 391, '2019-05-01 16:48:36'),
(8, 391, '2019-05-01 16:49:36'),
(8, 391, '2019-05-01 16:50:36'),
(8, 391, '2019-05-01 16:51:36'),
(8, 391, '2019-05-01 16:52:37'),
(8, 391, '2019-05-01 16:53:37'),
(8, 391, '2019-05-01 16:54:37'),
(8, 391, '2019-05-01 16:54:56'),
(8, 391, '2019-05-01 16:55:37'),
(8, 391, '2019-05-01 16:56:37'),
(8, 391, '2019-05-01 16:57:37'),
(8, 391, '2019-05-01 16:58:26'),
(8, 391, '2019-05-01 16:59:25'),
(8, 391, '2019-05-01 16:59:34'),
(8, 391, '2019-05-01 16:59:43'),
(8, 391, '2019-05-01 17:02:02'),
(8, 391, '2019-05-01 17:04:50'),
(8, 391, '2019-05-01 17:05:50'),
(8, 391, '2019-05-01 17:06:56'),
(8, 391, '2019-05-01 17:07:21'),
(8, 391, '2019-05-01 17:07:41'),
(8, 391, '2019-05-01 17:16:09'),
(8, 391, '2019-05-01 17:25:58'),
(8, 391, '2019-05-01 19:22:12'),
(8, 391, '2019-05-01 19:28:24'),
(8, 391, '2019-05-01 19:29:09'),
(8, 391, '2019-05-01 19:30:09'),
(8, 391, '2019-05-01 19:31:09'),
(8, 391, '2019-05-01 19:32:09'),
(8, 391, '2019-05-01 19:33:09'),
(8, 391, '2019-05-01 19:34:09'),
(8, 391, '2019-05-01 19:35:09'),
(8, 391, '2019-05-01 19:36:09'),
(8, 391, '2019-05-01 19:37:09'),
(8, 391, '2019-05-01 19:38:09'),
(8, 391, '2019-05-01 19:39:09'),
(8, 391, '2019-05-01 19:40:09'),
(8, 391, '2019-05-01 19:41:10'),
(8, 391, '2019-05-01 19:42:10'),
(8, 391, '2019-05-01 19:43:10'),
(8, 391, '2019-05-01 19:44:10'),
(8, 391, '2019-05-01 19:45:10'),
(8, 391, '2019-05-01 19:46:10'),
(8, 391, '2019-05-01 19:47:10'),
(8, 391, '2019-05-01 19:48:10'),
(8, 391, '2019-05-01 19:49:10'),
(8, 391, '2019-05-01 19:50:10'),
(8, 391, '2019-05-01 19:51:10'),
(8, 391, '2019-05-01 19:52:10'),
(8, 391, '2019-05-01 19:53:10'),
(8, 391, '2019-05-01 19:54:10'),
(8, 391, '2019-05-01 19:55:10'),
(8, 391, '2019-05-01 19:56:10'),
(8, 391, '2019-05-02 18:36:09'),
(8, 391, '2019-05-02 18:37:08'),
(8, 391, '2019-05-02 18:40:59'),
(8, 391, '2019-05-02 18:41:59'),
(8, 391, '2019-05-02 18:57:18'),
(8, 391, '2019-05-02 18:57:39'),
(8, 391, '2019-05-02 18:57:55'),
(8, 391, '2019-05-02 18:58:23'),
(8, 391, '2019-05-02 18:58:42'),
(8, 391, '2019-05-02 19:00:46'),
(8, 391, '2019-05-02 19:55:31'),
(8, 391, '2019-05-02 20:06:10'),
(8, 391, '2019-05-02 20:07:10'),
(8, 391, '2019-05-02 20:08:10'),
(8, 391, '2019-05-02 20:08:49'),
(8, 391, '2019-05-02 20:09:49'),
(8, 391, '2019-05-02 20:10:49'),
(8, 391, '2019-05-02 20:11:49'),
(8, 391, '2019-05-02 20:21:49'),
(8, 391, '2019-05-02 20:22:49'),
(8, 391, '2019-05-02 20:23:49'),
(8, 391, '2019-05-02 20:24:49'),
(8, 391, '2019-05-02 20:25:49'),
(8, 391, '2019-05-02 20:26:49'),
(8, 391, '2019-05-02 20:36:49'),
(8, 391, '2019-05-02 20:37:49'),
(8, 391, '2019-05-02 20:38:49'),
(8, 391, '2019-05-02 20:39:49'),
(8, 391, '2019-05-02 20:40:49'),
(8, 391, '2019-05-02 20:41:49'),
(8, 391, '2019-05-02 20:42:49'),
(8, 391, '2019-05-02 20:43:49'),
(8, 391, '2019-05-02 20:44:49'),
(8, 391, '2019-05-02 20:45:49'),
(8, 391, '2019-05-02 20:46:49'),
(8, 391, '2019-05-03 21:14:43'),
(8, 391, '2019-05-03 21:15:43'),
(8, 392, '2019-04-30 07:04:40'),
(8, 393, '2019-04-30 08:06:25'),
(8, 393, '2019-04-30 08:06:39'),
(8, 393, '2019-04-30 08:07:25'),
(8, 394, '2019-05-02 16:09:58'),
(8, 394, '2019-05-02 16:11:06'),
(9, 359, '2019-04-30 20:49:28'),
(9, 393, '2019-04-30 20:50:28');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `IdUtente` int(11) NOT NULL,
  `NomeUtente` varchar(512) DEFAULT NULL,
  `Password` varchar(2048) DEFAULT NULL,
  `Ip` varchar(15) NOT NULL,
  `Token` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`IdUtente`, `NomeUtente`, `Password`, `Ip`, `Token`) VALUES
(5, 'john', '$2y$10$7LA8yRJqwNDiFzKL2Tetpu23jaE0s8f.Afx.XmVT7lpNpYp5p/B82', '', '40566ee26ae14efe302c691743b3e548'),
(8, 'ben', '$2y$10$rkiq/8LrLiDITei7VKIX2O/fIO2yRqnPVR5EEbQMEaw3jqx0k1bbm', '', 'c0409d4896c02e4509f69a7a750ee93d'),
(9, 'pippo', '$2y$10$2U5WjCHtX5gWPiSxJ1g9zONEmKt9J/jdrhdRUZ3aWQAwdsjBFnlP6', '', '68d6e0039e6051a6e7f29cb8afa68bd5');

-- --------------------------------------------------------

--
-- Struttura per vista `raggruppamento_posizioni`
--
DROP TABLE IF EXISTS `raggruppamento_posizioni`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `raggruppamento_posizioni`  AS  select `sp`.`IdUtente` AS `IdUtente`,`sp`.`IdPosizione` AS `IdPosizione`,`sp`.`Timestamp` AS `Timestamp` from `storico_posizioni` `sp` where (`sp`.`Timestamp` = (select max(`storico_posizioni`.`Timestamp`) from `storico_posizioni` where ((`storico_posizioni`.`IdUtente` = `sp`.`IdUtente`) and (`storico_posizioni`.`IdPosizione` = `sp`.`IdPosizione`)))) group by `sp`.`IdUtente`,`sp`.`IdPosizione` ;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `condivisioni`
--
ALTER TABLE `condivisioni`
  ADD PRIMARY KEY (`IdLibro`,`IdUtente`);

--
-- Indici per le tabelle `posizione`
--
ALTER TABLE `posizione`
  ADD PRIMARY KEY (`IdPosizione`),
  ADD UNIQUE KEY `coord_uniche` (`Latitudine`,`Longitudine`);

--
-- Indici per le tabelle `storico_posizioni`
--
ALTER TABLE `storico_posizioni`
  ADD PRIMARY KEY (`IdUtente`,`IdPosizione`,`Timestamp`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`IdUtente`),
  ADD UNIQUE KEY `utente_univoco` (`NomeUtente`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `posizione`
--
ALTER TABLE `posizione`
  MODIFY `IdPosizione` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=395;

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `IdUtente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
