-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2024 at 03:55 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vhs_rent test`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `adresy`
--

CREATE TABLE `adresy` (
  `ID_Adresu` int(4) NOT NULL,
  `Miasto` varchar(30) DEFAULT NULL,
  `Ulica` varchar(30) DEFAULT NULL,
  `Nr_Ulicy` varchar(6) DEFAULT NULL,
  `Lokal` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `adresy`
--

INSERT INTO `adresy` (`ID_Adresu`, `Miasto`, `Ulica`, `Nr_Ulicy`, `Lokal`) VALUES
(1, 'Grodzisk Mazowiecki', 'Aleja Piastów', '1', 'A'),
(2, 'Grodzisk Mazowiecki', 'Lipowa', '5', 'B'),
(3, 'Grodzisk Mazowiecki', 'Słowackiego', '10', '2'),
(4, 'Grodzisk Mazowiecki', 'Polna', '15', 'C'),
(5, 'Grodzisk Mazowiecki', 'Mazowiecka', '20', '4'),
(6, 'Grodzisk Mazowiecki', 'Klonowa', '25', 'D'),
(7, 'Grodzisk Mazowiecki', 'Jagiellońska', '30', '6'),
(8, 'Grodzisk Mazowiecki', 'Paderewskiego', '35', 'E'),
(9, 'Grodzisk Mazowiecki', 'Rynek', '40', '8'),
(10, 'Grodzisk Mazowiecki', 'Sienkiewicza', '45', 'F'),
(11, 'Grodzisk Mazowiecki', 'Ogrodowa', '50', '10'),
(12, 'Grodzisk Mazowiecki', 'Królewska', '55', 'G'),
(13, 'Grodzisk Mazowiecki', 'Piękna', '60', '12'),
(14, 'Grodzisk Mazowiecki', 'Cicha', '65', 'H'),
(15, 'Grodzisk Mazowiecki', 'Grzybowa', '70', '14'),
(16, 'Grodzisk Mazowiecki', 'Długa', '75', 'I'),
(17, 'Grodzisk Mazowiecki', 'Konopnickiej', '80', '16'),
(18, 'Grodzisk Mazowiecki', 'Narutowicza', '85', 'J'),
(19, 'Grodzisk Mazowiecki', 'Wesoła', '90', '18'),
(20, 'Grodzisk Mazowiecki', 'Pogodna', '95', 'K'),
(21, 'Grodzisk Mazowiecki', 'Stawowa', '100', '20'),
(22, 'Grodzisk Mazowiecki', 'Złota', '105', 'L'),
(23, 'Grodzisk Mazowiecki', 'Czarna', '110', '22'),
(24, 'Grodzisk Mazowiecki', 'Leśna', '115', 'M'),
(25, 'Grodzisk Mazowiecki', 'Mickiewicza', '120', '24'),
(26, 'Grodzisk Mazowiecki', 'Żeromskiego', '125', 'N'),
(27, 'Grodzisk Mazowiecki', 'Sosnowa', '130', '26'),
(28, 'Grodzisk Mazowiecki', 'Brzozowa', '135', 'O'),
(29, 'Grodzisk Mazowiecki', 'Nowa', '140', '28'),
(30, 'Grodzisk Mazowiecki', 'Wiatraczną', '145', 'P'),
(31, 'Grodzisk Mazowiecki', 'Wojska Polskiego', '150', '30'),
(32, 'Grodzisk Mazowiecki', 'Kopernika', '155', 'Q'),
(33, 'Grodzisk Mazowiecki', 'Łąkowa', '160', '32'),
(34, 'Grodzisk Mazowiecki', 'Kościelna', '165', 'R'),
(35, 'Grodzisk Mazowiecki', 'Klonowa', '170', '34');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `egzemplarze`
--

CREATE TABLE `egzemplarze` (
  `ID_Egzemplarza` int(3) NOT NULL,
  `ID_Filmu` int(3) DEFAULT NULL,
  `Status` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `egzemplarze`
--

INSERT INTO `egzemplarze` (`ID_Egzemplarza`, `ID_Filmu`, `Status`) VALUES
(1, 201, 'Dostępny'),
(2, 201, 'Dostępny'),
(3, 201, 'Wypożyczony'),
(4, 202, 'Dostępny'),
(5, 202, 'Dostępny'),
(6, 202, 'Dostępny'),
(7, 203, 'Dostępny'),
(8, 203, 'Wypożyczony'),
(9, 204, 'Dostępny'),
(10, 204, 'Wypożyczony'),
(11, 205, 'Dostępny'),
(12, 205, 'Wypożyczony'),
(13, 206, 'Dostępny'),
(14, 206, 'Dostępny'),
(15, 207, 'Dostępny'),
(16, 207, 'Dostępny'),
(17, 208, 'Dostępny'),
(18, 208, 'Wypożyczony'),
(19, 209, 'Dostępny'),
(20, 209, 'Wypożyczony'),
(21, 210, 'Dostępny'),
(22, 210, 'Dostępny'),
(23, 211, 'Dostępny'),
(24, 211, 'Wypożyczony'),
(25, 212, 'Dostępny'),
(26, 212, 'Dostępny'),
(27, 213, 'Dostępny'),
(28, 214, 'Dostępny'),
(29, 214, 'Wypożyczony'),
(30, 215, 'Dostępny'),
(31, 215, 'Wypożyczony'),
(32, 216, 'Dostępny'),
(33, 217, 'Dostępny'),
(34, 218, 'Dostępny'),
(35, 218, 'Wypożyczony'),
(36, 219, 'Dostępny'),
(37, 220, 'Dostępny'),
(38, 221, 'Dostępny'),
(39, 221, 'Dostępny'),
(40, 222, 'Dostępny'),
(41, 222, 'Wypożyczony'),
(42, 223, 'Dostępny'),
(43, 223, 'Dostępny'),
(44, 224, 'Dostępny'),
(45, 225, 'Wypożyczony'),
(46, 225, 'Wypożyczony'),
(47, 226, 'Dostępny'),
(48, 226, 'Dostępny'),
(49, 226, 'Dostępny'),
(50, 227, 'Dostępny'),
(51, 228, 'Dostępny'),
(52, 228, 'Wypożyczony'),
(53, 229, 'Dostępny'),
(54, 229, 'Dostępny'),
(55, 230, 'Dostępny'),
(56, 231, 'Dostępny'),
(57, 232, 'Dostępny'),
(58, 233, 'Dostępny'),
(59, 234, 'Dostępny'),
(60, 235, 'Dostępny'),
(61, 235, 'Dostępny');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filmy`
--

