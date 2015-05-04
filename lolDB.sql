-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2015 at 02:01 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lol`
--

-- --------------------------------------------------------

--
-- Table structure for table `boots`
--

CREATE TABLE IF NOT EXISTS `boots` (
`id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boots`
--

INSERT INTO `boots` (`id`, `name`, `image`) VALUES
(1, 'Berserker''s Greaves', 'Berserkers_Greaves_item.png'),
(2, 'Boots of Mobility', 'Boots_of_Mobility_item.png'),
(3, 'Boots of Swiftness', 'Boots_of_Swiftness_item.png'),
(4, 'Ionian Boots of Lucidity', 'Ionian_Boots_of_Lucidity_item.png'),
(5, 'Mercury''s Treads', 'Mercurys_Treads_item.png'),
(6, 'Ninja Tabi', 'Ninja_Tabi_item.png');

-- --------------------------------------------------------

--
-- Table structure for table `champions`
--

CREATE TABLE IF NOT EXISTS `champions` (
`id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `champions`
--

INSERT INTO `champions` (`id`, `name`, `image`) VALUES
(1, 'Aatrox', 'Aatrox.png'),
(2, 'Ahri', 'Ahri.png'),
(3, 'Akali', 'Akali.png'),
(4, 'Alistar', 'Alistar.png'),
(5, 'Amumu', 'Amumu.png'),
(6, 'Anivia', 'Anivia.png'),
(7, 'Annie', 'Annie.png'),
(8, 'Ashe', 'Ashe.png'),
(9, 'Azir', 'Azir.png'),
(10, 'Bard', 'Bard.png'),
(11, 'Blitzcrank', 'Blitzcrank.png'),
(12, 'Brand', 'Brand.png'),
(13, 'Braum', 'Braum.png'),
(14, 'Caitlyn', 'Caitlyn.png'),
(15, 'Cassiopeia', 'Cassiopeia.png'),
(16, 'Chogath', 'Chogath.png'),
(17, 'Corki', 'Corki.png'),
(18, 'Darius', 'Darius.png'),
(19, 'Diana', 'Diana.png'),
(20, 'Draven', 'Draven.png'),
(21, 'Dr. Mundo', 'DrMundo.png'),
(22, 'Elise', 'Elise.png'),
(23, 'Evelynn', 'Evelynn.png'),
(24, 'Ezreal', 'Ezreal.png'),
(25, 'Fiddlesticks', 'FiddleSticks.png'),
(26, 'Fiora', 'Fiora.png'),
(27, 'Fizz', 'Fizz.png'),
(28, 'Galio', 'Galio.png'),
(29, 'Gangplank', 'Gangplank.png'),
(30, 'Garen', 'Garen.png'),
(31, 'Gnar', 'Gnar.png'),
(32, 'Gragas', 'Gragas.png'),
(33, 'Graves', 'Graves.png'),
(34, 'Hecarim', 'Hecarim.png'),
(35, 'Heimerdinger', 'Heimerdinger.png'),
(36, 'Irelia', 'Irelia.png'),
(37, 'Janna', 'Janna.png'),
(38, 'Jarvan IV', 'JarvanIV.png'),
(39, 'Jax', 'Jax.png'),
(40, 'Jayce', 'Jayce.png'),
(41, 'Jinx', 'Jinx.png'),
(42, 'Kalista', 'Kalista.png'),
(43, 'Karma', 'Karma.png'),
(44, 'Karthus', 'Karthus.png'),
(45, 'Kassadin', 'Kassadin.png'),
(46, 'Katarina', 'Katarina.png'),
(47, 'Kayle', 'Kayle.png'),
(48, 'Kennen', 'Kennen.png'),
(49, 'Kha''Zix', 'Khazix.png'),
(50, 'Kog''Maw', 'KogMaw.png'),
(51, 'Leblanc', 'Leblanc.png'),
(52, 'Lee Sin', 'LeeSin.png'),
(53, 'Leona', 'Leona.png'),
(54, 'Lissandra', 'Lissandra.png'),
(55, 'Lucian', 'Lucian.png'),
(56, 'Lulu', 'Lulu.png'),
(57, 'Lux', 'Lux.png'),
(58, 'Malphite', 'Malphite.png'),
(59, 'Malzahar', 'Malzahar.png'),
(60, 'Maokai', 'Maokai.png'),
(61, 'Master Yi', 'MasterYi.png'),
(62, 'Miss Fortune', 'MissFortune.png'),
(63, 'Wukong', 'MonkeyKing.png'),
(64, 'Mordekaiser', 'Mordekaiser.png'),
(65, 'Morgana', 'Morgana.png'),
(66, 'Nami', 'Nami.png'),
(67, 'Nasus', 'Nasus.png'),
(68, 'Nautilus', 'Nautilus.png'),
(69, 'Nidalee', 'Nidalee.png'),
(70, 'Nocturne', 'Nocturne.png'),
(71, 'Nunu', 'Nunu.png'),
(72, 'Olaf', 'Olaf.png'),
(73, 'Orianna', 'Orianna.png'),
(74, 'Pantheon', 'Pantheon.png'),
(75, 'Poppy', 'Poppy.png'),
(76, 'Quinn', 'Quinn.png'),
(77, 'Rammus', 'Rammus.png'),
(78, 'Rek''Sai', 'RekSai.png'),
(79, 'Renekton', 'Renekton.png'),
(80, 'Rengar', 'Rengar.png'),
(81, 'Riven', 'Riven.png'),
(82, 'Rumble', 'Rumble.png'),
(83, 'Ryze', 'Ryze.png'),
(84, 'Sejuani', 'Sejuani.png'),
(85, 'Shaco', 'Shaco.png'),
(86, 'Shen', 'Shen.png'),
(87, 'Shyvana', 'Shyvana.png'),
(88, 'Singed', 'Singed.png'),
(89, 'Sion', 'Sion.png'),
(90, 'Sivir', 'Sivir.png'),
(91, 'Skarner', 'Skarner.png'),
(92, 'Sona', 'Sona.png'),
(93, 'Soraka', 'Soraka.png'),
(94, 'Swain', 'Swain.png'),
(95, 'Syndra', 'Syndra.png'),
(96, 'Talon', 'Talon.png'),
(97, 'Taric', 'Taric.png'),
(98, 'Teemo', 'Teemo.png'),
(99, 'Thresh', 'Thresh.png'),
(100, 'Tristana', 'Tristana.png'),
(101, 'Trundle', 'Trundle.png'),
(102, 'Tryndamere', 'Tryndamere.png'),
(103, 'Twisted Fate', 'TwistedFate.png'),
(104, 'Twitch', 'Twitch.png'),
(105, 'Udyr', 'Udyr.png'),
(106, 'Urgot', 'Urgot.png'),
(107, 'Varus', 'Varus.png'),
(108, 'Vayne', 'Vayne.png'),
(109, 'Veigar', 'Veigar.png'),
(110, 'Vel''Koz', 'Velkoz.png'),
(111, 'Vi', 'Vi.png'),
(112, 'Viktor', 'Viktor.png'),
(113, 'Vladimir', 'Vladimir.png'),
(114, 'Volibear', 'Volibear.png'),
(115, 'Warwick', 'Warwick.png'),
(116, 'Xerath', 'Xerath.png'),
(117, 'Xin Zhao', 'XinZhao.png'),
(118, 'Yasuo', 'Yasuo.png'),
(119, 'Yorick', 'Yorick.png'),
(120, 'Zac', 'Zac.png'),
(121, 'Zed', 'Zed.png'),
(122, 'Ziggs', 'Ziggs.png'),
(123, 'Zilean', 'Zilean.png'),
(124, 'Zyra', 'Zyra.png');

