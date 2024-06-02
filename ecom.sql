-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2024 at 08:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--
CREATE DATABASE IF NOT EXISTS `ecom` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecom`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(18, 'Living Room', 1),
(19, 'Bedroom', 1),
(20, 'Dining Room', 1),
(21, 'Kitchen', 1),
(22, 'Home Office', 1),
(23, 'Outdoor', 1),
(24, 'Storage', 1),
(25, 'Wall Decor', 1),
(26, 'Bathroom', 1),
(27, 'Bar Furniture', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(7, 'Rohit', 'rohitprasad20022@gmail.com', '759526554', 'to good of a website', '2024-05-22 04:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `address_line1` varchar(255) NOT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin_code` varchar(10) NOT NULL,
  `shipping_first_name` varchar(50) DEFAULT NULL,
  `shipping_last_name` varchar(50) DEFAULT NULL,
  `shipping_email` varchar(100) DEFAULT NULL,
  `shipping_mobile_no` varchar(15) DEFAULT NULL,
  `shipping_address_line1` varchar(255) DEFAULT NULL,
  `shipping_address_line2` varchar(255) DEFAULT NULL,
  `shipping_country` varchar(50) DEFAULT NULL,
  `shipping_city` varchar(50) DEFAULT NULL,
  `shipping_state` varchar(50) DEFAULT NULL,
  `shipping_pin_code` varchar(10) DEFAULT NULL,
  `payment_method` varchar(20) NOT NULL,
  `order_total` decimal(10,2) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `first_name`, `last_name`, `email`, `mobile_no`, `address_line1`, `address_line2`, `country`, `city`, `state`, `pin_code`, `shipping_first_name`, `shipping_last_name`, `shipping_email`, `shipping_mobile_no`, `shipping_address_line1`, `shipping_address_line2`, `shipping_country`, `shipping_city`, `shipping_state`, `shipping_pin_code`, `payment_method`, `order_total`, `order_date`, `created_at`) VALUES
