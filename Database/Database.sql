-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Mar 29, 2022 alle 22:09
-- Versione del server: 8.0.28-0ubuntu0.20.04.3
-- Versione PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `S4811831`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `cart`
--

CREATE TABLE `cart` (
  `idUser` int NOT NULL,
  `idVideo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `transactionOK`
--

CREATE TABLE `transactionOK` (
  `idTransaction` int NOT NULL,
  `idUser` int NOT NULL,
  `idVideo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `transactionOK`
--

INSERT INTO `transactionOK` (`idTransaction`, `idUser`, `idVideo`) VALUES
(0, 70, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Pass` varchar(255) NOT NULL,
  `Image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'user-icon.png',
  `Admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `FirstName`, `LastName`, `Email`, `Pass`, `Image`, `Admin`) VALUES
(66, 'Wjrpesuak', 'Mzbtxmkes', 'autcm@pmkfzrctgh.zuo', '$2y$10$/vt3IzD/m3Nly.wBPdVcYem54Y8shhb1i84n4DrinfCAWgDi5plGq', 'user-icon.png', 0),
(67, 'Msimxgcdv', 'Iwlxiqpvk', 'ybfek@mjuoyrndte.ifm', '$2y$10$ZRk5IEmVdngevt2avsyKt.dluXJTj2bDrKQOkryl6aHRpSyFTHtN6', 'user-icon.png', 0),
(68, 'Hcxpshewr', 'Oraghcxen', 'rtqxe@spfxamyvbq.fld', '$2y$10$1.dch1vMMSZJOE3NBpsdh.GWX6v2GLE7GY84fulTEQLVZajK.NNMW', 'user-icon.png', 0),
(70, 'Giacomo', 'Pedemonte', 'giacomopedemonte@libero.it', '$2y$10$9osWrPaOz76OgZnZGcxn3.HACq.wCdeJOFpVDDQ1Cku05CfaVhql2', 'user-icon.png', 0),
(71, 'Ali', 'Haider', '4811831@studenti.unge.it', '$2y$10$ko.meV4rN6l0Zv8go17wcOdxTSFkLIMxW65dRl4PqhEg7Dg8Cu2KG', 'user-icon.png', 1),
(72, 'Sukfwsvoa', 'Wczadpsmt', 'pzxwi@rispevulym.nxj', '$2y$10$MK1L0flZXaKPyXdBaZeIvu0Pnt.E3Soy9itZaV2eRFBGdawWDXJ6O', 'user-icon.png', 0),
(73, 'Uszhdcjny', 'Przcafjvd', 'inzju@pyiraqvgwo.kfq', '$2y$10$/7XlXQV4oUP7kI6c4Go2sOyrib5sWY.96fLxGAPp.HUIYUL1eOPDq', 'user-icon.png', 0),
(75, 'Matias', 'Arce', 'mat99@gmail.com', '$2y$10$o7LNQ7qi77SnfH8bfpuRY.B.Mm/57AhjHlXg3zzZBeAzKRc9/dDH2', 'user-icon.png', 0),
(76, 'Niccolò', 'Arecchi', 'Moreno1893@gmail.com', '$2y$10$IG9zyBW9kAfQRHeSXfX.P.Z.9M2MYt0QIoXQbs7Q59pxviFdNKhta', 'user-icon.png', 0),
(77, 'Marina', 'Ribaudo', 'marina.ribaudo@unige.it', '$2y$10$plaUXH0M/.NCOu6b5ONLuuFrL99xVW.GcxhAIYdLb7X0/CbINDVdC', 'user-icon.png', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `video`
--

CREATE TABLE `video` (
  `id` int NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Price` double(5,2) NOT NULL,
  `idOwner` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `video`
--

INSERT INTO `video` (`id`, `Name`, `Description`, `Price`, `idOwner`) VALUES
(1, 'candreva1.mp4', 'Aggiungi ora alla tua collezione il gol più bello della serie A da fuori area della stagione 2021/2022. ', 19.99, NULL),
(2, 'faraoni2.mp4', 'Aggiungi ora alla tua collezione il secondo gol più bello della serie A da fuori area della stagione 2021/2022. ', 19.99, 70),
(3, 'scamacca3.mp4', 'Aggiungi ora alla tua collezione il terzo gol più bello della serie A da fuori area della stagione 2021/2022. ', 14.99, NULL),
(4, 'simeone4.mp4', 'Aggiungi ora alla tua collezione uno dei gol più belli della serie A da fuori area della stagione 2021/2022. ', 14.99, NULL),
(5, 'afena5.mp4', 'Aggiungi ora alla tua collezione uno dei gol più belli della serie A da fuori area della stagione 2021/2022. ', 14.99, NULL),
(6, 'mali6.mp4', 'Aggiungi ora alla tua collezione uno dei gol più belli della serie A da fuori area della stagione 2021/2022. ', 9.99, NULL),
(7, 'hakan7.mp4', 'Aggiungi ora alla tua collezione uno dei gol più belli della serie A da fuori area della stagione 2021/2022. ', 9.99, NULL),
(8, 'dries8.mp4', 'Aggiungi ora alla tua collezione uno dei gol più belli della serie A da fuori area della stagione 2021/2022. \r\n', 9.99, NULL),
(9, 'sms9.mp4', 'Aggiungi ora alla tua collezione uno dei gol più belli della serie A da fuori area della stagione 2021/2022. ', 4.99, NULL),
(10, 'aramu10.mp4', 'Aggiungi ora alla tua collezione uno dei gol più belli della serie A da fuori area della stagione 2021/2022. ', 4.99, NULL);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idUser`,`idVideo`),
  ADD KEY `idVideo` (`idVideo`);

--
-- Indici per le tabelle `transactionOK`
--
ALTER TABLE `transactionOK`
  ADD PRIMARY KEY (`idUser`,`idVideo`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Owned` (`idOwner`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT per la tabella `video`
--
ALTER TABLE `video`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`idVideo`) REFERENCES `video` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`idOwner`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
