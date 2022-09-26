-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Set 07, 2022 alle 11:59
-- Versione del server: 10.3.22-MariaDB-0+deb10u1
-- Versione PHP: 7.3.14-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteca`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `letture`
--

CREATE TABLE `letture` (
  `codice` char(50) NOT NULL,
  `utente` char(50) NOT NULL,
  `inizio` date DEFAULT NULL,
  `fine` date DEFAULT NULL,
  `preferiti` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Struttura della tabella `libri`
--

CREATE TABLE `libri` (
  `codice` char(50) NOT NULL,
  `titolo` char(100) NOT NULL,
  `autore` char(50) NOT NULL,
  `genere` char(50) NOT NULL,
  `posizione` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `username` char(50) NOT NULL,
  `password` char(50) NOT NULL,
  `nome` char(50) NOT NULL,
  `cognome` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `letture`
--
ALTER TABLE `letture`
  ADD PRIMARY KEY (`codice`);

--
-- Indici per le tabelle `libri`
--
ALTER TABLE `libri`
  ADD PRIMARY KEY (`codice`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`username`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `letture`
--
ALTER TABLE `letture`
  ADD CONSTRAINT `FK_letture_libri` FOREIGN KEY (`codice`) REFERENCES `libri` (`codice`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
