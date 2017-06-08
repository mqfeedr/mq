-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2017 at 10:10 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mqfeedr`
--

-- --------------------------------------------------------

--
-- Table structure for table `burger`
--

CREATE TABLE IF NOT EXISTS `burger` (
  `restaurant_id` int(10) NOT NULL,
  `food_id` int(10) NOT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `burger`
--

INSERT INTO `burger` (`restaurant_id`, `food_id`) VALUES
(3, 30),
(3, 31),
(3, 32),
(3, 33),
(3, 34),
(3, 35);

-- --------------------------------------------------------

--
-- Table structure for table `burger_desc`
--

CREATE TABLE IF NOT EXISTS `burger_desc` (
  `food_id` int(10) NOT NULL,
  `food_name` varchar(50) NOT NULL,
  `food_desc` varchar(300) NOT NULL,
  `food_price` float NOT NULL,
  UNIQUE KEY `food_id` (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `burger_desc`
--

INSERT INTO `burger_desc` (`food_id`, `food_name`, `food_desc`, `food_price`) VALUES
(30, 'MAGIC MUSHROOM', 'Crumbed confit mushroom, cheese, onion, pickles, tomato, lettuce & secret sauce', 11.9),
(31, 'FRIED CHICKEN & BACON KATSU', 'Free range chicken, smoked bacon, coleslaw, pickles, lettuce & katsu sauce', 13.9),
(32, 'AUSSIE BEEF BURGER', 'Grass fed beef, beetroot, cheese, onion, pickles, tomato, lettuce & secret sauce', 12.5),
(33, 'LARGE CHIPS', 'Salt, Chipotle chilli salt or Sichuan pepper salt', 5.9),
(34, 'THICK SHAKES', 'Vanilla, Valrhona chocolate, coffee, salted caramel & strawberry', 7.5),
(35, 'FEAST FOR 4', '4 burgers, 2 large chips', 55);

-- --------------------------------------------------------

--
-- Table structure for table `greek`
--

CREATE TABLE IF NOT EXISTS `greek` (
  `restaurant_id` int(10) NOT NULL,
  `food_id` int(10) NOT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `greek`
--

INSERT INTO `greek` (`restaurant_id`, `food_id`) VALUES
(4, 40),
(4, 41),
(4, 42),
(4, 43),
(4, 44);

-- --------------------------------------------------------

--
-- Table structure for table `greek_desc`
--

CREATE TABLE IF NOT EXISTS `greek_desc` (
  `food_id` int(10) NOT NULL,
  `food_name` varchar(50) NOT NULL,
  `food_desc` varchar(300) NOT NULL,
  `food_price` float NOT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `greek_desc`
--

INSERT INTO `greek_desc` (`food_id`, `food_name`, `food_desc`, `food_price`) VALUES
(40, 'MOUSAKA', 'Traditional oven baked layered potato, eggplant, lamb mince and bechamel', 28),
(41, 'TZATZIKI', 'Yogurt, cucumber and garlic dip (GF) (DIPS SERVED WITH WARM PITA BREAD)', 9),
(42, 'MEDUSA GREEK SALAD', 'Traditional Greek salad of tomato, cucumber, capsicum, spanish onions, fetta, olives and wild oregano (GF)', 16),
(43, 'XIFIAS SOUVLAKI', 'Swordfish and prawn skewers, chargrilled with lime, chilli and honey sauce (GF)', 35),
(44, 'LOUKOUMADES', 'Delicious and moreish dough puffs, smothered in honey and walnuts', 10);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `mail` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  PRIMARY KEY (`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pizza_desc`
--

CREATE TABLE IF NOT EXISTS `pizza_desc` (
  `food_id` int(10) NOT NULL,
  `food_name` varchar(50) NOT NULL,
  `food_desc` varchar(300) NOT NULL,
  `food_price` float NOT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pizza_desc`
--

INSERT INTO `pizza_desc` (`food_id`, `food_name`, `food_desc`, `food_price`) VALUES
(10, 'Americano', 'Traditional Italian pepperoni, roma tomatoes, chopped green chilli, chopped red chilli & Italian buffalo mozzarell.', 25.95),
(11, 'Peri Peri Chicken', 'Marinated grilled chicken breast, roasted capsicum, Spanish onion, roma tomatoes, bocconcini & rocket with our spicy Peri Peri sauce served with a side of chilli', 26.95),
(12, 'The true vegetarian', 'Goats curd base, spinach, mushrooms, roasted pumpkin, balsamic onions, roma tomatoes, kalamata olives, roasted pinenuts, shaved parmesan, *pesto, parmesan sauce & balsamic glaze (NB Vegetarian no parmesan)', 24.95),
(13, 'Grilled Chicken Tandoori', 'Marinated Tandoori chicken breast, cucumber, roma tomatoes finished with mango chutney & our classic cucumber yoghurt dressing..', 25.95),
(14, 'Mediterranean', 'Basil, spinach, mushrooms, Spanish onion, olives, fetta, roast capsicum & oregano topped with sundried tomatoes.', 24.95);

