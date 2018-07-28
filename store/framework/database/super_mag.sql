-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2018 at 09:14 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `super_mag`
--
CREATE DATABASE IF NOT EXISTS `super_mag` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `super_mag`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(1, 'Брюки', 0, 1),
(2, 'Рубашки', 1, 1),
(3, 'Носки', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `price` float NOT NULL,
  `availability` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `is_recomended` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `code`, `price`, `availability`, `brand`, `image`, `description`, `is_new`, `is_recomended`, `status`) VALUES
(1, 'Polo shirt', 1, 123123, 334, 1, 'Marco', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 0, 0, 1),
(2, 'Foots', 1, 123123, 34, 1, 'Adidas', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 1, 1, 1),
(3, 'Trowses', 2, 1343453, 124, 1, 'Jeansa', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 0, 0, 1),
(4, 'Trowses', 3, 4545543, 65, 1, 'Colins', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 0, 1, 1),
(5, 'Shirt2', 2, 4534, 87, 1, 'Tusa', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 1, 0, 1),
(6, 'SportShoes', 3, 45343, 99.09, 1, 'Reebok', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 0, 0, 1),
(7, 'Tshirt', 1, 456456, 10.6, 0, 'Polo', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 1, 0, 1),
(8, 'Polo shirt', 1, 123111, 334, 1, 'Marco', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 0, 0, 1),
(9, 'SportShoes', 3, 45343, 99.09, 1, 'Reebok', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 0, 0, 1),
(10, 'Shirt2', 2, 4534, 87, 1, 'Tusa', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 1, 0, 1),
(11, 'SportShoes', 3, 45343, 99.09, 1, 'Reebok', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 0, 0, 1),
(12, 'SportShoes', 3, 45343, 99.09, 1, 'Reebok', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 0, 0, 1),
(13, 'Polo shirt', 1, 123111, 334, 1, 'Marco', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 0, 0, 1),
(14, 'Shirt2', 2, 4534, 87, 1, 'Tusa', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 1, 0, 1),
(15, 'Polo shirt', 1, 123111, 334, 1, 'Marco', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 0, 0, 1),
(16, 'Shirt2', 2, 4534, 87, 1, 'Tusa', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 1, 0, 1),
(17, 'SportShoes', 3, 45343, 99.09, 1, 'Reebok', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 0, 0, 1),
(18, 'Polo shirt', 1, 123111, 334, 1, 'Marco', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 0, 0, 1),
(19, 'Shirt2', 2, 4534, 87, 1, 'Tusa', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 1, 0, 1),
(20, 'SportShoes', 3, 45343, 99.09, 1, 'Reebok', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 0, 0, 1),
(21, 'Polo shirt', 1, 123111, 334, 1, 'Marco', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 0, 0, 1),
(22, 'Shirt2', 2, 4534, 87, 1, 'Tusa', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 1, 0, 1),
(23, 'SportShoes', 3, 45343, 99.09, 1, 'Reebok', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 0, 0, 1),
(24, 'Polo shirt', 1, 123111, 334, 1, 'Marco', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 0, 0, 1),
(25, 'Polo shirt', 1, 123111, 334, 1, 'Marco', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 0, 0, 1),
(26, 'Shirt2', 2, 4534, 87, 1, 'Tusa', '', 'Mentitum a singulis, tempor non varias ab de summis probant, summis officia non \r\nphilosophari. In labore illustriora ita senserit aute e nostrud comprehenderit, \r\nlaboris do sint, legam efflorescere possumus culpa singulis. Incurreret te \r\nnescius in esse est ne quorum incididunt. Nescius multos veniam expetendis \r\nillum, proident elit laboris a est te amet labore illum, ea minim do velit quo \r\nsint quo consequat, ne noster ex culpa, iis dolor an cillum sed laboris multos \r\neiusmod. Iis o distinguantur. Ab quid veniam aute probant, deserunt non illum \r\nlaborum ita offendit tamen officia excepteur et incurreret sunt appellat \r\nfabulas, te eram aliquip mentitum, se iis malis eram magna, do eram varias ubi \r\nquibusdam, malis mentitum voluptatibus. In lorem efflorescere a ut est sint \r\npariatur. Tempor an aute incididunt, eiusmod nisi summis id legam.', 1, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