(18, 'rohit', 'prasad', 'rohitprasad20022@gmail.com', '4584874898', '547 mg road', '', 'India', 'kolkata', 'mumbai', '700007', 'rohit', 'prasad', 'rohitprasad20022@gmail.com', '4584874898', '547 mg road', '', 'India', 'kolkata', 'mumbai', '700007', 'Cash on Delivery', 243040.00, '2024-05-22 14:09:57', '2024-05-22 14:09:57'),
(19, 'Jeet', 'Majumder', 'jeetmajumder67@gmail.com', '08777730527', '123K,JAIGIR GHAT ROAD,THAKURPUKUR,KOLKATA-700063', '', 'India', 'KOLKATA', 'West Bengal', '700063', 'Jeet', 'Majumder', 'jeetmajumder67@gmail.com', '08777730527', '123K,JAIGIR GHAT ROAD,THAKURPUKUR,KOLKATA-700063', '', 'India', 'KOLKATA', 'West Bengal', '700063', 'Cash on Delivery', 16049.00, '2024-05-23 06:03:43', '2024-05-23 06:03:43'),
(20, 'Jeet', 'Majumder', 'jeetmajumder67@gmail.com', '08777730527', '123K,JAIGIR GHAT ROAD,THAKURPUKUR,KOLKATA-700063', '', 'India', 'KOLKATA', 'West Bengal', '700063', 'Jeet', 'Majumder', 'jeetmajumder67@gmail.com', '08777730527', '123K,JAIGIR GHAT ROAD,THAKURPUKUR,KOLKATA-700063', '', 'India', 'KOLKATA', 'West Bengal', '700063', 'Cash on Delivery', 34047.00, '2024-05-23 06:10:18', '2024-05-23 06:10:18'),
(21, 'Jeet', 'Majumder', 'jeet@gmail.com', '8777730527', '597,Amritalal Mukherjee Road', '', 'India', 'Kolkata', 'West Bengal', '700063', 'Jeet', 'Majumder', 'jeet@gmail.com', '8777730527', '597,Amritalal Mukherjee Road', '', 'India', 'Kolkata', 'West Bengal', '700063', 'Cash on Delivery', 32047.00, '2024-05-23 07:03:25', '2024-05-23 07:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `qty`) VALUES
(11, 18, 35, 'Qarl Wall Mount Multiporpose Kitchen Rack in Dark Acacia Colour', 999.00, 1),
(12, 18, 34, 'Sanddune Marble Top 6 Seater Dining Table in Walnut Colour', 29999.00, 1),
(13, 18, 32, 'Extend 8 Seater Dining Table in Teak Colour', 39999.00, 4),
(14, 18, 27, 'Kryss Sheesham Wood Console Table in Scratch Resistant Provincial Teak Finish', 12999.00, 4),
(15, 19, 38, 'Luxe Bar Cabinet in Lyon Teak & White Finish', 15999.00, 1),
(16, 20, 39, 'Deva Velvet Bar Chair In Green Colour', 8999.00, 1),
(17, 20, 38, 'Luxe Bar Cabinet in Lyon Teak & White Finish', 15999.00, 1),
(18, 20, 36, 'Kosmo Optima 2 Door Wardrobe in Natural Wenge Finish', 8999.00, 1),
(19, 21, 38, 'Luxe Bar Cabinet in Lyon Teak & White Finish', 15999.00, 1),
(20, 21, 39, 'Deva Velvet Bar Chair In Green Colour', 8999.00, 1),
(21, 21, 46, 'Stainless Steel Crystal Bathroom Cabinet With Mirror', 6999.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(25, 18, 'Kaffka Metal TV Cabinet In Brass Electroplating Finish With White Porcelain Top', 41999, 31999, 1, '828648729_kaffka-metal-tv-cabinet-in-brass-electroplating--finish--with-white-porcelain-top-kaffka-metal-tv-ca-bct1vh.jpg', 'Premium White Porcelain top\r\n\r\nSeasoned Mango Wood\r\n\r\nMS Metal Pipe\r\n\r\nBrass Electroplating\r\n\r\nAccessories shown in the image are only for representation and are not part of the product.', 'Depending on your screen settings and resolution on your device there may be a slight variance in fabric color and wood polish of the image and actual product.\r\nWood grains will vary from product to product in case of solid wood furniture.\r\nFurniture having intricate hand-painted details are individual unique pieces and may have slight distinctions and variance between the picture and actual product.\r\nThe Primary material is the main material used to manufacture the product and in addition to the primary material there might also be other type of materials used in the manufacturing of the product', '', '', 'living room', 1),
(26, 18, 'Kaffka Metal Console Table In Brass Electroplating Finish With White Porcelain Top', 19000, 15000, 1, '936667480_kaffka-metal-console-table-in-brass-electroplating--finish--with-white-porcelain-top-kaffka-metal-co-xj6dxq.jpg', 'Wood grains will vary from product to prodWood grains will vary from product to product in case of solid wood furniture.\\\\\\\\r\\\\\\\\nFurniture having intricate hand-painted details are individual unique pieces and may have slight distinctions and variance between the picture and actual product in case of solid wood furniture.\\\\\\\\r\\\\\\\\nFurniture having intricate hand-painted details are individual unique pieces and may have slight distinctions and variance between the picture and actual product.', 'Try and use a tablecloth or any thick quality cloth on your dining table or any other table which is subject to daily and heavy use.\\\\\\\\r\\\\\\\\nDo not keep warm or cold items directly on a furniture surface; instead use a hot pad or coasters; please do not keep hot items like a tawa or baking dish even on a hot pad.\\\\\\\\r\\\\\\\\nTo protect your furniture from fading, avoid keeping your furniture next to windows and other places where it can be exposed to direct sunlight.\\\\\\\\r\\\\\\\\nTo avoid minor scratches which may hamper the finish of your furniture avoid sliding or passing items placed on your tabletop.\\\\\\\\r\\\\\\\\nAvoid placing items like burning candles or irons on any furniture as the heat generated from them may affect the life of your furniture in the long run, make use of candle holders to avoid melting wax touching the furniture.', '', '', '', 1),
(27, 18, 'Kryss Sheesham Wood Console Table in Scratch Resistant Provincial Teak Finish', 22568, 12999, 1, '145111694_kryss-solid-wood-console-table-in-provincial-teak-finish-by-woodsworth-kryss-solid-wood-console-tabl-xokc27.jpg', 'Key Benefits of Acrylic Finish : Acrylic finishes are highly durable, providing a tough protective layer against scratches and withstanding daily wear and tear. They have strong UV resistance, preventing fading and discoloration caused by sun exposure.', 'Accessories shown in the image are only for representation and are not part of the product.\r\nDepending on your screen settings and resolution on your device there may be a slight variance in fabric colour and wood polish of the image and actual product.\r\nWood grains will vary from product to product in case of solid wood furniture.\r\nFurniture having intricate hand-painted details are individual unique pieces and may have slight distinctions and variance between the picture and actual product.', '', '', '', 1),
(28, 18, 'Dassel Sheesham Wood Console Table In Scratch Resistant Dual Tone Finish', 20655, 15499, 1, '317294625_monet-solid-wood-console-table-in-dual-tone-finish-by-woodsworth-monet-solid-wood-console-table-in-d-hph74f.jpg', 'Woodsworth epitomizes the idea of bringing exceptional value with distinctive furniture for your home. Reflecting designs that are sleek, trendy and functional, Woodsworth delivers the right blend of style and value, aesthetics and functionality, as well as comfort and uncompromised quality.', 'Try and use a tablecloth or any thick quality cloth on your dining table or any other table which is subject to daily and heavy use.\r\nDo not keep warm or cold items directly on a furniture surface; instead use a hot pad or coasters; please do not keep hot items like a tawa or baking dish even on a hot pad.\r\nTo protect your furniture from fading, avoid keeping your furniture next to windows and other places where it can be exposed to direct sunlight.\r\nTo avoid minor scratches which may hamper the finish of your furniture avoid sliding or passing items placed on your tabletop.\r\nAvoid placing items like burning candles or irons on any furniture as the heat generated from them may affect the life of your furniture in the long run, make use of candle holders to avoid melting wax touching the furniture.', '', '', '', 1),
(29, 19, 'Meadow Solid Wood King Size Bed In Natural Cane Finish', 50000, 39000, 1, '574807034_meadow-solid-wood-king-size-bed-in-natural-finish-meadow-solid-wood-king-size-bed-in-natural-finish-tst9d6.jpg', 'Accessories shown in the image are only for representation and are not part of the product.\r\nDepending on your screen settings and resolution on your device there may be a slight variance in fabric colour and wood polish of the image and actual product.', 'Wood grains will vary from product to product in case of solid wood furniture.\r\nFurniture having intricate hand-painted details are individual unique pieces and may have slight distinctions and variance between the picture and actual product.  \r\nThe Primary material is the main material used to manufacture the product and in addition to the primary material there might also be other type of materials used in the manufacturing of the product', '', '', '', 1),
(30, 22, 'Guide Writing Table in Frosty White & Dark Brown Finish', 19999, 12999, 1, '614844634_guide-04-study-table-guide-04-study-table-ltkyhj.jpg', 'Accessories shown in the image are only for representation and are not part of the product.\r\nDepending on your screen settings and resolution on your device there may be a slight variance in fabric color and wood polish of the image and actual product.', 'Wood grains will vary from product to product in case of solid wood furniture.\r\nFurniture having intricate hand-painted details are individual unique pieces and may have slight distinctions and variance between the picture and actual product.\r\nThe Primary material is the main material used to manufacture the product and in addition to the primary material there might also be other type of materials used in the manufacturing of the product', '', '', '', 1),
(31, 26, 'Mango Wood Floating Wall Cabinet In Walnut Finish', 5000, 2999, 1, '293430063_solid-wood-wall-cabinet-in-brown-colour-solid-wood-wall-cabinet-in-brown-colour-mwufqs.jpg', 'Brand\r\nWoodenMood\r\nAssembly\r\nSelf Assembly\r\nColour\r\nBrown\r\nDimensions\r\nLength: 22 inches, Width: 5 inches, Height: 22 inches', 'Decorate your walls with these well designed and ergonomic wall shelves. Available in a variety of styles and designs, you can use them to organise your essentials or display decorative items. A one stop-shop for home decor and furniture, Pepperfry sells a home product every 30 seconds', '', '', '', 1),
(32, 20, 'Extend 8 Seater Dining Table in Teak Colour', 55999, 39999, 1, '621637350_download.jpeg', 'Brand\r\nSar\r\nAssembly\r\nNo Assembly Required\r\nDimensions (In Centimeters)\r\nH 71 x W 263 x D 91\r\nDimensions (in Inches)\r\nH 28 x W 103.5 x D 36', 'A dining table with a simplistic design made from solid teakwood wood / stained Ashwood Veneer and braced with an elegant V-shaped metal rod. A derivative of the CAP table, but with an extended top surface which overhangs generously on both sides. The overhangs create a visual separation from the body of the table; almost to indicate different functions and an invitation to extend seating. Individual work space at the extended ends and dining in the middle or team meeting in the middle and desk storage on the extended ends, the EXTEND offers versatility, function and flexibility.', '', '', '', 1),
(33, 20, 'Segur Sheesham Wood 6 Seater Dining Table In Provincial Teak Finish', 25999, 20999, 1, '254231047_download.jpeg', 'Brand\r\nWoodsworth from Pepperfry\r\nAssembly\r\nCarpenter Assembly\r\nCollections\r\nSegur\r\nColour\r\nProvincial Teak\r\nDimensions (In Centimeters)\r\nH 76 x W 147 x D 89\r\nDimensions (in Inches)\r\nH 30 x W 58 x D 35', 'Accessories shown in the image are only for representation and are not part of the product.\r\nDepending on your screen settings and resolution on your device there may be a slight variance in fabric colour and wood polish of the image and actual product.\r\nWood grains will vary from product to product in case of solid wood furniture.\r\nFurniture having intricate hand-painted details are individual unique pieces and may have slight distinctions and variance between the picture and actual product.', '', '', '', 1),
(34, 20, 'Sanddune Marble Top 6 Seater Dining Table in Walnut Colour', 48900, 29999, 1, '554646441_sanddune-marble-top-6-seater-dining-table-in-walnut-colour-sanddune-marble-top-6-seater-dining-table-odai2a.jpg', 'Brand\r\nHT Interiors by HomeTown\r\nAssembly\r\nAssembly by Brand (Installation in 72 hours)\r\nDimensions (In Centimeters)\r\nH 76 x W 178 x D 89\r\nDimensions (in Inches)\r\nH 30 x W 70 x D 35\r\nPrimary Material\r\nRubber Wood\r\nRoom Type\r\nDining Room', 'Material :- Dining Table is made up of an marble on top with a SOLIDWOOD at the base, giving this product a luxurious, plush look. Construction :- Crafted from solid rubberwood, the legs offer a sturdy foundation for lasting durability. Size & Components :- The 25MM Marble Top delivers opulence and visual appeal, making it the centerpiece of your dining space. Finish :- Rich walnut color adds warmth and complements various interior styles. Colour /Size Option :- Walnut', '', '', '', 1),
(35, 21, 'Qarl Wall Mount Multiporpose Kitchen Rack in Dark Acacia Colour', 1299, 999, 1, '324576588_qarl-wall-mount-multiporpose-kitchen-unit-in-dark-acacia-color-by-crystal-furnitech-qarl-wall-mount--uwjkrt.jpg', 'Brand\r\nCrystal Furnitech\r\nAssembly\r\nCarpenter Assembly (wall mounting not included)\r\nDimensions (in Inches)\r\nH 33 x W 33 x D 5\r\nProduct Rating\r\n5.0\r\nWarranty\r\n12 Months\' Warranty', 'Disclaimers:\r\n\r\nAccessories shown in the image are only for representation and are not part of the product.\r\nDepending on your screen settings and resolution on your device there may be a slight variance in fabric color and wood polish of the image and actual product.\r\nWood grains will vary from product to product in case of solid wood furniture.', '', '', '', 1),
(36, 19, 'Kosmo Optima 2 Door Wardrobe in Natural Wenge Finish', 9999, 8999, 1, '656838579_kosmo-optima-2-door-wardrobe-in-natural-wenge-finish-kosmo-optima-2-door-wardrobe-in-natural-wenge-f-ip5van.jpg', 'Primary Material - ENGINEERED WOOD\r\nSecondary Material - Partical board', 'Accessories shown in the image are only for representation and are not part of the product.\r\nDepending on your screen settings and resolution on your device there may be a slight variance in fabric color and wood polish of the image and actual product.\r\nWood grains will vary from product to product in case of solid wood furniture.', '', '', '', 1),
(38, 27, 'Luxe Bar Cabinet in Lyon Teak & White Finish', 19999, 15999, 1, '117743646_luxe-bar-cabinet-in-lyon-teak---white-finish-luxe-bar-cabinet-in-lyon-teak---white-finish-pxo7e9.jpg', 'Brand\r\nSivom\r\nAssembly\r\nCarpenter Assembly\r\nDimensions (In Centimeters)\r\nH 183 x W 46 x D 46\r\nDimensions (in Inches)\r\nH 72 x W 18 x D 18\r\nPrimary Material\r\nEngineered Wood\r\nProduct Rating\r\n4.0\r\nRoom Type\r\nLiving Room\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n40 KG\r\nSku\r\nFN2154885-S-PM42216', 'Bar cabinets are versatile pieces of furniture that can be placed in various settings, including living rooms, dining areas, or dedicated home bars. They provide a convenient and organized space for entertaining guests, making cocktails, or simply enjoying a relaxed drink at home.', '', '', '', 1),
(39, 27, 'Deva Velvet Bar Chair In Green Colour', 12999, 8999, 1, '432281446_deva-fabric-bar-stool-in-green-colour-deva-fabric-bar-stool-in-green-colour-jtv5ou.jpg', 'Brand\r\nKiyan Overseas\r\nAssembly\r\nSelf Assembly\r\nDimensions (In Centimeters)\r\nH 76 x W 56 x D 48\r\nDimensions (in Inches)\r\nH 30 x W 22 x D 19\r\nPrimary Material\r\nVelvet Fabric\r\nProduct Rating\r\n5.0\r\nRoom Type\r\nLiving Room\r\nSeating Height\r\n30\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n43 KG\r\nSku\r\nFN2167117-S-PM41034', 'Frame : FABRIC ; Fabric : FABRICS', '', '', '', 1),
(40, 27, 'Bravo Bar Cabinet in Choco Walnut And Frosty White Matte Finish', 15999, 12999, 1, '218029598_bravo-bar-cabinet-in-choco-walnut-and-frosty-white-matte-finish-bravo-bar-cabinet-in-choco-walnut-an-1dovtl.jpg', 'Brand\r\nA GLOBIA CREATIONS\r\nAssembly\r\nCarpenter Assembly\r\nDimensions (In Centimeters)\r\nH 180 x W 46 x D 46\r\nDimensions (in Inches)\r\nH 71 x W 18 x D 18\r\nPrimary Material\r\nEngineered Wood\r\nProduct Rating\r\n4.0\r\nRoom Type\r\nBar\r\nWarranty\r\n36 Months\' Warranty\r\nWeight\r\n47 KG\r\nSku\r\nFN2148313-S-PM35052', 'Water resistant, fungus, termite & scratch proof\r\nPremium grade hardware and fittings are used', '', '', '', 1),
(41, 27, 'Harmonia Metal Bar Chair in Brown And Black Colour', 9999, 5999, 1, '452013597_harmonia-metal-bar-chair-in-brown-and-black-colour-harmonia-metal-bar-chair-in-brown-and-black-colou-noxnfu.jpg', 'Brand\r\nRoyaloak\r\nAssembly\r\nCarpenter Assembly\r\nDimensions (In Centimeters)\r\nH 98 x W 39 x D 42\r\nDimensions (in Inches)\r\nH 38.5 x W 15.5 x D 16.5\r\nPrimary Material\r\nSteel\r\nProduct Rating\r\n5.0\r\nRoom Type\r\nOutdoor Furniture\r\nSeating Height\r\n25\r\nWeight\r\n9 KG\r\nSku\r\nFN2168621-S-PM42157', 'Bella Restaurant Chair, a perfect blend of style, durability, and modern design. Crafted with precision, this designer restaurant chair features a solid wood frame, ensuring both sturdiness and a touch of elegance. Its rust-proof textured steel accents not only enhance its contemporary aesthetics but also guarantee longevity, making it ideal for high-traffic restaurant environments. With a focus on durability and long-lasting performance, Royaloak Bella Restaurant Chair is designed to withstand the rigors of daily use while elevating the ambiance of any dining space, making it the perfect choice for those seeking a combination of sophistication and resilience.', '', '', '', 1),
(42, 27, 'Neutal Solid Wood Bar Trolley In Natural Finish', 8999, 5999, 1, '909582548_neutal-solid-wood-bar-trolley-in-natural-finish-neutal-solid-wood-bar-trolley-in-natural-finish-znz9mw.jpg', 'Brand\r\nBohemiana from Pepperfry\r\nAssembly\r\nNo Assembly Required\r\nColour\r\nNatural\r\nDimensions (In Centimeters)\r\nH 81.28 x W 45.72 x D 34.29\r\nDimensions (in Inches)\r\nH 32 x W 18 x D 13.5\r\nPrimary Material\r\nMango Wood\r\nProduct Rating\r\n5.0\r\nRoom Type\r\nLiving Room\r\nWarranty\r\n36 Months\' Warranty\r\nWeight\r\n10 KG\r\nSku\r\nFM2135332-S-PM40698', 'Accessories shown in the image are only for representation and are not part of the product. Wood grains will vary from product to product in case of solid wood furniture.', '', '', '', 1),
(43, 27, 'Bizerk Solid Wood Bar Cabinet In Black Brush Finish', 39999, 35999, 1, '620562817_bizerk-solid-wood-bar-cabinet-in-black-brush-finish-bizerk-solid-wood-bar-cabinet-in-black-brush-fin-wp2irc.jpg', 'Brand\r\nBohemiana from Pepperfry\r\nAssembly\r\nCarpenter Assembly\r\nDimensions (In Centimeters)\r\n157 cm X 81 cm X 41 cm\r\nDimensions (in Inches)\r\nH 62 x W 32 x D 16\r\nPrimary Material\r\nMango Wood\r\nRoom Type\r\nBar\r\nWarranty\r\n36 Months\' Warranty\r\nWeight\r\n51 KG\r\nSku\r\nFM2172319-S-PM29528', 'Seasoned Mango Wood\r\nFree Spirited Eclectic Design\r\nCNC Work Door Panel\r\nPremium Brass finish Knobs\r\nRust Resistant Powder Coating', '', '', '', 1),
(44, 27, 'Bliss Bar Cabinet in Dark Elm Finish', 13999, 11999, 1, '733877572_bliss-bar-cabinet-in-dark-elm-finish-by-crystal-furnitech-bliss-bar-cabinet-in-dark-elm-finish-by-cr-hth1pw.jpg', 'Brand\r\nCrystal Furnitech\r\nAssembly\r\nCarpenter Assembly\r\nCollections\r\nBliss CF\r\nDimensions (In Centimeters)\r\nH 180 x W 76 x D 36\r\nDimensions (in Inches)\r\nH 71 x W 30 x D 14\r\nPrimary Material\r\nEngineered Wood\r\nProduct Rating\r\n4.0\r\nRoom Type\r\nBar\r\nWarranty\r\n36 Months\' Warranty\r\nWeight\r\n51.5 KG\r\nSku\r\nFN2016175-S-PM36423', 'Accessories shown in the image are only for representation and are not part of the product.\r\n\r\nDepending on your screen settings and resolution on your device there may be a slight variance in Poly-Cotton colour and wood polish of the image and actual product.', '', '', '', 1),
(45, 27, 'Relic Leather Bar Cabinet In Tan Colour', 219999, 189999, 1, '120082126_relic-leather-bar-cabinet-in-tan-colour-relic-leather-bar-cabinet-in-tan-colour-nxalqw.jpg', 'Brand\r\nThree sixty\r\nAssembly\r\nNo Assembly Required\r\nDimensions (In Centimeters)\r\nH 198 x W 91 x D 56\r\nDimensions (in Inches)\r\nH 78 x W 36 x D 22\r\nPrimary Material\r\nLeather\r\nRoom Type\r\nLiving Room\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n144 KG\r\nSku\r\nFN2179864-S-PM42711', 'Handcrafted in genuine leather\r\nAccommodates up to 60-65 bottles\r\nWall-hanging bar shelf accommodates 15-18 wine glasses, illuminated by sensor lights\r\nLockable flap open bar counter, also equipped with sensor lights\r\nAdditional shelf provided for bar accessories and snacks\r\nFour versatile storage drawers for bottles, decanters, glassware, and more\r\nHeavy-duty reinforced 360 wheels ensure effortless movement\r\nFitted with a solid brass lock for security\r\nLined with soft suede fabric\r\nHettich fittings for added durability and functionality', '', '', '', 1),
(46, 26, 'Stainless Steel Crystal Bathroom Cabinet With Mirror', 7999, 6999, 1, '272975176_stainless-steel-crystal-bathroom-cabinet-with-mirror-by-zahab-stainless-steel-crystal-bathroom-cabin-sfcwxw.jpg', 'Brand\r\nZahab\r\nAssembly\r\nNo Assembly Required\r\nColour\r\nChrome\r\nDimensions\r\nLength: 16, Width: 4, Height: 24\r\nDimensions (In Centimeters)\r\nLength: 40.64, Width: 10.16, Height: 60.96\r\nMaterial\r\nMetal\r\nMirror Included\r\nYes\r\nNumber of Shelves\r\n4\r\nPack Content\r\n1 Bathroom Cabinet\r\nProduct Rating\r\n4.0\r\nWeight\r\n5.9 Kg\r\nSku\r\nDE2026054-S-PM32081', 'Nice cabinet with stainless steel', '', '', '', 1),
(47, 26, 'Plastic Three Door Bathroom Cabinet With Mirror', 1999, 1699, 1, '635974239_plastic-three-door-bathroom-cabinet-with-mirror-by-zahab-plastic-three-door-bathroom-cabinet-with-mi-c0lpup.jpg', 'Brand\r\nZahab\r\nAssembly\r\nNo Assembly Required\r\nColour\r\nIvory\r\nDimensions\r\nLength: 21, Width: 4, Height: 16\r\nDimensions (In Centimeters)\r\nLength: 53.34, Width: 10.16, Height: 40.64\r\nMaterial\r\nPlastic\r\nMirror Included\r\nYes\r\nNumber of Shelves\r\n4\r\nPack Content\r\n1 Bathroom Cabinet\r\nProduct Rating\r\n3.5\r\nWeight\r\n1.9 Kg\r\nSku\r\nDE2026057-S-PM32081', 'Plastic bathroom cabinet', '', '', '', 1),
(48, 26, 'Jeny White MDF Bathroom Cabinet With Mirror', 33000, 29000, 1, '937933656_jeny-white-mdf-wall-mirror-jeny-white-mdf-wall-mirror-ir48hy.jpg', 'Brand\r\nMirrorwalla\r\nAssembly\r\nSelf Assembly\r\nColour\r\nWhite\r\nDimensions\r\nLength : 30 , Width : 4 , Height : 24\r\nDimensions (In Centimeters)\r\nLength : 76.2 , Width : 10.16 , Height : 60.96\r\nMaterial\r\nMDF\r\nPack Content\r\n1 Mirror\r\nShape\r\nRectangle\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n10 Kilograms\r\nSku\r\nDE2176688-S-PM42551', 'White MDF bathroom cabinet with mirror', '', '', '', 1),
(49, 26, 'Premium Grey & Gold Splash Ceramic Luxury Bathroom Dispensers', 1200, 1000, 1, '127782176_premium-grey---gold-splash-ceramic-luxury-bathroom-dispensers-premium-grey---gold-splash-ceramic-lux-snkofe.jpg', 'Brand\r\nNestasia\r\nAssembly\r\nNo Assembly Required\r\nCapacity (in ML)\r\n300ml\r\nColour\r\nGrey\r\nDimensions (In Inches)\r\nDispenser - L 2.16 x B 2.16 x H 7.28\r\nMaterial\r\nCeramic\r\nPack Content\r\nSet of 1- 1 Dispenser\r\nProduct Rating\r\n5.0\r\nSku\r\nDE2073859-S-PM37777', 'Nestasia, the brainchild of entrepreneur couple Aditi Murarka and Anurag Agrawal, is one of Indias fastest-growing home dcor brands. Nestasia aims to be a design-led brand with a wide variety of products that cater to the needs of modern and traditional households.', '', '', '', 1),
(50, 26, 'Texture Black Ceramic Bathroom Accessory Set (Pack of 5)', 29999, 2599, 1, '673127885_texture-black--ceramic-bathroom-accessory-set-texture-black--ceramic-bathroom-accessory-set-b18vdx.jpg', 'Brand\r\nNestasia\r\nAssembly\r\nNo Assembly Required\r\nCapacity (in ML)\r\n1.5 Ltrs\r\nColour\r\nBlack\r\nDimensions (In Inches)\r\nDispenser - L 2.75 X B 2.75 X H 7.87; Tumbler Glass - L 2.75 x B 2.75 x H 3.93; Tooth Brush Holder : L 2.75 x W 2.75 x H 3.93; Soap Dish : L 3.93 x B 3.93 x H 1.18\r\nMaterial\r\nCeramic\r\nPack Content\r\nSet of 5- 1 Dispenser, 1 Soap Dish, 2 Tumblers, 1 Toothbrush Colder\r\nProduct Rating\r\n5.0\r\nSku\r\nDE2073889-S-PM37777', 'A full set of classic bath accessories with a soap dispenser, a soap dish and three tumblers. The tumblers can be filled with toothbrushes, toothpastes and shaving accessories each.', '', '', '', 1),
(51, 26, 'Premium Eclectic Floral White Printed Ceramic Bathroom Accessory Set (Pack of 5)', 3000, 2500, 1, '776591930_premium-eclectic-floral-white-printed-ceramic-bathroom-accessory-set-premium-eclectic-floral-white-p-fibnss.jpg', 'Brand\r\nNestasia\r\nAssembly\r\nNo Assembly Required\r\nCapacity (in ML)\r\n1.5 Ltrs\r\nColour\r\nMulticolour\r\nDimensions (In Inches)\r\nDispenser - L 5 x B 5 x H 18; Tooth Brush Holder : L 7 x B 7 x H 9.5; Tumbler- L 7 x B 7 x H 9.5, Soap Dish- L 14 x B 8.5 x H 4\r\nMaterial\r\nCeramic\r\nPack Content\r\nSet of 5- 1 Dispenser, 1 Soap Dish, 1 Toothbrush Holder, 2 Mouthwash Cups\r\nSku\r\nDE2073887-S-PM37777', 'The premium ceramic bathroom accessories set that includes 1 dispenser, 1 toothbrush holder, 2 tumblers and 1 soap dish is exquisite and beautiful and is a great way to decorate your bathroom or kitchen.', '', '', '', 1),
(52, 26, 'Superior Plastic Ivory Bathroom Cabinet With Mirror', 2500, 2000, 1, '634818770_superior-plastic-ivory-bathroom-cabinet-with-mirror-superior-plastic-ivory-bathroom-cabinet-with-mir-z1b99r.jpg', 'Brand\r\nZahab\r\nAssembly\r\nNo Assembly Required\r\nColour\r\nIvory\r\nDimensions\r\nLength: 14, Width: 4.5, Height: 19\r\nDimensions (In Centimeters)\r\nLength: 35.56, Width: 11.43, Height: 48.26\r\nMaterial\r\nPlastic\r\nMirror Included\r\nYes\r\nNumber of Shelves\r\n2\r\nPack Content\r\n1 Bathroom Cabinet\r\nProduct Rating\r\n4.0\r\nWeight\r\n1.9 Kg\r\nSku\r\nDE2075222-S-PM32081', 'Plastic Ivory Bathroom Cabinet With Mirror makes the bathroom beautiful', '', '', '', 1),
(53, 19, 'Milan King Size Bed With Hydraulic Storage In Natural Finish', 129999, 119999, 1, '154139390_milan-king-size-bed-with-hydraulic-storage-in-natural-finish-by-orange-tree-milan-king-size-bed-with-ktrakm.jpg', 'Brand\r\nOrange Tree\r\nAssembly\r\nCarpenter Assembly\r\nCollections\r\nMilan\r\nDimensions (In Centimeters)\r\nH 99 x W 191 x D 203\r\nDimensions (in Inches)\r\nH 39 x W 75 x D 80\r\nPrimary Material\r\nAcacia Wood\r\nRecommended Mattress Size\r\n78 L x 72 W Inch\r\nRoom Type\r\nBedroom\r\nSeating Height\r\n17\r\nStorage\r\nHydraulic Storage\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n190 KG\r\nSku\r\nFN2033665-S-PM39447', 'Furniture having intricate hand-painted details are individual unique pieces and may have slight distinctions and variance between the picture and actual product.', '', '', '', 1),
(54, 19, 'Hornbill Bone Inlay Chest of Drawer In Black Finish', 79999, 69999, 1, '574027127_hornbill-bone-inlay-cabinet-in-black-finish-hornbill-bone-inlay-cabinet-in-black-finish-ctjzvz.jpg', 'Brand\r\nCasaGold\r\nAssembly\r\nNo Assembly Required\r\nDimensions (In Centimeters)\r\nH 85 x W 97 x D 46\r\nDimensions (in Inches)\r\nH 34 x W 38 x D 18\r\nPrimary Material\r\nBone Inlay\r\nRoom Type\r\nLiving Room\r\nWeight\r\n75 KG\r\nSku\r\nFN2171136-S-PM32619', 'Wood grains will vary from product to product .\r\nFurniture having intricate hand-painted details are individual unique pieces and may have slight distinctions and variance between the picture and actual product.', '', '', '', 1),
(55, 19, 'Lei Solid Wood Settees in Natural Finish', 34000, 29000, 1, '583710872_lei-pan-bench-in-grey-colour-by-ellementry-lei-pan-bench-in-grey-colour-by-ellementry-83cjd3.jpg', 'Brand\r\nEllementry\r\nAssembly\r\nSelf Assembly\r\nDimensions (In Centimeters)\r\nH 64 x W 46 x D 150\r\nDimensions (in Inches)\r\nH 25 x W 18 x D 59\r\nPrimary Material\r\nMango Wood\r\nRoom Type\r\nLiving Room\r\nSeating Height\r\n17\r\nWarranty\r\n6 Months\' Warranty\r\nWeight\r\n15.5 KG\r\nSku\r\nFN2028624-S-PM30447', 'Wood grains will vary from product to product .\r\nFurniture having intricate hand-painted details are individual unique pieces and may have slight distinctions and variance between the picture and actual product.', '', '', '', 1),
(56, 19, 'West Village Bench with Storage In Light Brown Colour', 22999, 18999, 1, '397332567_west-village-shoe-rack-in-light-brown-colour-by-ellementry-west-village-shoe-rack-in-light-brown-col-6rbp1m.jpg', 'Brand\r\nEllementry\r\nAssembly\r\nNo Assembly Required\r\nDimensions (In Centimeters)\r\nH 41 x W 41 x D 99\r\nDimensions (in Inches)\r\nH 16 x W 16 x D 39\r\nPrimary Material\r\nMango Wood\r\nRoom Type\r\nLiving Room\r\nWarranty\r\n6 Months\' Warranty\r\nWeight\r\n23.55 KG\r\nSku\r\nFN2060042-S-PM30447', 'The Primary material is the main material used to manufacture the product and in addition to the primary material there might also be other type of materials used in the manufacturing of the product\r\n.', '', '', '', 1),
(57, 19, 'Arabella Metal Bench In Rust and Gold Colour', 16999, 12999, 1, '393872796_arabella-metal-bench-in-rust-and-gold-colour-arabella-metal-bench-in-rust-and-gold-colour-spvac9.jpg', 'Brand\r\nHT Interiors by HomeTown\r\nAssembly\r\nAssembly by Brand (Installation in 72 hours)\r\nDimensions (In Centimeters)\r\nH 46 x W 120 x D 45\r\nDimensions (in Inches)\r\nH 18 x W 47 x D 18\r\nPrimary Material\r\nMetal\r\nRoom Type\r\nBedroom\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n14.9 KG\r\nSku\r\nFN2169755-S-PM33857', 'Arabella Bed Bench Comes With Pvc And Metal Legs. Construction :- It has leathrite upholstry and golden finish metal legs. Finish :- This product has plush finish. Other Features :- This product is chemically treated for durability.', '', '', '', 1),
(58, 19, 'Multi Color Flower With Flower Pot Modern Art Canvas Art Print For Bedroom', 3400, 2900, 1, '520549744_multi-color-flower-with-flower-pot-modern-art-canvas-wall-painting-for-bedroom-multi-color-flower-wi-evvvef.jpg', 'Brand\r\n999Store\r\nAssembly\r\nNo Assembly Required\r\nColour\r\nMulticolour\r\nDimensions\r\nLength: 36, Width: 1.5, Height: 36\r\nDimensions (In Centimeters)\r\nLength: 91.44, Width: 3.81, Height: 91.44\r\nFrame Type\r\nFramed\r\nMaterial\r\nCanvas\r\nOrientation\r\nLandscape\r\nPack Content\r\n1 Canvas Print\r\nWeight\r\n3 Kg\r\nSku\r\nDE2107165-S-PM6905', 'The Canvas painting print is strected on wooden frame and its framed on floating frame or box frame and ready to hang on the wall painting using the clips provided in the package.', '', '', '', 1),
(59, 20, 'Travertine 4 Seater Marble Dining Table With Solid Fluted Base In Beige Colour', 85000, 79000, 1, '973333470_travertine-dinning-table-with-solid-fluted-base-travertine-dinning-table-with-solid-fluted-base-t7xj7u.jpg', 'Brand\r\nZiba Homes\r\nAssembly\r\nCarpenter Assembly\r\nDimensions (In Centimeters)\r\nH 75 x W 132 x D 132\r\nDimensions (in Inches)\r\nH 30 x W 52 x D 52\r\nPrimary Material\r\nMarble\r\nRoom Type\r\nLiving Room\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n94 KG\r\nSku\r\nFN2177081-S-PM39490', 'Furniture having intricate hand-painted details are individual unique pieces and may have slight distinctions and variance between the picture and actual product.\r\nThe Primary material is the main material used to manufacture the product and in addition to the primary material there might also be other type of materials used in the manufacturing of the product.', '', '', '', 1),
(60, 20, 'Extend 6 Seater Dining Table in Purple Colour', 72999, 68999, 1, '332838422_extend-6-seater-dining-table-in-purple-colour-extend-6-seater-dining-table-in-purple-colour-t2a6nm.jpg', 'Brand\r\nSar\r\nAssembly\r\nNo Assembly Required\r\nDimensions (In Centimeters)\r\nH 71 x W 180 x D 91\r\nDimensions (in Inches)\r\nH 28 x W 71 x D 36\r\nPrimary Material\r\nOak Veneer\r\nRoom Type\r\nDining Room\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n90 KG\r\nSku\r\nFN2176935-S-PM42618', 'A dining table with a simplistic design made from solid teakwood wood / stained Ashwood Veneer and braced with an elegant V-shaped metal rod. A derivative of the CAP table, but with an extended top surface which overhangs generously on both sides. The overhangs create a visual separation from the body of the table; almost to indicate different functions and an invitation to extend seating. Individual work space at the extended ends and dining in the middle or team meeting in the middle and desk storage on the extended ends, the EXTEND offers versatility, function and flexibility. It offers maximum use of top surface space and below for leg room. Its legs are connected to slender wooden runners called skis with a simple insert connection. Along the four open sides, the STACK chair and, or NEST bench can squarely nest underneath. With a stained finish, the table top\'s exposed variegated natural wood grains is a perfect background to the central activities of a dining/work space.', '', '', '', 1),
(61, 20, 'Stack Walnut Wood Dining Chair in Natural Colour', 17999, 15999, 1, '287171616_stack-walnut-wood-dining-chair-in-natural-colour-stack-walnut-wood-dining-chair-in-natural-colour-1brbr0.jpg', 'Brand\r\nSar\r\nAssembly\r\nNo Assembly Required\r\nDimensions (In Centimeters)\r\nH 81 x W 48 x D 50\r\nDimensions (in Inches)\r\nH 32 x W 19 x D 19.5\r\nPrimary Material\r\nWalnut Wood\r\nRoom Type\r\nDining Room\r\nSeating Height\r\n17.5\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n10 KG\r\nSku\r\nFN2176921-S-PM42618', 'The chair is made of solid Reclaimed Teak / stained Ashwood reduced to the simplest possible form. The STACK has an ergonomic seat and back curved to support the body in the correct way adding warmth and invite to its solid structure. The edge to edge precision is crafted to create a symbiotic design relationship, between chair to chair which aids in the compact stacking of the STACK. Each chair is designed to squarely nest under the CAP and EXTEND dining tables.', '', '', '', 1),
(62, 20, 'Stem Glass 6 Seater Dining Table in Transparent Colour', 74999, 68999, 1, '759050286_stem-glass-6-seater-dining-table-in-transparent-colour-stem-glass-6-seater-dining-table-in-transpare-1peohk.jpg', 'Brand\r\nSar\r\nAssembly\r\nSelf Assembly\r\nDimensions (In Centimeters)\r\nH 71 x W 150 x D 150\r\nDimensions (in Inches)\r\nH 28 x W 59 x D 59\r\nPrimary Material\r\nGlass\r\nRoom Type\r\nDining Room\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n138 KG\r\nSku\r\nFN2176897-S-PM42618', 'An object that is almost anonymous, yet ever-present and supportive; used for a myriad of things, like eating together, working, late night conversations, or an early morning cup of coffee. The Stem table s beauty lies in its dignified subtlety. A shared detail of personality ties it to the Kiki and the Fold chair. Unlike ornamental and decorative table designs prevalent in India, the Stem is breaking the mold with its understated new basic form, featuring chamfered edges capped with brass details. Daniel Rous technical skills are evident in the Stem s clever design and in its modularity, with a total of twenty-one possible configurations. The table tops may be (+) round, oval, or rectangular, and made of marble, glass, or solid wood. Its astute functionality is rivaled only by its simple assembly, and exquisite construction quality.', '', '', '', 1),
(63, 20, 'Marvis Sheesham Wood 8 Seater Dining Set In Walnut Colour', 88999, 79999, 1, '730323409_marvis-sheesham-wood-8-seater-dining-set-in-walnut-colour-marvis-sheesham-wood-8-seater-dining-set-i-ssurdp.jpg', 'Brand\r\nHT Interiors by HomeTown\r\nAssembly\r\nAssembly by Brand (Installation in 72 hours)\r\nDimensions (In Centimeters)\r\nH 76 x W 236 x D 99 ; Chair : H 91 x W 50 x D 55\r\nDimensions (in Inches)\r\nH 30 x W 93 x D 39 ; Chair : H 36 x W 19 x D 21.5\r\nPrimary Material\r\nSheesham Wood\r\nRoom Type\r\nDining Room\r\nTop Material\r\nSolid Wood\r\nWarranty\r\n36 Months\' Warranty\r\nWeight\r\n96 KG\r\nSku\r\nFN2152831-S-PM33857', 'Marvis is made of seasoned and treated Indian Sheesham wood. Construction :- Table top is 25mm thick, which is made of Sheesham wood. Legs are 12 mm in thickness and made of high grade metal. Size & Components :- Legs are lacquered using Electro Phoretic method which keeps them rust proof. Finish :- Product is stained with protective layer to make it scratch & heat resistant. This product is termite resistant & borer Proof. Colour -Size Option :- Walnut Chair: Material :- Marvis Dining Chair is made in PVC upholstery, curved backrest with beautiful design. Construction :- Chair is made with Box seat construction with thick plywood base which gives strength and durability. Seating Comfort :- Cushioned with high tensile strength fabric which offers high durability and comfortable seating. Size & Components :- Legs are lacquered using Electro Phoretic method which keeps them rust proof. Finish :- Leg are gold in colour and seat is Tan coloured which gives classic look. Colour -Size Option :- Tan', '', '', '', 1),
(64, 22, 'Watson Leatherette Executive Chair in Black Colour', 8999, 6999, 1, '656896088_watson-leatherette-executive-chair-in-black-colour-watson-leatherette-executive-chair-in-black-colou-hcjhio.jpg', 'Brand\r\nCELLBELL\r\nAssembly\r\nCarpenter Assembly\r\nDimensions (In Centimeters)\r\nH 132 x W 56 x D 53\r\nDimensions (in Inches)\r\nH 52 x W 22 x D 21\r\nPrimary Material\r\nLeatherette\r\nProduct Rating\r\n4.5\r\nRoom Type\r\nOffice Furniture\r\nSeating Height\r\n18-22 Inch ( Min - Max )\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n19 KG\r\nSku\r\nFN1957750-S-PM39081', 'Wood grains will vary from product to product in case of solid wood furniture.', '', '', '', 1),
(65, 22, 'Maximus 5 Feet Office Table In New Wenge Finish', 16999, 13999, 1, '370331070_maximus-5-feet-office-table-in-new-wenge-finish-by-nilkamal-maximus-5-feet-office-table-in-new-wenge-x9udnc.jpg', 'Brand\r\nNilkamal\r\nAssembly\r\nCarpenter Assembly\r\nDimensions (In Centimeters)\r\nH 75.0062 x W 150.0124 x D 60.0202\r\nDimensions (in Inches)\r\nH 29.53 x W 59.06 x D 23.63\r\nPrimary Material\r\nEngineered Wood\r\nProduct Rating\r\n3.0\r\nRoom Type\r\nOffice Furniture\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n54 KG\r\nSku\r\nFN2031770-S-PM39092', 'Secondary Material - Particle Board\r\nMade from combination of 25mm &18mm thick pre-laminated particle board. It has 3 Drawers with Central Locking (all 3 drawers get locked by the lock & key on the top drawer). Leveler is given for easy adjustment in case of uneven floor surfaces.', '', '', '', 1),
(66, 22, 'Andaman Katchall Solid Wood Shelving Unit In Black Finish', 98999, 92999, 1, '623753319_andaman-katchall-solid-wood-shelving-unit-in-black-finish-andaman-katchall-solid-wood-shelving-unit--4w6wcy.jpg', 'Brand\r\nOrange Tree\r\nAssembly\r\nNo Assembly Required\r\nDimensions (In Centimeters)\r\nH 204 x W 143 x D 48\r\nDimensions (in Inches)\r\nH 80 x W 56 x D 19\r\nPrimary Material\r\nMetal\r\nRoom Type\r\nLiving Room\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n88 KG\r\nSku\r\nFN2173581-S-PM39447', 'Explore the exquisite Andaman Rattan Bookshelf, the epitome of modern craftsmanship and timeless elegance. Meticulously crafted from acacia wood, mild steel, and natural rattan cane with jute weaving, it stands on a sleek black powder-coated steel frame. The distinctive arched tops seamlessly integrate natural cane into the curved metal frame, embodying a contemporary design sensibility. With a dynamic zig-zag pattern in its shelving, this bookshelf effortlessly infuses playful sophistication into any space. \"Depending on your screen settings and resolution on your device there may be a slight variance in fabric color and wood polish of the image and actual product. Wood grains will vary from product to product in case of solid wood furniture.\"', '', '', '', 1),
(67, 22, 'Lexus Executive Table In White Finish', 20999, 14999, 1, '181668685_l-shaped-work-station-in-black---white-colour-in-natural-finish-by-riyan-luxiwood-l-shaped-work-stat-npcbmt.jpg', 'Brand\r\nRiyan Luxiwood\r\nAssembly\r\nSelf Assembly\r\nDimensions (In Centimeters)\r\nH 76 x W 150 x D 119\r\nDimensions (in Inches)\r\nH 29.5 x W 59 x D 47\r\nPrimary Material\r\nEngineered Wood\r\nProduct Rating\r\n4.5\r\nRoom Type\r\nOffice Furniture\r\nTop Material\r\nEngineered Wood\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n46 KG\r\nSku\r\nFN1950409-S-PM36465', 'Table top, shelves & cabinate board are made with high quality Laminated MDF/Enginering wood & Lower frame made with ISI marked MS/Iron tube, painted for long life.', '', '', '', 1),
(68, 22, 'Lexus File Cabinet in Leon Teak Finish', 15999, 8999, 1, '312804970_lexus-bookshelf-in-leon-teak-finish-by-neudot-lexus-bookshelf-in-leon-teak-finish-by-neudot-lsvnqh.jpg', 'Brand\r\nNeudot\r\nAssembly\r\nCarpenter Assembly\r\nDimensions (In Centimeters)\r\nH 150 x W 60 x D 38\r\nDimensions (in Inches)\r\nH 59 x W 23.5 x D 15\r\nPrimary Material\r\nEngineered Wood\r\nProduct Rating\r\n4.5\r\nRoom Type\r\nOffice Furniture\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n39 KG\r\nSku\r\nFN2068010-S-PM39974', 'Lexus Bookshelf is an extra elegance to your living, dining, bedroom, or even your office. This bookshelf can be used as both bookshelves as well as a wardrobe. Made with engineered wood. Add this to your home and free up some space by placing things in Lexus Bookshelf.', '', '', '', 1),
(69, 22, 'Quill Metal 6 Racks File Cabinet in Silver Grey Finish with Lock', 21999, 17999, 1, '700866925_sos-liteoffice-filing-cabinet-with-6-shutters-in-silver-grey-finish-by-spacewood-office-solutions-so-fyr1nt.jpg', 'Brand\r\nSpacewood Office Solutions\r\nAssembly\r\nSelf Assembly\r\nDimensions (In Centimeters)\r\nH 184 x W 38 x D 38\r\nDimensions (in Inches)\r\nH 72.5 x W 15 x D 15\r\nPrimary Material\r\nMetal\r\nProduct Rating\r\n3.5\r\nRoom Type\r\nOffice Furniture\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n28.6 KG\r\nSku\r\nFN1955260-S-PM34693', 'Wood grains will vary from product to product .\r\nFurniture having intricate hand-painted details are individual unique pieces and may have slight distinctions and variance between the picture and actual product.', '', '', '', 1),
(70, 22, 'Zanko Computer Table in Leon Teak Finish', 17499, 8999, 1, '342383183_zanko-office-table-in-leon-teak-finish-by-neudot-zanko-office-table-in-leon-teak-finish-by-neudot-fyh7up.jpg', 'Brand\r\nNeudot\r\nAssembly\r\nCarpenter Assembly\r\nDimensions (In Centimeters)\r\nH 76.2 x W 119.3 x D 59.9\r\nDimensions (in Inches)\r\nH 30 x W 47 x D 23.6\r\nPrimary Material\r\nEngineered Wood\r\nProduct Rating\r\n4.5\r\nRoom Type\r\nStudy Room\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n40 KG\r\nSku\r\nFN2068004-S-PM39974', 'The spacious tabletop of Zanko\'s office table offers plenty of room to spread out with a computer and paperwork. The desk\'s file space is designed in smooth full extension for easy access to legal and letter-size documents, while a box drawer keeps the office supplies you need close by.', '', '', '', 1),
(71, 21, 'Amol Stainless Steel Kitchen Rack', 4999, 1999, 1, '911508518_amol-stainless-steel--kitchen-rack-amol-stainless-steel--kitchen-rack-sqwpwz.jpg', 'Brand\r\nAmol\r\nAssembly\r\nNo Assembly Required\r\nDimensions (in Inches)\r\n25 Inches(L) x 13 Inches (B) x 24 Inches(H)\r\nMaterial\r\nStainless Steel\r\nMount Type\r\nFree Standing\r\nPack Content\r\nSet of 1- Kitchen Rack\r\nProduct Rating\r\n5.0\r\nSku\r\nKD2099540-S-PM28337', 'Premium Stainless Steel Adjustable Single -Tier Stainless Steel Dish Rack is an essential for a compact and beautiful kitchen. It provides a stylish touch to your kitchen and provide many functions in very compact spaces. The Dish Rack is very durable and stable, with the ability to hold many kitchen utensils at once.', '', '', '', 1),
(72, 21, 'Denham Kitchen Metal Racks Basic With Oven Space In Black Colour', 799, 549, 1, '995432648_denham-kitchen-metal-racks-basic-with-oven-space-in-silver-colour-by-tunehome-denham-kitchen-metal-r-7iwn0q.jpg', 'Brand\r\nTUNEHOME\r\nAssembly\r\nSelf Assembly\r\nDimensions (In Centimeters)\r\nH 51 x W 56 x D 36\r\nDimensions (in Inches)\r\nH 20 x W 22 x D 14\r\nPrimary Material\r\nMetal\r\nProduct Rating\r\n3.0\r\nWeight\r\n2.1 KG\r\nSku\r\nFN1966847-S-PM37980', 'Wood grains will vary from product to product in case of solid wood furniture.', '', '', '', 1),
(73, 21, 'Wall Mount Sliding Door Kitchen Cabinet In Wenge Color', 3499, 1499, 1, '275487492_wall-mount-sliding-door-kitchen-cabinet-in-wenge-color-by-crystal-furnitech-wall-mount-sliding-door--ti6ne7.jpg', 'Brand\r\nCrystal Furnitech\r\nAssembly\r\nCarpenter Assembly\r\nColour\r\nWenge\r\nDimensions (In Centimeters)\r\nH 35.6 x W 69.9 x D 15.2\r\nMaterial\r\nEngineered Wood\r\nMirror Included\r\nNo\r\nNumber of Shelves\r\n2\r\nPack Content\r\n1 Cabinet\r\nProduct Rating\r\n4.5\r\nWarranty\r\n36 Months\' Warranty\r\nWeight\r\n9\r\nSku\r\nFN2027513-S-PM36423', 'Furniture having intricate hand-painted details are individual unique pieces and may have slight distinctions and variance between the picture and actual product.', '', '', '', 1),
(74, 21, 'Denham Kitchen Metal Racks Basic Without Oven Space In Silver Colour', 699, 499, 1, '704060968_denham-kitchen-metal-racks-basic-without-oven-space-in-silver-colour-by-tunehome-denham-kitchen-meta-efx80l.jpg', 'Brand\r\nTUNEHOME\r\nAssembly\r\nSelf Assembly\r\nDimensions (in Inches)\r\nH 11 x W 22 x D 14\r\nProduct Rating\r\n5.0\r\nSku\r\nFN1966841-S-PM37980', 'The Primary material is the main material used to manufacture the product and in addition to the primary material there might also be other type of materials used in the manufacturing of the product', '', '', '', 1),
(75, 21, 'Woodit Kitchen Rack In Beige Colour', 2600, 1700, 1, '495360195_woodit-kitchen-rack-in-beige-colour-by-kawachi-woodit-kitchen-rack-in-beige-colour-by-kawachi-4nhvzd.jpg', 'Brand\r\nKawachi\r\nAssembly\r\nSelf Assembly\r\nDimensions (in Inches)\r\nH 23 x W 11 x D 30\r\nProduct Rating\r\n4.5\r\nWarranty\r\n6 Months\' Warranty\r\nSku\r\nFN2016600-S-PM2608', 'Wood grains will vary from product to product in case of solid wood furniture.', '', '', '', 1),
(76, 21, 'Brown Mahogany Wood Foldable Kitchen Organiser', 4000, 2899, 1, '333288925_brown-mahogany-wood--foldable-kitchen-organiser-brown-mahogany-wood--foldable-kitchen-organiser-8nr8bm.jpg', 'Brand\r\nBrick Brown\r\nAssembly\r\nNo Assembly Required\r\nMaterial\r\nWood\r\nPack Content\r\nSet of 1 Foldable Organiser\r\nSku\r\nKD2137532-S-PM37332', 'BrandBrick Brown\r\nWhen it comes to form and function, this Foldable Double Tray works hard. This piece of art makes a fantastic presentation. Mahogany finish wooden double tray. Organizer for your Grocery, tableware, etc. Perfect for casual dining inside or out.', '', '', '', 1),
(77, 21, 'Denham Kitchen Metal Racks Basic With Oven Space In Silver Colour', 849, 499, 1, '627991820_denham-kitchen-metal-racks-basic-with-oven-space-in-silver-colour-by-tunehome-denham-kitchen-metal-r-7iwn0q.jpg', 'Brand\r\nTUNEHOME\r\nAssembly\r\nSelf Assembly\r\nDimensions (In Centimeters)\r\nH 41 x W 56 x D 36\r\nDimensions (in Inches)\r\nH 16 x W 22 x D 14\r\nPrimary Material\r\nMetal\r\nProduct Rating\r\n3.5\r\nRoom Type\r\nDining Room\r\nWeight\r\n2.1 KG\r\nSku\r\nFN1966856-S-PM37980', 'Furniture having intricate hand-painted details are individual unique pieces and may have slight distinctions and variance between the picture and actual product.', '', '', '', 1),
(78, 18, 'Stella TV Console for TVs in WhiteYol Finish', 119999, 90999, 1, '519780044_stella-tv-unit-in-white-colour-by-yol-stella-tv-unit-in-white-colour-by-yol-n5eytx.jpg', 'Brand\r\nYol\r\nAssembly\r\nCarpenter Assembly\r\nDimensions (In Centimeters)\r\nH 44 x W 245 x D 64\r\nDimensions (in Inches)\r\nH 17.5 x W 96.5 x D 25\r\nPrimary Material\r\nEngineered Wood\r\nRoom Type\r\nLiving Room\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n95 KG\r\nSku\r\nFN1947113-P-WH38149', 'Depending on your screen settings and resolution on your device there may be a slight variance in fabric color and wood polish of the image and actual product.\r\nWood grains will vary from product to product in case of solid wood furniture.', '', '', '', 1),
(79, 18, 'Zhemgang Solid Wood Arm Chair In Distressed White Finish', 34599, 28999, 1, '412674030_zhemgang-teakwood-arm-chair-in-distressed-white-colour-zhemgang-teakwood-arm-chair-in-distressed-whi-rmjxrl.jpg', 'Brand\r\nOpaque Studio\r\nAssembly\r\nNo Assembly Required\r\nDimensions (In Centimeters)\r\nH 99 x W 55 x D 53\r\nDimensions (in Inches)\r\nH 39 x W 22 x D 21\r\nPrimary Material\r\nTeak Wood\r\nRoom Type\r\nLiving Room\r\nSeating Height\r\n19\r\nWeight\r\n14 KG\r\nSku\r\nFN2105354-S-PM36179', 'Accessories shown in the image are only for representation and are not part of the product.', '', '', '', 1),
(80, 18, 'Amari Metal End Table In Black Finish', 14999, 11499, 1, '973882490_amari-metal-end-table-in-black-finish-amari-metal-end-table-in-black-finish-chlovw.jpg', 'Brand\r\nOrange Tree\r\nAssembly\r\nCarpenter Assembly\r\nDimensions (In Centimeters)\r\nH 60 x W 40 x D 75\r\nDimensions (in Inches)\r\nH 24 x W 16 x D 30\r\nPrimary Material\r\nMetal\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n10 KG\r\nSku\r\nFN2129546-S-PM39447', 'Amari Side Table\'s sleek dark finish spotlights the Acacia wood grain at two levels.\r\nThe metal frame keeps it sturdy but lightweight. The criss-cross metal bars add a sculptural element to the piece.', '', '', '', 1),
(81, 18, 'Kanta Marble Nesting Coffee Table In White Colour (Set Of 2)', 77999, 64999, 1, '915046691_kanta-marble-coffee-table---set-of-two-kanta-marble-coffee-table---set-of-two-cemxzz.jpg', 'Brand\r\nZiba Homes\r\nAssembly\r\nCarpenter Assembly\r\nDimensions (In Centimeters)\r\nLarge:H 35.98 x W 35.98 x D Large ; Small:H 39.4 x W 39.4 x D\r\nDimensions (in Inches)\r\nLarge:H 18 x W 36 x D 36 ; Small:H 15 x W 39 x D 39\r\nPrimary Material\r\nMarble\r\nRoom Type\r\nLiving Room\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n350 KG\r\nSku\r\nFN2177093-S-PM39490', 'Depending on your screen settings and resolution on your device there may be a slight variance in fabric color and wood polish of the image and actual product.\r\nWood grains will vary from product to product .', '', '', '', 1),
(82, 23, 'Motion Sensor Auto Chargeable Exterior Outdoor LED Wall Light', 499, 349, 1, '954500917_motion-sensor-auto-chargeable-exterior-outdoor-led-wall-light-motion-sensor-auto-chargeable-exterior-u1gerq.jpg', 'Brand\r\nDelightful Decor\r\nAssembly\r\nNo Assembly Required\r\nBulb Included\r\nNo\r\nColour\r\nBlack\r\nDimensions\r\nL 6.3 x B 1 x H 5.9\r\nDimensions (In Centimeters)\r\nL 16 x B 2.5 x H 15\r\nHolder & Plug type\r\nInbuilt LED\r\nMaterial\r\nMetal\r\nPack Content\r\nPack of 1- Outdoor Light\r\nProduct Rating\r\n4.5\r\nWeight\r\n0.4 Kg\r\nSku\r\nLL2182793-S-PM40739', 'Elevate your outdoor ambiance with our wall-mountable solar light. Designed for easy installation on any exterior wall, this weather-resistant light effortlessly combines elegance with functionality. Powered by solar energy, it provides efficient illumination, and the motion sensor adds a layer of security. Stylish and practical, it\'s a seamless addition to your outdoor decor. SOLAR-POWERED ILLUMINATION: Harness the power of the sun with our wall-mountable outdoor solar light, providing eco-friendly and cost-effective lighting for your outdoor spaces. EASY INSTALLATION: Effortlessly mount the solar light on any exterior wall, fence, or post with included hardware, making it a convenient addition to your outdoor decor. DURABLE DESIGN: Built to withstand the elements, our outdoor solar light features rugged construction and weather-resistant materials, ensuring year-round functionality. STYLISH DESIGN: Elevate your outdoor aesthetics with an elegant solar light design, blending seamlessly with your exterior decor while providing practical lighting solutions. EASY WALL MOUNTING: Simplify your outdoor space with our wall-mounted solar light. Effortless installation ensures quick setup, while reliable lighting enhances your surroundings without taking up extra space.', '', '', '', 1);
INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(83, 23, 'Black & Gold Aluminium 6 Watt LED Outdoor Wall Light', 2100, 1800, 1, '760483646_black---gold-aluminium-6-watt-led-outdoor-wall-light-black---gold-aluminium-6-watt-led-outdoor-wall--ztsra6.jpg', 'Brand\r\nEliante by Jainsons Lights\r\nAssembly\r\nNo Assembly Required\r\nBulb (Watt)\r\n6 Watt\r\nBulb Included\r\nNo\r\nColour\r\nBlack\r\nDimensions\r\nL 3 x B 3 x H 6\r\nDimensions (In Centimeters)\r\nL 7.6 x B 7.6 x H 15.2\r\nHolder & Plug type\r\nInbuilt LED\r\nMaterial\r\nAluminium\r\nPack Content\r\n1pc of Outdoor Wall Lights\r\nWeight\r\n0.2 Kg\r\nSku\r\nLL2183088-S-PM31431', 'Pack Content- 1pc of Outdoor Wall Lights\r\n\r\nFeature- Be it a contemporary or modern setting, this uniquely designed Light allows you to experience the beauty of a well lit room. It exudes a sense of class and elegance with a stylish and well designed wall light that will embellish your home and also brightens the aura of the place.\r\n\r\nLED InBuilt- Yes\r\n\r\nBase Material- Aluminium\r\n\r\nShade Material- NA\r\n\r\nBase Colour- Black & Gold\r\n\r\nShade Colour- Black & Gold\r\n\r\nPower Source- Electric Operated\r\n\r\nNo. of Bulb Holders- 1\r\n\r\nBulb Included- No\r\n\r\nBulb Recommended (Watt)- 6 Watt\r\n\r\nCare Instruction- Use a dry cloth to wipe the surface of the lamp.\r\n\r\nDimable Light- No\r\n\r\nType of Light- Inbuilt LED\r\n\r\nLight Colour- Warm Yellow\r\n\r\nAdjustable Wire Length- NA\r\n\r\nWire Length - NA\r\n\r\nSwitch type- NA\r\n\r\nNet Weight- 0.2 Kg\r\n\r\nHolder & Plug type- Inbuilt LED\r\n\r\nLamp Total Dimension- L 3 x B 3 x H 6', '', '', '', 1),
(84, 23, 'Axle Steel & Braided Rope Outdoor Table In Thblack Grey Finish', 7700, 6400, 1, '574913465_axle-steel---braided-rope-outdoor-table-in-thblack-grey-finish-finish-axle-steel---braided-rope-outd-unimkj.jpg', 'Brand\r\nAdvent International\r\nAssembly\r\nNo Assembly Required\r\nCollections\r\nThe Rope Collection\r\nDimensions (In Centimeters)\r\nH 48 x W 46 x D 46\r\nDimensions (in Inches)\r\nH 19 x W 18 x D 18\r\nPrimary Material\r\nPolyester\r\nRoom Type\r\nOutdoor Furniture\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n5.2 KG\r\nSku\r\nFN2170572-S-PM42152', 'Furniture having intricate hand-painted details are individual unique pieces and may have slight distinctions and variance between the picture and actual product.', '', '', '', 1),
(85, 23, 'Capital UP Down LED Outdoor Wall Light', 3500, 2200, 1, '147470857_capital-up-down-led-outdoor-wall-light-capital-up-down-led-outdoor-wall-light-tsb3dj.jpg', 'Brand\r\nKapoor Lampshades\r\nAssembly\r\nNo Assembly Required\r\nBulb (Watt)\r\n40 Watt\r\nBulb Included\r\nNo\r\nColour\r\nGrey\r\nDimensions\r\nL 4 x B 4 x H 6\r\nDimensions (In Centimeters)\r\nL 10.2 x B 10.2 x H 15.2\r\nHolder & Plug type\r\nInbuilt LED\r\nMaterial\r\nAluminium\r\nPack Content\r\n1 Pc Outdoor Wall Lights\r\nWarranty\r\n6 Months\' Warranty\r\nWeight\r\n0.5 Kgs\r\nSku\r\nLL2178464-S-PM20949', 'Pack Content- 1 Pc Outdoor Wall Lights\r\n\r\nFeature-- Designed to illuminate your outdoor spaces with unparalleled brilliance, this powerhouse of a fixture guarantees unmatched performance and durability. With its sleek and modern design, it effortlessly enhances any professional setting while delivering an impressive upward and downward illumination. Crafted with precision engineering, this outdoor wall light is built to withstand even the harshest elements, ensuring years of reliable service. Illuminate your world like never before with the Capital UP Down LED Outdoor Wall Light - the ultimate choice for professionals seeking unmatched quality and style in their lighting solutions.\r\n\r\nLED InBuilt- Yes\r\n\r\nPrimary Material- Aluminium\r\n\r\nShade Material- NA\r\n\r\nPrimary Colour- Grey\r\n\r\nShade Colour- NA\r\n\r\nPower Source- Electric Operated\r\n\r\nNo. of Bulb Holders- 4\r\n\r\nBulb Included- 2\r\n\r\nBulb Recommended (Watt)- 40 Watt\r\n\r\nVoltage- 220-240 V\r\n\r\nDimable Light- No\r\n\r\nType of Light- LED\r\n\r\nLamps Base Diameter- NA\r\n\r\nLamps Base Diameter- NA\r\n\r\nTotal- Shade Dimensions- Inches- N/A\r\n\r\nLight Colour- White\r\n\r\nWire Length - 0.25 Mtrs\r\n\r\nHolder & Plug type- E27 Holder\r\n\r\nLamp Total Dimension- L 4 x B 4 x H 6', '', '', '', 1),
(86, 23, 'Quad Steel & Braided Rope Outdoor Table In Black Grey Finish', 11000, 9000, 1, '479238159_quad-steel---braided-rope-outdoor-table-in-black-grey-finish-finish-quad-steel---braided-rope-outdoo-in9mbr.jpg', 'Brand\r\nAdvent International\r\nAssembly\r\nNo Assembly Required\r\nCollections\r\nThe Rope Collection\r\nDimensions (In Centimeters)\r\nH 53 x W 46 x D 46\r\nDimensions (in Inches)\r\nH 21 x W 18 x D 18\r\nPrimary Material\r\nPolyester\r\nRoom Type\r\nOutdoor Furniture\r\nSeating Height\r\n18\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n6.6 KG\r\nSku\r\nFN2170530-S-PM42152', 'The Primary material is the main material used to manufacture the product and in addition to the primary material there might also be other type of materials used in the manufacturing of the product.', '', '', '', 1),
(87, 23, 'Shield 10 Watt LED Outdoor Wall lamp', 3400, 2100, 1, '855300918_shield-10-watt-led-outdoor-wall-lamp-shield-10-watt-led-outdoor-wall-lamp-auyl5b.jpg', 'Brand\r\nSmartway Lighting\r\nAssembly\r\nNo Assembly Required\r\nBulb (Watt)\r\n10 WT\r\nBulb Included\r\nNo\r\nColour\r\nBlack\r\nDimensions\r\nL 9 x B 3.1 x H 9\r\nDimensions (In Centimeters)\r\nL 22.9 x B 7.9 x H 22.9\r\nHolder & Plug type\r\nInbuilt LED\r\nMaterial\r\nMetal\r\nPack Content\r\n1 Wall Light With Installation Accessories\r\nWeight\r\n0.2 Kg\r\nSku\r\nLL2161304-S-PM35281', 'Smartway Lighting\r\nLuxurious Wall Lamps for adding Grace to Your Interiors', '', '', '', 1),
(88, 23, 'Bulkhead Rainproof 12 Watts Warm White LED Outdoor Wall Light', 2199, 1799, 1, '927351131_bulkhead-rainproof-12-watts-warm-white-led-outdoor-wall-light-bulkhead-rainproof-12-watts-warm-white-bbxzd9.jpg', 'Brand\r\nMufasa\r\nAssembly\r\nNo Assembly Required\r\nBulb Included\r\nYes\r\nColour\r\nBrown\r\nDimensions\r\nL 10.2 x B 4.7 x H 4.7\r\nDimensions (In Centimeters)\r\nL 10.2 x B 4.7 x H 4.7\r\nHolder & Plug type\r\nInbuilt LED\r\nMaterial\r\nMetal\r\nPack Content\r\nPack of 1- Outdoor Wall Light\r\nShade Colour\r\nTransparent\r\nShade Material\r\nAcrylic\r\nWeight\r\n0.6 Kg\r\nSku\r\nLL2131744-S-PM29424', 'Brand	?Mufasa\r\nColour	?Warm White\r\nMaterial	?Aluminium\r\nStyle	?Modern\r\nLight fixture form	?Wall\r\nRoom Type	?Garden, Outdoor, Patio\r\nProduct Dimensions	?26L x 12W x 12H Centimeters\r\nSpecific Uses For Product	?Garden, Garage, Patio\r\nIndoor/Outdoor Usage	?Outdoor\r\nPower Source	?Corded Electric\r\nInstallation Type	?Semi Flush Mount\r\nSpecial Feature	?Waterproof\r\nLight Source Type	?LED\r\nFinish Type	?Powder Coated\r\nShade Material	?Aluminium\r\nVoltage	?220 Volts (AC)\r\nIncluded Components	?LED Light\r\nEmbellishment	?Waterproof\r\nSpecification Met	?CE\r\nNumber of Items	?1\r\nWattage	?12 Watts\r\nManufacturer	?Mufasa\r\nPart Number	?12W LUMINAIRES\r\nCollection	?Wall light\r\nFinish types	?Powder Coated\r\nSpecial Features	?Waterproof\r\nShade Colour	?Warm white\r\nSwitch Style	?Push button switch\r\nSwitch Installation Type	?Wall Mount\r\nBatteries Included	?No\r\nBatteries Required	?No\r\nManufacturer	?Mufasa\r\nCountry of Origin	?China', '', '', '', 1),
(89, 23, 'Bulkhead Rainproof 21 Watts Warm White LED Outdoor Up & Down Wall Light', 1499, 1199, 1, '666634649_bulkhead-rainproof-21-watts-warm-white-led-outdoor-up---down-wall-light-bulkhead-rainproof-21-watts--lvaldd.jpg', 'Brand\r\nMufasa\r\nAssembly\r\nNo Assembly Required\r\nBulb Included\r\nYes\r\nColour\r\nBrown\r\nDimensions\r\nL 4.7 x B 5.5 x H 4.7\r\nDimensions (In Centimeters)\r\nL 4.7 x B 5.5 x H 4.7\r\nHolder & Plug type\r\nInbuilt LED\r\nMaterial\r\nMetal\r\nPack Content\r\nPack of 1- Outdoor Wall Light\r\nProduct Rating\r\n5.0\r\nShade Colour\r\nTransparent\r\nShade Material\r\nAcrylic\r\nWeight\r\n0.6 Kg\r\nSku\r\nLL2131742-S-PM29424', 'Brand	?Mufasa\r\nColour	?Warm White\r\nMaterial	?Aluminium\r\nStyle	?Modern\r\nLight fixture form	?Wall\r\nRoom Type	?Garden, Outdoor, Patio\r\nSpecific Uses For Product	?Garden, Patio\r\nIndoor/Outdoor Usage	?Outdoor\r\nPower Source	?Corded Electric\r\nInstallation Type	?Wall Mount\r\nSpecial Feature	?Waterproof\r\nLight Source Type	?LED\r\nFinish Type	?Powder Coated\r\nShade Material	?Acrylic\r\nNumber of Light Sources	?1\r\nVoltage	?110 Volts\r\nShape	?Cylindrical\r\nEmbellishment	?Waterproof\r\nItem Weight	?600 Grams\r\nWattage	?10 Watts\r\nBulb Base	?E27\r\nManufacturer	?Mufasa\r\nHeight	?12 Centimeters\r\nLength	?14 Centimeters\r\nWidth	?12 Centimeters\r\nFinish types	?Powder Coated\r\nSpecial Features	?Waterproof\r\nShade Colour	?Warm white\r\nSwitch Style	?Push button switch\r\nSwitch Installation Type	?Surface\r\nBatteries Included	?No\r\nBatteries Required	?No\r\nManufacturer	?Mufasa\r\nCountry of Origin	?China', '', '', '', 1),
(90, 24, 'Maya 2 Door Wardrobe In Vintage Sheesham Finish With Loft Storage', 15999, 11999, 1, '459976553_maya-2-door-wardrobe-in-vintage-sheesham-finish-with-loft-maya-2-door-wardrobe-in-vintage-sheesham-f-obdfkr.jpg', 'Brand\r\nMintwud from Pepperfry\r\nAssembly\r\nCarpenter Assembly\r\nCollections\r\nWardrobes By Mintwud\r\nDimensions (In Centimeters)\r\nH 239 x W 70 x D 46\r\nDimensions (in Inches)\r\nH 94 x W 27.5 x D 18\r\nPrimary Material\r\nEngineered Wood\r\nProduct Rating\r\n5.0\r\nRoom Type\r\nBedroom\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n68 KG\r\nSku\r\nFN2152491-S-WH35499', 'Wardrobe handle material : seasoned solid wood handle', '', '', '', 1),
(91, 24, 'Gabriel Velvet Bench In Ivory Colour With Storage', 16599, 12499, 1, '542840886_gabriel-velvet-bench-in-ivory-colour-with-storage-gabriel-velvet-bench-in-ivory-colour-with-storage-uock10.jpg', 'Brand\r\nCasacraft from Pepperfry\r\nAssembly\r\nCarpenter Assembly\r\nCollections\r\nGabriel\r\nDimensions (In Centimeters)\r\n43 cm X 122 cm X 46 cm\r\nDimensions (in Inches)\r\nH 17 x W 48 x D 18\r\nPrimary Material\r\nVelvet Fabric\r\nProduct Rating\r\n5.0\r\nRoom Type\r\nLiving Room\r\nSeating Height\r\n17\r\nWarranty\r\n36 Months\' Warranty\r\nWeight\r\n25 KG\r\nSku\r\nFN2170118-S-PM26478', 'Upholstery: 100% Premium Velvet Fabric\r\n\r\nLeg: Metal Legs', '', '', '', 1),
(92, 24, 'Unique Single Bed in Wenge Finish with Box Storage', 13799, 11699, 1, '208485463_unique-single-bed-in-wenge-finish-with-box-storage-unique-single-bed-in-wenge-finish-with-box-storag-girqqj.jpg', 'Brand\r\nNeudot\r\nAssembly\r\nCarpenter Assembly\r\nDimensions (In Centimeters)\r\nH 30 x W 198 x D 81\r\nDimensions (in Inches)\r\nH 12 x W 78 x D 32\r\nPrimary Material\r\nEngineered Wood\r\nProduct Rating\r\n4.5\r\nRecommended Mattress Size\r\n75 L x 30 W Inch\r\nRoom Type\r\nBedroom\r\nSeating Height\r\n14\r\nStorage\r\nBox Storage\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n48.5 KG\r\nSku\r\nFN2046635-S-PM39974', 'Accessories shown in the image are only for representation and are not part of the product.', '', '', '', 1),
(93, 24, 'Gooseberries Kids Storage Cabinet in Pink Colour', 23999, 21000, 1, '956921757_picture-perfect-storage-cabinet-in-pinwheel-by-boingg!-picture-perfect-storage-cabinet-in-pinwheel-b-ikguao.jpg', 'Brand\r\nBoingg! - A Happy Start\r\nAssembly\r\nAssembly by Brand (Installation in 72 hours)\r\nColour\r\nOak\r\nDimensions (In Centimeters)\r\nH 122 x W 76 x D 51\r\nDimensions (in Inches)\r\nH 48 x W 30 x D 20\r\nPrimary Material\r\nEngineered Wood\r\nProduct Rating\r\n5.0\r\nRoom Type\r\nKids Room\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n35 KG\r\nSku\r\nFN1786871-S-PM42637', 'Lets bring in pattern play and jazz up the humble almirah like you never thought before!\r\n\r\nHigh Grade Laminate and Non-toxic Paint.', '', '', '', 1),
(94, 24, 'Emrys Shoe Rack with Seating & Drawer Storage in Teak Finish', 4999, 3999, 1, '384933800_emrys-shoe-rack-with-seating-in-teak-finish-emrys-shoe-rack-with-seating-in-teak-finish-u3izf7.jpg', 'Brand\r\nFine Group\r\nAssembly\r\nCarpenter Assembly\r\nDimensions (In Centimeters)\r\nH 76 x W 76 x D 30\r\nDimensions (in Inches)\r\nH 30 x W 30 x D 12\r\nPrimary Material\r\nEngineered Wood\r\nProduct Rating\r\n4.5\r\nRoom Type\r\nLiving Room\r\nSeating Height\r\n18\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n10 KG\r\nSku\r\nFN2028797-S-PM36749', 'The shoe rack with Seat drawer is sturdy and offers lasting durability.\r\nIts spacious shelves and drawer, this shoe rack can hold up to 12 pairs of shoes, providing storage space for your footwear collection and accessories.\r\nThe open design of the shelves ensures easy access to your shoes, while the closed drawer keeps them safe from dust and dirt.', '', '', '', 1),
(95, 24, 'Persia Single Bed in Wenge Finish with Box Storage', 8999, 6999, 1, '206889140_persia-single-bed-in-wenge-finish-with-box-storage-persia-single-bed-in-wenge-finish-with-box-storag-mwinek.jpg', 'Brand\r\nMintwud from Pepperfry\r\nAssembly\r\nCarpenter Assembly\r\nDimensions (In Centimeters)\r\nH 82 x W 94 x D 201\r\nDimensions (in Inches)\r\nH 32 x W 37 x D 79\r\nPrimary Material\r\nEngineered Wood\r\nProduct Rating\r\n4.5\r\nRecommended Mattress Size\r\n78 L x 36 W Inch\r\nRoom Type\r\nBedroom\r\nSeating Height\r\n11\r\nStorage\r\nBox Storage\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n70 KG\r\nSku\r\nFN2162787-S-PM38363', 'Accessories shown in the image are only for representation and are not part of the product.', '', '', '', 1),
(96, 24, 'Mubila Fabric Ottoman in Charcoal Grey Colour With Storage', 9999, 6999, 1, '527774484_mubila-storage-ottoman-in-grey-by-febonic-mubila-storage-ottoman-in-grey-by-febonic-2umzjy.jpg', 'Brand\r\nFebonic\r\nAssembly\r\nCarpenter Assembly\r\nDimensions (In Centimeters)\r\nH 46 x W 66 x D 66\r\nDimensions (in Inches)\r\nH 18 x W 26 x D 26\r\nPrimary Material\r\nFabric\r\nProduct Rating\r\n4.5\r\nRoom Type\r\nLiving Room\r\nSeating Height\r\n18\r\nSofa Firmness\r\nMedium\r\nWarranty\r\n36 Months\' Warranty\r\nWeight\r\n15 KG\r\nSku\r\nFN1889393-S-PM36608', 'Frame Material : Solid Wood Neem Wood 2\"x1\"\r\nFrame Material : 12MM Neem Hard Wood Plywood\r\nFabric Type : Poly Cotton 450 GSM\r\nLeg : Black Polised Neem Wood\r\nSeating Level - Soft seating\r\nThrow Cushion -Recron fiber\r\nSeating Foam : A Grade PU Foam 32 D /28D/ SS 32D\r\nSuspension System : Webbing Belt\r\nBrand Warranty : 36 Months\r\nCushion : Poly Fiber\r\nPacking Material - 5ply Carton Box', '', '', '', 1),
(97, 24, 'Hana Side Table with Storage in Wenge Finish', 499, 359, 1, '748995358_hana-bed-side-table-hana-bed-side-table-l5axfw.jpg', 'Brand\r\nAuspicious Home\r\nAssembly\r\nCarpenter Assembly\r\nDimensions (In Centimeters)\r\nClose: H 81 x W 188 x D 61;Open: H 69 x W 188 x D 117\r\nDimensions (in Inches)\r\nClose: H 32 x W 74 x D 24;Open: H 32 x W 74 x D 46\r\nPrimary Material\r\nEngineered Wood\r\nProduct Rating\r\n5.0\r\nRoom Type\r\nLiving Room\r\nSeating Height\r\n17\r\nStorage\r\nBox Storage\r\nWarranty\r\n12 Months\' Warranty\r\nWeight\r\n95 KG\r\nSku\r\nFN1840703-S-PM29962', 'Fabric ( Moshi )\r\n\r\n \r\n\r\nFoam : 32 Density\r\n\r\n \r\n\r\nMattress Size : 72\" X 30\" X 110 MM ; 72\" X 30\" X 60 MM ( 32 DENSITY)', '', '', '', 1),
(98, 25, 'Iron Framed Leaf Wall Art In Multicolour', 1900, 1250, 1, '175232942_metal--floral-wall-art-by-padmavati-art-creations-metal--floral-wall-art-by-padmavati-art-creations-vzmrmf.jpg', 'Brand\r\nPadmavati Art Creations\r\nAssembly\r\nNo Assembly Required\r\nColour\r\nMulticolour\r\nDimensions (In Centimeters)\r\n22.86 X 3.81 X 60.96 In cm\r\nLED\r\nWithout LED\r\nMaterial\r\nIron\r\nPack Content\r\n1 Wall Art\r\nProduct Rating\r\n4.0\r\nWeight\r\n1 kg\r\nSku\r\nDE1844757-S-PM31335', 'Experience style with a perfect blend of utility, by using these products from Pepperfry. Here you will find a fleet of options in terms of designs, colours, dimensions, and textures that will keep you coming back for more. A one stop-shop for home decor and furniture, Pepperfry sells a home product every 30 seconds.', '', '', '', 1),
(99, 25, 'Brown Beads Raw Silk Framed Wall Art', 2100, 1800, 1, '225272069_gold-beads-on-raw-silk-6-5-x-0-5-x-15-5-inch-exquisite-framed-wall-art-by-clasicraft-gold-beads-on-r-ozxux4.jpg', 'Brand\r\nClasiCraft\r\nArtist\r\nS.Rasool\r\nAssembly\r\nSelf Assembly\r\nColour\r\nGold\r\nDimensions\r\nLength: 6.5, Width: 0.5, Height: 15.5 Inches\r\nDimensions (In Centimeters)\r\n16.51 X 1.27 X 39.37 In cm\r\nFrame Type\r\nFramed\r\nMaterial\r\nWood\r\nOrientation\r\nPortrait\r\nPack Content\r\n1 Exquisite Wall Art\r\nProduct Rating\r\n4.0\r\nWeight\r\n500 Gms\r\nSku\r\nDE1488869-S-PM3312', 'This piece of exquisite bead and sequin art is exemplified by its use of Raw Silk to form the base of its design. Delicately woven to form abstract conceptualisations, this age old tradition of hand crafted wizardry requires immense amounts of patience and skill to perfect. It will delight the connoisseurs and regular art aficionados alike, and is sure to make any living space brighter and more joyous.A one stop-shop for home decor and furniture, Pepperfry sells a home product every 30 seconds.', '', '', '', 1),
(100, 25, 'Multicolour Hand Painted Musician Doll Frame Wall Art', 1900, 1500, 1, '951064661_multicolour-hand-painted--musician-doll-frame-wall-art-by-padmavati-art-creations-multicolour-hand-p-s22xio.jpg', 'Brand\r\nPadmavati Art Creations\r\nAssembly\r\nNo Assembly Required\r\nColour\r\nBlack\r\nDimensions (In Centimeters)\r\nLength: 41.91, Width: 7.62, Height: 25.4\r\nLED\r\nWithout LED\r\nMaterial\r\nMetal\r\nPack Content\r\n1 Metal Wall Art\r\nProduct Rating\r\n5.0\r\nWeight\r\n600 Grams\r\nSku\r\nDE1978154-S-PM31335', 'Add a vibe of creativity and class to your interior to enrich its ambience by installing these amazingly designed Metal Art. This astoundingly designed Metal Art is not only durable or unique looking, but it also beautifies your walls with artistic make & intricate detailing, while creating a unique vibe. A one stop-shop for home decor and furniture, Pepperfry sells a home product every 30 seconds.', '', '', '', 1),
(101, 25, 'Multicolour Ceramic Decorative Wall Plate', 1200, 1000, 1, '849089201_multicolour-ceramic-decorative-wall-plate-by-the-decor-mart-multicolour-ceramic-decorative-wall-plat-fo7urz.jpg', 'Brand\r\nThe Decor Mart\r\nAssembly\r\nSelf Assembly\r\nColour\r\nMulticolour\r\nDiameter\r\n10 Inches\r\nDimensions (In Centimeters)\r\nDiameter : 26 CM\r\nMaterial\r\nCeramic\r\nPack Content\r\n1 Wall Plate\r\nWeight\r\n0.58 Kilograms\r\nSku\r\nDE2105804-S-PM36095', 'The Decor Mart offers an exclusive range of handcrafted designer home dcor products that blend premium quality, affordability & functionality.While showcasing the many unique crafts of India, each product at The Decor Mart is an outcome of working extensively with designers with direct exposure to contemporary trends from global design centres.', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(12, 'Shitab', '123', 's@gmail.com', '123', '2024-05-06 04:27:54'),
(17, 'rohit', '1234', 'rohitprasad20022@gmail.com', '7439036900', '2024-05-20 05:43:02'),
(18, 'rohit', '1234', 'rohitprasad@gmail.com', '7439036900', '2024-05-20 05:43:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"ecom\",\"table\":\"product\"},{\"db\":\"ecom\",\"table\":\"users\"},{\"db\":\"ecom\",\"table\":\"order_details\"},{\"db\":\"ecom\",\"table\":\"orders\"},{\"db\":\"ecom\",\"table\":\"contact_us\"},{\"db\":\"ecom\",\"table\":\"categories\"},{\"db\":\"ecom\",\"table\":\"admin_users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-05-31 06:57:45', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
