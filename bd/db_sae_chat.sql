-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 18, 2018 at 12:51 PM
-- Server version: 5.5.59-0+deb8u1
-- PHP Version: 5.6.33-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_sae_chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `tab_sae_chat_amigos`
--

CREATE TABLE IF NOT EXISTS `tab_sae_chat_amigos` (
  `Id_SAE_Usu_SAE_Chat_Usu` int(10) NOT NULL,
  `Id_SAE_Usu_SAE_Chat_Ami` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tab_sae_chat_conversaciones`
--

CREATE TABLE IF NOT EXISTS `tab_sae_chat_conversaciones` (
  `Id_SAE_Conv` varchar(10) NOT NULL,
  `Id_SAE_Usu_SAE_Conv` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tab_sae_chat_mensajes`
--

CREATE TABLE IF NOT EXISTS `tab_sae_chat_mensajes` (
  `Id_SAE_Chat_Conv_SAE_Chat_Mensaje` varchar(10) NOT NULL,
  `Id_SAE_Usu_SAE_Chat_Mens_Usu` int(10) NOT NULL,
  `Id_SAE_Usu_SAE_Chat_Ami` int(10) NOT NULL,
  `Estado_SAE_Chat_Mens` char(1) NOT NULL,
  `Texto_SAE_Chat_Mens` varchar(200) NOT NULL,
  `FechaHora_SAE_Chat_Mens` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tab_sae_persona`
--

CREATE TABLE IF NOT EXISTS `tab_sae_persona` (
`Id_SAE_Per` int(10) NOT NULL,
  `Nombre_SAE_Per` varchar(60) NOT NULL,
  `Apellido1_SAE_Per` varchar(50) NOT NULL,
  `Apellido2_SAE_Per` varchar(50) NOT NULL,
  `Genero_SAE_Per` char(1) NOT NULL,
  `Foto_SAE_Per` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1000000002 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_sae_persona`
--

INSERT INTO `tab_sae_persona` (`Id_SAE_Per`, `Nombre_SAE_Per`, `Apellido1_SAE_Per`, `Apellido2_SAE_Per`, `Genero_SAE_Per`, `Foto_SAE_Per`) VALUES
(1000000000, 'Marco', 'Rojas', 'Maroto', 'H', NULL),
(1000000001, 'Kristopher', 'Barrot', 'Diaz', 'H', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tab_sae_usuarios`
--

CREATE TABLE IF NOT EXISTS `tab_sae_usuarios` (
  `Id_SAE_Per_SAE_Usu` int(10) NOT NULL,
  `Estado_Conexion_SAE_Usu` tinyint(1) NOT NULL,
  `Fecha_Hora_Conexion_SAE_Usu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_sae_usuarios`
--

INSERT INTO `tab_sae_usuarios` (`Id_SAE_Per_SAE_Usu`, `Estado_Conexion_SAE_Usu`, `Fecha_Hora_Conexion_SAE_Usu`) VALUES
(1000000000, 0, '2018-04-18 11:06:59'),
(1000000001, 0, '2018-04-18 11:06:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tab_sae_chat_amigos`
--
ALTER TABLE `tab_sae_chat_amigos`
 ADD KEY `Id_SAE_Usu_SAE_Chat_Usu` (`Id_SAE_Usu_SAE_Chat_Usu`), ADD KEY `Id_SAE_Usu_SAE_Chat_Ami` (`Id_SAE_Usu_SAE_Chat_Ami`);

--
-- Indexes for table `tab_sae_chat_conversaciones`
--
ALTER TABLE `tab_sae_chat_conversaciones`
 ADD PRIMARY KEY (`Id_SAE_Conv`), ADD KEY `Id_SAE_Usu_SAE_Conv` (`Id_SAE_Usu_SAE_Conv`);

--
-- Indexes for table `tab_sae_chat_mensajes`
--
ALTER TABLE `tab_sae_chat_mensajes`
 ADD PRIMARY KEY (`Id_SAE_Chat_Conv_SAE_Chat_Mensaje`), ADD KEY `Id_SAE_Usu_SAE_Chat_Mens_Usu` (`Id_SAE_Usu_SAE_Chat_Mens_Usu`), ADD KEY `Id_SAE_Usu_SAE_Chat_Ami` (`Id_SAE_Usu_SAE_Chat_Ami`);

--
-- Indexes for table `tab_sae_persona`
--
ALTER TABLE `tab_sae_persona`
 ADD PRIMARY KEY (`Id_SAE_Per`);

--
-- Indexes for table `tab_sae_usuarios`
--
ALTER TABLE `tab_sae_usuarios`
 ADD PRIMARY KEY (`Id_SAE_Per_SAE_Usu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tab_sae_persona`
--
ALTER TABLE `tab_sae_persona`
MODIFY `Id_SAE_Per` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1000000002;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tab_sae_chat_amigos`
--
ALTER TABLE `tab_sae_chat_amigos`
ADD CONSTRAINT `tab_sae_chat_amigos_ibfk_2` FOREIGN KEY (`Id_SAE_Usu_SAE_Chat_Ami`) REFERENCES `tab_sae_usuarios` (`Id_SAE_Per_SAE_Usu`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tab_sae_chat_amigos_ibfk_1` FOREIGN KEY (`Id_SAE_Usu_SAE_Chat_Usu`) REFERENCES `tab_sae_usuarios` (`Id_SAE_Per_SAE_Usu`);

--
-- Constraints for table `tab_sae_chat_conversaciones`
--
ALTER TABLE `tab_sae_chat_conversaciones`
ADD CONSTRAINT `tab_sae_chat_conversaciones_ibfk_1` FOREIGN KEY (`Id_SAE_Usu_SAE_Conv`) REFERENCES `tab_sae_usuarios` (`Id_SAE_Per_SAE_Usu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tab_sae_chat_mensajes`
--
ALTER TABLE `tab_sae_chat_mensajes`
ADD CONSTRAINT `tab_sae_chat_mensajes_ibfk_3` FOREIGN KEY (`Id_SAE_Usu_SAE_Chat_Ami`) REFERENCES `tab_sae_chat_amigos` (`Id_SAE_Usu_SAE_Chat_Ami`),
ADD CONSTRAINT `tab_sae_chat_mensajes_ibfk_1` FOREIGN KEY (`Id_SAE_Chat_Conv_SAE_Chat_Mensaje`) REFERENCES `tab_sae_chat_conversaciones` (`Id_SAE_Conv`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tab_sae_chat_mensajes_ibfk_2` FOREIGN KEY (`Id_SAE_Usu_SAE_Chat_Mens_Usu`) REFERENCES `tab_sae_chat_amigos` (`Id_SAE_Usu_SAE_Chat_Usu`);

--
-- Constraints for table `tab_sae_usuarios`
--
ALTER TABLE `tab_sae_usuarios`
ADD CONSTRAINT `tab_sae_usuarios_ibfk_1` FOREIGN KEY (`Id_SAE_Per_SAE_Usu`) REFERENCES `tab_sae_persona` (`Id_SAE_Per`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