-- --------------------------------------------------------

--
-- Table structure for table `pizza_place`
--

CREATE TABLE IF NOT EXISTS `pizza_place` (
  `restaurant_id` int(10) NOT NULL,
  `food_id` int(10) NOT NULL,
  PRIMARY KEY (`restaurant_id`,`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pizza_place`
--

INSERT INTO `pizza_place` (`restaurant_id`, `food_id`) VALUES
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `name` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `number` int(15) NOT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE IF NOT EXISTS `restaurant` (
  `restaurant_id` int(10) NOT NULL DEFAULT '0',
  `restaurant_name` varchar(50) NOT NULL,
  PRIMARY KEY (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_detail`
--

CREATE TABLE IF NOT EXISTS `restaurant_detail` (
  `restaurant_id` int(10) NOT NULL,
  `restaurant_name` varchar(50) NOT NULL,
  `restaurant_address` varchar(50) NOT NULL,
  `restaurant_phone` int(15) NOT NULL,
  PRIMARY KEY (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_detail`
--

INSERT INTO `restaurant_detail` (`restaurant_id`, `restaurant_name`, `restaurant_address`, `restaurant_phone`) VALUES
(1, 'Pizza Place', '92 Herring Road, Marsfield', 405040504),
(2, 'Trendy Thai', '100 Culloden Road, Marsfield', 407040704),
(3, 'Burger N Chill', '80 Balacalava Road, Marsfield', 404050504),
(4, 'Greek Wonder', '20 Epping Road, Marsfield', 404040505),
(5, 'Steak House', '8, Waterloo Road', 406060405);

-- --------------------------------------------------------

--
-- Table structure for table `steak`
--

CREATE TABLE IF NOT EXISTS `steak` (
  `restaurant_id` int(10) NOT NULL,
  `food_id` int(10) NOT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `steak`
--

INSERT INTO `steak` (`restaurant_id`, `food_id`) VALUES
(5, 50),
(5, 51),
(5, 52),
(5, 53),
(5, 54);

-- --------------------------------------------------------

--
-- Table structure for table `steak_desc`
--

CREATE TABLE IF NOT EXISTS `steak_desc` (
  `food_id` int(10) NOT NULL,
  `food_name` varchar(50) NOT NULL,
  `food_desc` varchar(300) NOT NULL,
  `food_price` float NOT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `steak_desc`
--

INSERT INTO `steak_desc` (`food_id`, `food_name`, `food_desc`, `food_price`) VALUES
(50, 'T-BONE 300g *', 'This well-marbled cut consists of two lean, tender steaks ADD TO CART', 25),
(51, 'LEMON-PEPPERED CALAMARI', 'House-made tomato relish, lime aioli', 20),
(52, 'RIB EYE 350g *', 'This boneless steak is rich, tender, juicy and full-flavored, with generous marbling throughout', 38),
(53, 'GRILLED boneless ½ CHICKEN', 'Boneless breast of chicken, marinated with a special blend of seasonings and grilled for a tender grilled taste.', 25),
(54, 'STICKY MEDJOOL DATE PUDDING', 'Rich but light fluffy pudding served with vanilla bean icecream, butter toffee sauce', 15);

-- --------------------------------------------------------

--
-- Table structure for table `thai_desc`
--

CREATE TABLE IF NOT EXISTS `thai_desc` (
  `food_id` int(10) NOT NULL,
  `food_name` varchar(50) NOT NULL,
  `food_desc` varchar(300) NOT NULL,
  `food_price` float NOT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thai_desc`
--

INSERT INTO `thai_desc` (`food_id`, `food_name`, `food_desc`, `food_price`) VALUES
(20, 'Thai Chicken Spring Rolls (4 pcs)', 'Chicken | Vermicelli | Black mushrooms | Plum sauce', 12),
(21, 'Tom Yum Prawn Soup', 'Galangal | Lemon grass | Kaffir lime leaf | Mushrooms', 15),
(22, 'Chicken Satay (4 pcs)', 'Grilled skewered chicken | Peanut sauce', 14),
(23, 'Three Flavoured Tofu ', 'Deep fried | Bean curd | Spicy sweet sour sauce | Peanuts..', 11),
(24, 'Vegetable Coconut Soup', 'Coconut soup | Vegetables | Galangal | Mushrooms ADD TO CART', 10);

-- --------------------------------------------------------

--
-- Table structure for table `trendy_thai`
--

CREATE TABLE IF NOT EXISTS `trendy_thai` (
  `restaurant_id` int(10) NOT NULL,
  `food_id` int(10) NOT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trendy_thai`
--

INSERT INTO `trendy_thai` (`restaurant_id`, `food_id`) VALUES
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