-- --------------------------------------------------------

--
-- Table structure for table `enchantments`
--

CREATE TABLE IF NOT EXISTS `enchantments` (
`id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enchantments`
--

INSERT INTO `enchantments` (`id`, `name`, `image`) VALUES
(1, 'Alacrity', 'Alacrity_item.png'),
(2, 'Captain', 'Captain_item.png'),
(3, 'Distortion', 'Distortion_item.png'),
(4, 'Furor', 'Furor_item.png'),
(5, 'Homeguard', 'Homeguard_item.png');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
`id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `image` varchar(40) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `image`) VALUES
(1, 'Abyssal Scepter', 'Abyssal_Scepter_item.png'),
(2, 'Archangel''s Staff', 'Archangels_Staff_item.png'),
(3, 'Ardent Censer', 'Ardent_Censer_item.png'),
(4, 'Athene''s Unholy Grail', 'Athenes_Unholy_Grail_item.png'),
(5, 'Banner of Command', 'Banner_of_Command_item.png'),
(6, 'Banshee''s Veil', 'Banshees_Veil_item.png'),
(7, 'Blade of the Ruined King', 'Blade_of_the_Ruined_King_item.png'),
(8, 'Essence Reaver', 'Essence_Reaver_item.png'),
(9, 'Face of the Mountain', 'Face_of_the_Mountain_item.png'),
(10, 'Frost Queen''s Claim', 'Frost_Queens_Claim_item.png'),
(11, 'Frozen Heart', 'Frozen_Heart_item.png'),
(12, 'Frozen Mallet', 'Frozen_Mallet_item.png'),
(13, 'Guardian Angel', 'Guardian_Angel_item.png'),
(14, 'Guinsoo''s Rageblade', 'Guinsoos_Rageblade_item.png'),
(15, 'Hextech Gunblade', 'Hextech_Gunblade_item.png'),
(16, 'Iceborn Gauntlet', 'Iceborn_Gauntlet_item.png'),
(17, 'Infinity Edge', 'Infinity_Edge_item.png'),
(18, 'Last Whisper', 'Last_Whisper_item.png'),
(19, 'Liandry''s Torment', 'Liandrys_Torment_item.png'),
(20, 'Lich Bane', 'Lich_Bane_item.png'),
(21, 'Locket of the Iron Solari', 'Locket_of_the_Iron_Solari_item.png'),
(22, 'Luden''s Echo', 'Ludens_Echo_item.png'),
(23, 'Maw of Malmortius', 'Maw_of_Malmortius_item.png'),
(24, 'Mejai''s Soulstealer', 'Mejais_Soulstealer_item.png'),
(25, 'Mercurial Scimitar', 'Mercurial_Scimitar_item.png'),
(26, 'Mikael''s Crucible', 'Mikaels_Crucible_item.png'),
(27, 'Morellonomicon', 'Morellonomicon_item.png'),
(28, 'Nashor''s Tooth', 'Nashors_Tooth_item.png'),
(29, 'Ohmwrecker', 'Ohmwrecker_item.png'),
(30, 'Phantom Dancer', 'Phantom_Dancer_item.png'),
(31, 'Rabadon''s Deathcap', 'Rabadons_Deathcap_item.png'),
(32, 'Randuin''s Omen', 'Randuins_Omen_item.png'),
(33, 'Ravenous Hydra', 'Ravenous_Hydra_item.png'),
(34, 'Righteous Glory', 'Righteous_Glory_item.png'),
(35, 'Rod of Ages', 'Rod_of_Ages_item.png'),
(36, 'Ruby Sightstone', 'Ruby_Sightstone_item.png'),
(37, 'Runaan''s Hurricane', 'Runaans_Hurricane_item.png'),
(38, 'Rylai''s Crystal Scepter', 'Rylais_Crystal_Scepter_item.png'),
(39, 'Spirit Visage', 'Spirit_Visage_item.png'),
(40, 'Statikk Shiv', 'Statikk_Shiv_item.png'),
(41, 'Sunfire Cape', 'Sunfire_Cape_item.png'),
(42, 'Sword of the Occult', 'Sword_of_the_Occult_item.png'),
(43, 'Talisman of Ascension', 'Talisman_of_Ascension_item.png'),
(44, 'The Black Cleaver', 'The_Black_Cleaver_item.png'),
(45, 'The Bloodthirster', 'The_Bloodthirster_item.png'),
(46, 'Thornmail', 'Thornmail_item.png'),
(47, 'Trinity Force', 'Trinity_Force_item.png'),
(48, 'Twin Shadows', 'Twin_Shadows_item.png'),
(49, 'Void Staff', 'Void_Staff_item.png'),
(50, 'Warmog''s Armor', 'Warmogs_Armor_item.png'),
(51, 'Will of the Ancients', 'Will_of_the_Ancients_item.png'),
(52, 'Wit''s End', 'Wits_End_item.png'),
(53, 'Youmuu''s Ghostblade', 'Youmuus_Ghostblade_item.png'),
(54, 'Zeke''s Herald', 'Zekes_Herald_item.png'),
(55, 'Zephyr', 'Zephyr_item.png'),
(56, 'Zhonya''s Hourglass', 'Zhonyas_Hourglass_item.png'),
(57, 'Zz''Rot Portal', 'ZzRot_Portal_item.png');

-- --------------------------------------------------------

--
-- Table structure for table `spells`
--

CREATE TABLE IF NOT EXISTS `spells` (
`id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spells`
--

INSERT INTO `spells` (`id`, `name`, `image`) VALUES
(1, 'Smite', 'Smite.png'),
(2, 'Teleport', 'Teleport.png'),
(3, 'Barrier', 'Barrier.png'),
(4, 'Clairvoyance', 'Clairvoyance.png'),
(5, 'Clarity', 'Clarity.png'),
(6, 'Cleanse', 'Cleanse.png'),
(7, 'Exhaust', 'Exhaust.png'),
(8, 'Flash', 'Flash.png'),
(9, 'Ghost', 'Ghost.png'),
(10, 'Heal', 'Heal.png'),
(11, 'Ignite', 'Ignite.png');

-- --------------------------------------------------------

--
-- Table structure for table `trinkets`
--

CREATE TABLE IF NOT EXISTS `trinkets` (
`id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trinkets`
--

INSERT INTO `trinkets` (`id`, `name`, `image`) VALUES
(1, 'Farsight Orb', 'Farsight_Orb_item.jpg'),
(2, 'Greater Stealth Totem', 'Greater_Stealth_Totem_item.jpg'),
(3, 'Greater Vision Totem', 'Greater_Vision_Totem_item.jpg'),
(4, 'Oracle''s Lens', 'Oracles_Lens_item.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boots`
--
ALTER TABLE `boots`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `champions`
--
ALTER TABLE `champions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enchantments`
--
ALTER TABLE `enchantments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spells`
--
ALTER TABLE `spells`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trinkets`
--
ALTER TABLE `trinkets`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boots`
--
ALTER TABLE `boots`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `champions`
--
ALTER TABLE `champions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `enchantments`
--
ALTER TABLE `enchantments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `spells`
--
ALTER TABLE `spells`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `trinkets`
--
ALTER TABLE `trinkets`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