CREATE TABLE `filmy` (
  `ID_Filmu` int(6) NOT NULL,
  `ID_Rezysera` int(4) DEFAULT NULL,
  `Tytul` varchar(30) DEFAULT NULL,
  `Rok_Premiery` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `filmy`
--

INSERT INTO `filmy` (`ID_Filmu`, `ID_Rezysera`, `Tytul`, `Rok_Premiery`) VALUES
(201, 301, 'Inception', 2010),
(202, 302, 'The Irishman', 2019),
(203, 303, 'Jurassic Park', 1993),
(204, 304, 'Pulp Fiction', 1994),
(205, 305, 'Fight Club', 1999),
(206, 306, 'Psycho', 1960),
(207, 307, 'The Godfather', 1972),
(208, 308, 'Do the Right Thing', 1989),
(209, 309, 'Fargo', 1996),
(210, 310, 'Titanic', 1997),
(211, 311, 'Edward Scissorhands', 1990),
(212, 312, 'Blade Runner', 1982),
(213, 313, 'The Grand Budapest Hotel', 2014),
(214, 314, 'The Lord of the Rings: The Fel', 2001),
(215, 315, '2001: A Space Odyssey', 1968),
(216, 301, 'Interstellar', 2014),
(217, 302, 'Goodfellas', 1990),
(218, 303, 'Schindler\'s List', 1993),
(219, 304, 'Django Unchained', 2012),
(220, 305, 'The Social Network', 2010),
(221, 306, 'Vertigo', 1958),
(222, 307, 'Apocalypse Now', 1979),
(223, 308, 'Malcolm X', 1992),
(224, 309, 'The Big Lebowski', 1998),
(225, 310, 'Avatar', 2009),
(226, 311, 'Beetlejuice', 1988),
(227, 312, 'Alien', 1979),
(228, 313, 'Moonrise Kingdom', 2012),
(229, 314, 'The Lord of the Rings: The Two', 2002),
(230, 315, 'A Clockwork Orange', 1971),
(231, 301, 'The Dark Knight', 2008),
(232, 302, 'Raging Bull', 1980),
(233, 303, 'E.T. the Extra-Terrestrial', 1982),
(234, 304, 'Inglourious Basterds', 2009),
(235, 305, 'Gone Girl', 2014);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filmy_rezyserzy`
--

CREATE TABLE `filmy_rezyserzy` (
  `ID` int(6) NOT NULL,
  `ID_Filmu` int(6) DEFAULT NULL,
  `ID_Rezysera` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `filmy_rezyserzy`
--

INSERT INTO `filmy_rezyserzy` (`ID`, `ID_Filmu`, `ID_Rezysera`) VALUES
(1, 201, 301),
(2, 202, 302),
(3, 203, 303),
(4, 204, 304),
(5, 205, 305),
(6, 206, 306),
(7, 207, 307),
(8, 208, 308),
(9, 209, 309),
(10, 210, 310),
(11, 211, 311),
(12, 212, 312),
(13, 213, 313),
(14, 214, 314),
(15, 215, 315),
(16, 216, 301),
(17, 217, 302),
(18, 218, 303),
(19, 219, 304),
(20, 220, 305),
(21, 221, 306),
(22, 222, 307),
(23, 223, 308),
(24, 224, 309),
(25, 225, 310),
(26, 226, 311),
(27, 227, 312),
(28, 228, 313),
(29, 229, 314),
(30, 230, 315),
(31, 231, 301),
(32, 232, 302),
(33, 233, 303),
(34, 234, 304),
(35, 235, 305),
(36, 224, 316);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `ID_Klienta` int(4) NOT NULL,
  `ID_Adresu` int(4) DEFAULT NULL,
  `Imie` varchar(30) DEFAULT NULL,
  `Nazwisko` varchar(30) DEFAULT NULL,
  `Nr_Telefonu` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `klienci`
--

INSERT INTO `klienci` (`ID_Klienta`, `ID_Adresu`, `Imie`, `Nazwisko`, `Nr_Telefonu`) VALUES
(1, 1, 'Adam', 'Nowak', '123456789'),
(2, 2, 'Anna', 'Kowalska', '987654321'),
(3, 3, 'Piotr', 'Wiśniewski', '111222333'),
(4, 4, 'Magdalena', 'Dąbrowska', '444555666'),
(5, 5, 'Krzysztof', 'Lewandowski', '777888999'),
(6, 6, 'Ewa', 'Wójcik', '111222333'),
(7, 7, 'Marek', 'Kamiński', '444555666'),
(8, 8, 'Karolina', 'Zielińska', '777888999'),
(9, 9, 'Artur', 'Szymański', '111222333'),
(10, 10, 'Agnieszka', 'Woźniak', '444555666'),
(11, 11, 'Kamil', 'Kozłowski', '777888999'),
(12, 12, 'Dominika', 'Jankowska', '111222333'),
(13, 13, 'Mariusz', 'Wojciechowski', '444555666'),
(14, 14, 'Natalia', 'Kowalczyk', '777888999'),
(15, 15, 'Robert', 'Mazur', '111222333'),
(16, 16, 'Sylwia', 'Krawczyk', '444555666'),
(17, 17, 'Łukasz', 'Piotrowski', '777888999'),
(18, 18, 'Justyna', 'Grabowska', '111222333'),
(19, 19, 'Tomasz', 'Nowicki', '444555666'),
(20, 20, 'Katarzyna', 'Zając', '777888999'),
(21, 21, 'Michał', 'Pawłowski', '111222333'),
(22, 22, 'Monika', 'Michalska', '444555666'),
(23, 23, 'Marcin', 'Sikora', '777888999'),
(24, 24, 'Oliwia', 'Olejnik', '111222333'),
(25, 25, 'Jacek', 'Kurek', '444555666'),
(26, 26, 'Agata', 'Nawrocka', '777888999'),
(27, 27, 'Paweł', 'Witkowski', '111222333'),
(28, 28, 'Izabela', 'Sobczak', '444555666'),
(29, 29, 'Grzegorz', 'Baran', '777888999'),
(30, 30, 'Patrycja', 'Tomaszewska', '111222333'),
(31, 31, 'Wojciech', 'Błaszczyk', '444555666'),
(32, 32, 'Aleksandra', 'Głowacka', '777888999'),
(33, 33, 'Rafał', 'Urban', '111222333'),
(34, 34, 'Marta', 'Duda', '444555666'),
(35, 35, 'Kacper', 'Czajkowski', '777888999'),
(36, 1, 'Anna', 'Nowak', '123452789'),
(37, 12, 'Marcin', 'Jankowski', '176468974');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezyserzy`
--

CREATE TABLE `rezyserzy` (
  `ID_Rezysera` int(4) NOT NULL,
  `Imie` varchar(30) DEFAULT NULL,
  `Nazwisko` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `rezyserzy`
--

INSERT INTO `rezyserzy` (`ID_Rezysera`, `Imie`, `Nazwisko`) VALUES
(301, 'Christopher', 'Nolan'),
(302, 'Martin', 'Scorsese'),
(303, 'Steven', 'Spielberg'),
(304, 'Quentin', 'Tarantino'),
(305, 'David', 'Fincher'),
(306, 'Alfred', 'Hitchcock'),
(307, 'Francis Ford', 'Coppola'),
(308, 'Spike', 'Lee'),
(309, 'Joel', 'Coen'),
(310, 'James', 'Cameron'),
(311, 'Tim', 'Burton'),
(312, 'Ridley', 'Scott'),
(313, 'Wes', 'Anderson'),
(314, 'Peter', 'Jackson'),
(315, 'Stanley', 'Kubrick'),
(316, 'Ethan', 'Coen');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

CREATE TABLE `wypozyczenia` (
  `ID_Wypozyczenia` int(5) NOT NULL,
  `ID_Egzemplarza` int(6) DEFAULT NULL,
  `ID_Klienta` int(4) DEFAULT NULL,
  `Data_Wypozyczenia` date DEFAULT NULL,
  `Data_Zwrotu` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `wypozyczenia`
--

INSERT INTO `wypozyczenia` (`ID_Wypozyczenia`, `ID_Egzemplarza`, `ID_Klienta`, `Data_Wypozyczenia`, `Data_Zwrotu`) VALUES
(1, 3, 1, '2023-01-15', NULL),
(2, 6, 2, '2023-02-20', '2023-03-05'),
(3, 9, 3, '2023-03-10', NULL),
(4, 12, 4, '2023-04-18', '2023-05-02'),
(5, 15, 5, '2023-05-25', NULL),
(6, 18, 6, '2023-06-03', '2023-06-15'),
(7, 21, 7, '2023-07-12', NULL),
(8, 24, 8, '2023-08-18', '2023-09-02'),
(9, 27, 9, '2023-09-22', NULL),
(10, 30, 10, '2023-10-05', '2023-10-20'),
(11, 33, 11, '2023-11-15', NULL),
(12, 36, 12, '2023-12-01', '2023-12-15'),
(13, 39, 13, '2024-01-10', NULL),
(14, 42, 14, '2024-02-08', '2024-02-22'),
(15, 45, 15, '2024-03-15', NULL),
(16, 48, 1, '2024-04-01', NULL),
(17, 47, 2, '2024-04-15', '2024-04-30'),
(18, 46, 3, '2024-05-02', NULL),
(19, 45, 4, '2024-05-20', '2024-06-05'),
(20, 44, 5, '2024-06-10', NULL),
(21, 43, 6, '2024-07-01', '2024-07-15'),
(22, 42, 7, '2024-08-05', NULL),
(23, 41, 8, '2024-08-20', '2024-09-05'),
(24, 40, 9, '2024-09-10', NULL),
(25, 39, 10, '2024-10-01', '2024-10-15'),
(26, 38, 11, '2024-11-05', NULL),
(27, 37, 12, '2024-11-20', '2024-12-05'),
(28, 36, 13, '2024-12-10', NULL),
(29, 35, 14, '2025-01-02', '2025-01-15'),
(30, 34, 15, '2025-01-20', NULL),
(31, 33, 1, '2025-02-01', NULL),
(32, 32, 2, '2025-02-15', '2025-02-28'),
(33, 31, 3, '2025-03-05', NULL),
(34, 30, 4, '2025-03-20', '2025-04-05'),
(35, 29, 5, '2025-04-10', NULL),
(36, 28, 6, '2025-05-01', '2025-05-15'),
(37, 27, 7, '2025-06-05', NULL),
(38, 26, 8, '2025-06-20', '2025-07-05'),
(39, 25, 9, '2025-07-10', NULL),
(40, 24, 10, '2025-08-01', '2025-08-15');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `adresy`
--
ALTER TABLE `adresy`
  ADD PRIMARY KEY (`ID_Adresu`);

--
-- Indeksy dla tabeli `egzemplarze`
--
ALTER TABLE `egzemplarze`
  ADD PRIMARY KEY (`ID_Egzemplarza`),
  ADD KEY `ID_Filmu` (`ID_Filmu`);

--
-- Indeksy dla tabeli `filmy`
--
ALTER TABLE `filmy`
  ADD PRIMARY KEY (`ID_Filmu`);

--
-- Indeksy dla tabeli `filmy_rezyserzy`
--
ALTER TABLE `filmy_rezyserzy`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Rezysera` (`ID_Rezysera`),
  ADD KEY `ID_Filmu` (`ID_Filmu`);

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`ID_Klienta`),
  ADD KEY `ID_Adresu` (`ID_Adresu`);

--
-- Indeksy dla tabeli `rezyserzy`
--
ALTER TABLE `rezyserzy`
  ADD PRIMARY KEY (`ID_Rezysera`);

--
-- Indeksy dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD PRIMARY KEY (`ID_Wypozyczenia`),
  ADD KEY `ID_Klienta` (`ID_Klienta`),
  ADD KEY `ID_Filmu` (`ID_Egzemplarza`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `egzemplarze`
--
ALTER TABLE `egzemplarze`
  ADD CONSTRAINT `egzemplarze_ibfk_1` FOREIGN KEY (`ID_Filmu`) REFERENCES `filmy` (`ID_Filmu`);

--
-- Constraints for table `filmy_rezyserzy`
--
ALTER TABLE `filmy_rezyserzy`
  ADD CONSTRAINT `filmy_rezyserzy_ibfk_1` FOREIGN KEY (`ID_Rezysera`) REFERENCES `rezyserzy` (`ID_Rezysera`),
  ADD CONSTRAINT `filmy_rezyserzy_ibfk_2` FOREIGN KEY (`ID_Filmu`) REFERENCES `filmy` (`ID_Filmu`);

--
-- Constraints for table `klienci`
--
ALTER TABLE `klienci`
  ADD CONSTRAINT `klienci_ibfk_1` FOREIGN KEY (`ID_Adresu`) REFERENCES `adresy` (`ID_Adresu`);

--
-- Constraints for table `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD CONSTRAINT `wypozyczenia_ibfk_1` FOREIGN KEY (`ID_Klienta`) REFERENCES `klienci` (`ID_Klienta`),
  ADD CONSTRAINT `wypozyczenia_ibfk_3` FOREIGN KEY (`ID_Egzemplarza`) REFERENCES `egzemplarze` (`ID_Egzemplarza`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
