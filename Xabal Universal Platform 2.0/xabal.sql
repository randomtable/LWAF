-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Giu 10, 2019 alle 10:55
-- Versione del server: 10.1.21-MariaDB
-- Versione PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xabal`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `contract`
--

CREATE TABLE `contract` (
  `ID` int(11) NOT NULL,
  `contracts` varchar(255) NOT NULL,
  `contractsvalue` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `contract`
--

INSERT INTO `contract` (`ID`, `contracts`, `contractsvalue`) VALUES
(1, 'init', '<div class=\"card bg-light mb-3\">\n  <div class=\"card-header\">Welcome</div>\n  <div class=\"card-body\">\n    <h5 class=\"card-title\">Login</h5>\n    <p class=\"card-text\">xyzXUP2xyz</p>\n  </div>\n</div>');

-- --------------------------------------------------------

--
-- Struttura della tabella `implementation`
--

CREATE TABLE `implementation` (
  `ID` int(11) NOT NULL,
  `implementations` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `implementation`
--

INSERT INTO `implementation` (`ID`, `implementations`) VALUES
(1, 'init');

-- --------------------------------------------------------

--
-- Struttura della tabella `inittable`
--

CREATE TABLE `inittable` (
  `ID` int(11) NOT NULL,
  `initfield` varchar(255) NOT NULL,
  `initvalue` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `inittable`
--

INSERT INTO `inittable` (`ID`, `initfield`, `initvalue`) VALUES
(1, 'init', 'hello world');

-- --------------------------------------------------------

--
-- Struttura della tabella `service`
--

CREATE TABLE `service` (
  `ID` int(11) NOT NULL,
  `services` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `service`
--

INSERT INTO `service` (`ID`, `services`) VALUES
(1, 'init');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `implementation`
--
ALTER TABLE `implementation`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `inittable`
--
ALTER TABLE `inittable`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `contract`
--
ALTER TABLE `contract`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT per la tabella `implementation`
--
ALTER TABLE `implementation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT per la tabella `inittable`
--
ALTER TABLE `inittable`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT per la tabella `service`
--
ALTER TABLE `service`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
