-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2016 at 11:19 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assetmanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `assetos`
--

CREATE TABLE `assetos` (
  `assetOSID` int(11) NOT NULL,
  `assetOSName` varchar(255) NOT NULL,
  `assetOSArch` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assettype`
--

CREATE TABLE `assettype` (
  `assetTypeID` int(11) NOT NULL,
  `assetType` varchar(3) NOT NULL,
  `assetTypeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `localities`
--

CREATE TABLE `localities` (
  `localityID` int(11) NOT NULL,
  `localityName` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mainassetslist`
--

CREATE TABLE `mainassetslist` (
  `assetID` int(11) NOT NULL,
  `assetSiteID` int(3) NOT NULL,
  `assetAvailableLocalitu` varchar(255) NOT NULL,
  `assetCurrentLocality` varchar(2) NOT NULL,
  `assetOSID` int(2) NOT NULL,
  `assetShadowVersion` varchar(4) NOT NULL,
  `assetTicketID` varchar(255) NOT NULL,
  `assetOrderId` int(10) NOT NULL,
  `assetRecordUpdate` datetime NOT NULL,
  `assetConnectionType` varchar(255) NOT NULL,
  `assetContact` varchar(255) NOT NULL,
  `assetCacheVersion` year(4) NOT NULL,
  `assetHostname` varchar(255) NOT NULL,
  `assetIP` varchar(20) NOT NULL,
  `assetLocation` varchar(255) NOT NULL,
  `assetUserName` varchar(255) NOT NULL,
  `assetPassword` varchar(255) NOT NULL,
  `assetComment` varchar(255) NOT NULL,
  `assetInstallDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sitetable`
--

CREATE TABLE `sitetable` (
  `siteID` tinyint(3) NOT NULL,
  `siteName` varchar(255) NOT NULL,
  `siteSprref` varchar(3) NOT NULL,
  `siteCombos` int(3) NOT NULL,
  `siteShadows` int(3) NOT NULL,
  `siteECPs` int(3) NOT NULL,
  `siteECPsInstalled` int(3) NOT NULL,
  `siteShadowsInstalled` int(3) NOT NULL,
  `SiteCombosInstalled` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sitetable`
--

INSERT INTO `sitetable` (`siteID`, `siteName`, `siteSprref`, `siteCombos`, `siteShadows`, `siteECPs`, `siteECPsInstalled`, `siteShadowsInstalled`, `SiteCombosInstalled`) VALUES
(1, 'chugga', 'chu', 1, 1, 1, 1, 1, 1),
(2, 'hoover', 'hoo', 1, 1, 1, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assetos`
--
ALTER TABLE `assetos`
  ADD PRIMARY KEY (`assetOSID`);

--
-- Indexes for table `assettype`
--
ALTER TABLE `assettype`
  ADD PRIMARY KEY (`assetTypeID`);

--
-- Indexes for table `localities`
--
ALTER TABLE `localities`
  ADD PRIMARY KEY (`localityID`);

--
-- Indexes for table `mainassetslist`
--
ALTER TABLE `mainassetslist`
  ADD PRIMARY KEY (`assetID`);

--
-- Indexes for table `sitetable`
--
ALTER TABLE `sitetable`
  ADD PRIMARY KEY (`siteID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assetos`
--
ALTER TABLE `assetos`
  MODIFY `assetOSID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `assettype`
--
ALTER TABLE `assettype`
  MODIFY `assetTypeID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `localities`
--
ALTER TABLE `localities`
  MODIFY `localityID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mainassetslist`
--
ALTER TABLE `mainassetslist`
  MODIFY `assetID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sitetable`
--
ALTER TABLE `sitetable`
  MODIFY `siteID` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
