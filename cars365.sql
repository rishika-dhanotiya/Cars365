-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2018 at 07:46 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cars365`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_master`
--

CREATE TABLE `admin_master` (
  `username` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_master`
--

INSERT INTO `admin_master` (`username`, `password`) VALUES
('admin', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `adsvisitor_db`
--

CREATE TABLE `adsvisitor_db` (
  `visitor_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `show_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brand_db`
--

CREATE TABLE `brand_db` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `conveniencedetails_master`
--

CREATE TABLE `conveniencedetails_master` (
  `conv_id` varchar(20) NOT NULL,
  `brand_id` varchar(10) DEFAULT NULL,
  `model_id` varchar(10) DEFAULT NULL,
  `variant_id` varchar(10) DEFAULT NULL,
  `pwr_steer` tinyint(1) DEFAULT NULL,
  `pwr_win_front` tinyint(1) DEFAULT NULL,
  `pwr_win_rear` tinyint(1) DEFAULT NULL,
  `remote_trunk` tinyint(1) DEFAULT NULL,
  `low_fuel_light` tinyint(1) DEFAULT NULL,
  `rear_ac_vents` tinyint(1) DEFAULT NULL,
  `steer_mnt_ctrl` tinyint(1) DEFAULT NULL,
  `cruise_ctrl` tinyint(1) DEFAULT NULL,
  `park_sensors` tinyint(1) DEFAULT NULL,
  `park_camera` tinyint(1) DEFAULT NULL,
  `gps` tinyint(1) DEFAULT NULL,
  `access_card_entry` tinyint(1) DEFAULT NULL,
  `keyless_entry` tinyint(1) DEFAULT NULL,
  `en_start_stop_btn` tinyint(1) DEFAULT NULL,
  `drive_modes` varchar(40) DEFAULT NULL,
  `cooled_glove_box` tinyint(1) DEFAULT NULL,
  `voice_ctrl` tinyint(1) DEFAULT NULL,
  `touch_sat_nav_sys` tinyint(1) DEFAULT NULL,
  `rear_curtain` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dimensiondetails_master`
--

CREATE TABLE `dimensiondetails_master` (
  `dimension_id` varchar(20) NOT NULL,
  `brand_id` varchar(10) DEFAULT NULL,
  `model_id` varchar(10) DEFAULT NULL,
  `variant_id` varchar(10) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `grnd_clearance` int(11) DEFAULT NULL,
  `wheel_base` int(11) DEFAULT NULL,
  `kerb_weight` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enginedetails_master`
--

CREATE TABLE `enginedetails_master` (
  `engine_id` int(11) NOT NULL,
  `brand_id` varchar(10) DEFAULT NULL,
  `model_id` varchar(10) DEFAULT NULL,
  `variant_id` varchar(10) DEFAULT NULL,
  `engine_type` varchar(20) DEFAULT NULL,
  `engine_desc` varchar(100) DEFAULT NULL,
  `engine_displacement` int(11) DEFAULT NULL,
  `no_of_cylinders` int(11) DEFAULT NULL,
  `max_power` varchar(40) DEFAULT NULL,
  `max_torque` varchar(40) DEFAULT NULL,
  `fuel_supply_system` varchar(20) DEFAULT NULL,
  `turbo_charger` tinyint(1) DEFAULT NULL,
  `super_charger` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enginedetails_master`
--

INSERT INTO `enginedetails_master` (`engine_id`, `brand_id`, `model_id`, `variant_id`, `engine_type`, `engine_desc`, `engine_displacement`, `no_of_cylinders`, `max_power`, `max_torque`, `fuel_supply_system`, `turbo_charger`, `super_charger`) VALUES
(1, '101', '1001', '2001', 'petrol', 'K Series Engine', 1200, 4, '9.5 bhp', '120 Nm', 'MPFI', 0, 0),
(2, '102', '1003', '2005', 'petrol', 'Kappa Engine', 1200, 4, '10 bhp', '169 Nm', 'MPFI', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `entertaindetails_master`
--

CREATE TABLE `entertaindetails_master` (
  `entertain_id` varchar(20) NOT NULL,
  `brand_id` varchar(10) DEFAULT NULL,
  `model_id` varchar(10) DEFAULT NULL,
  `variant_id` varchar(10) DEFAULT NULL,
  `cd_player` tinyint(1) DEFAULT NULL,
  `radio` tinyint(1) DEFAULT NULL,
  `tdin_audio` tinyint(1) DEFAULT NULL,
  `bluetooth` tinyint(1) DEFAULT NULL,
  `usb_aux` tinyint(1) DEFAULT NULL,
  `touch_screen` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exteriordetails_master`
--

CREATE TABLE `exteriordetails_master` (
  `exterior_id` varchar(20) NOT NULL,
  `brand_id` varchar(10) DEFAULT NULL,
  `model_id` varchar(10) DEFAULT NULL,
  `variant_id` varchar(10) DEFAULT NULL,
  `fog_lights` tinyint(1) DEFAULT NULL,
  `electric_orvm` tinyint(1) DEFAULT NULL,
  `rain_wipers` tinyint(1) DEFAULT NULL,
  `rear_wipers` tinyint(1) DEFAULT NULL,
  `alloy_wheels` tinyint(1) DEFAULT NULL,
  `rear_spoiler` tinyint(1) DEFAULT NULL,
  `sun_roof` tinyint(1) DEFAULT NULL,
  `orvm_turn` tinyint(1) DEFAULT NULL,
  `smoke_lamps` tinyint(1) DEFAULT NULL,
  `roof_rail` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fueldetails_master`
--

CREATE TABLE `fueldetails_master` (
  `fuel_id` varchar(20) NOT NULL,
  `brand_id` varchar(10) DEFAULT NULL,
  `model_id` varchar(10) DEFAULT NULL,
  `variant_id` varchar(10) DEFAULT NULL,
  `city_mileage` double DEFAULT NULL,
  `arai_mileage` double DEFAULT NULL,
  `fuel_type` varchar(20) DEFAULT NULL,
  `tank_capacity` int(11) DEFAULT NULL,
  `emission_norm` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `image_db`
--

CREATE TABLE `image_db` (
  `image_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `source` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interiordetails_master`
--

CREATE TABLE `interiordetails_master` (
  `interior_id` varchar(20) NOT NULL,
  `brand_id` varchar(10) DEFAULT NULL,
  `model_id` varchar(10) DEFAULT NULL,
  `variant_id` varchar(10) DEFAULT NULL,
  `ac` tinyint(1) DEFAULT NULL,
  `adjust_steer_height` tinyint(1) DEFAULT NULL,
  `adjust_steer_reach` tinyint(1) DEFAULT NULL,
  `tachometer` tinyint(1) DEFAULT NULL,
  `tripmeter` tinyint(1) DEFAULT NULL,
  `leather_seats` tinyint(1) DEFAULT NULL,
  `digi_odometer` tinyint(1) DEFAULT NULL,
  `folding_table` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `model_db`
--

CREATE TABLE `model_db` (
  `model_id` int(11) NOT NULL,
  `model_name` varchar(50) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `model_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `performdetails_master`
--

CREATE TABLE `performdetails_master` (
  `perform_id` varchar(20) NOT NULL,
  `brand_id` varchar(10) DEFAULT NULL,
  `model_id` varchar(10) DEFAULT NULL,
  `variant_id` varchar(10) DEFAULT NULL,
  `top_speed` int(11) DEFAULT NULL,
  `accelarate` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `postcar_db`
--

CREATE TABLE `postcar_db` (
  `car_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `modelyear` int(11) NOT NULL,
  `owners` int(11) NOT NULL,
  `kmsdriven` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `fuel_type` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `insurance` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `safetyfeatures_master`
--

CREATE TABLE `safetyfeatures_master` (
  `feature_id` varchar(20) NOT NULL,
  `brand_id` varchar(10) DEFAULT NULL,
  `model_id` varchar(10) DEFAULT NULL,
  `variant_id` varchar(10) DEFAULT NULL,
  `anti_lock_break` tinyint(1) DEFAULT NULL,
  `brake_assist` tinyint(1) DEFAULT NULL,
  `central_lock` tinyint(1) DEFAULT NULL,
  `pwr_door_lock` tinyint(1) DEFAULT NULL,
  `child_safety_lock` tinyint(1) DEFAULT NULL,
  `anti_theft_alarm` tinyint(1) DEFAULT NULL,
  `drvr_airbag` tinyint(1) DEFAULT NULL,
  `passenger_airbag` tinyint(1) DEFAULT NULL,
  `side_front_airbag` tinyint(1) DEFAULT NULL,
  `side_rear_airbag` tinyint(1) DEFAULT NULL,
  `projector_headlamp` tinyint(1) DEFAULT NULL,
  `rear_seat_belt` tinyint(1) DEFAULT NULL,
  `seat_belt_warn` tinyint(1) DEFAULT NULL,
  `traction_ctrl` tinyint(1) DEFAULT NULL,
  `child_seat` tinyint(1) DEFAULT NULL,
  `hill_assist` tinyint(1) DEFAULT NULL,
  `engine_immobile` tinyint(1) DEFAULT NULL,
  `engine_check_warn` tinyint(1) DEFAULT NULL,
  `EBD` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seatingdetails_master`
--

CREATE TABLE `seatingdetails_master` (
  `seat_id` varchar(20) NOT NULL,
  `brand_id` varchar(10) DEFAULT NULL,
  `model_id` varchar(10) DEFAULT NULL,
  `variant_id` varchar(10) DEFAULT NULL,
  `seat_capacity` int(11) DEFAULT NULL,
  `no_of_doors` int(11) DEFAULT NULL,
  `fld_rear_seats` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `steeringdetails_master`
--

CREATE TABLE `steeringdetails_master` (
  `steer_id` varchar(20) NOT NULL,
  `brand_id` varchar(10) DEFAULT NULL,
  `model_id` varchar(10) DEFAULT NULL,
  `variant_id` varchar(10) DEFAULT NULL,
  `steer_type` varchar(20) DEFAULT NULL,
  `steer_column` varchar(40) DEFAULT NULL,
  `turn_radius` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suspensiondetails_master`
--

CREATE TABLE `suspensiondetails_master` (
  `susp_id` varchar(20) NOT NULL,
  `brand_id` varchar(10) DEFAULT NULL,
  `model_id` varchar(10) DEFAULT NULL,
  `variant_id` varchar(10) DEFAULT NULL,
  `front_susp` varchar(40) DEFAULT NULL,
  `rear_susp` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transdetails_master`
--

CREATE TABLE `transdetails_master` (
  `trans_id` varchar(20) NOT NULL,
  `brand_id` varchar(10) DEFAULT NULL,
  `model_id` varchar(10) DEFAULT NULL,
  `variant_id` varchar(10) DEFAULT NULL,
  `trans_type` varchar(20) DEFAULT NULL,
  `gear_box` varchar(20) DEFAULT NULL,
  `drive_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tyredetails_master`
--

CREATE TABLE `tyredetails_master` (
  `tyre_id` varchar(20) NOT NULL,
  `brand_id` varchar(10) DEFAULT NULL,
  `model_id` varchar(10) DEFAULT NULL,
  `variant_id` varchar(10) DEFAULT NULL,
  `tyre_size` varchar(20) DEFAULT NULL,
  `tyre_type` varchar(40) DEFAULT NULL,
  `wheel_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_db`
--

CREATE TABLE `user_db` (
  `user_id` int(11) NOT NULL,
  `uname` varchar(25) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL,
  `verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `variant_db`
--

CREATE TABLE `variant_db` (
  `variant_id` int(11) NOT NULL,
  `variant_name` varchar(50) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `variant_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adsvisitor_db`
--
ALTER TABLE `adsvisitor_db`
  ADD PRIMARY KEY (`visitor_id`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `brand_db`
--
ALTER TABLE `brand_db`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `conveniencedetails_master`
--
ALTER TABLE `conveniencedetails_master`
  ADD PRIMARY KEY (`conv_id`),
  ADD KEY `FK_conveniencedetails_master` (`brand_id`),
  ADD KEY `FK_conveniencedetails_master1` (`model_id`),
  ADD KEY `FK_conveniencedetails_master2` (`variant_id`);

--
-- Indexes for table `dimensiondetails_master`
--
ALTER TABLE `dimensiondetails_master`
  ADD PRIMARY KEY (`dimension_id`),
  ADD KEY `FK_dimensiondetails_master` (`brand_id`),
  ADD KEY `FK_dimensiondetails_master1` (`model_id`),
  ADD KEY `FK_dimensiondetails_master2` (`variant_id`);

--
-- Indexes for table `enginedetails_master`
--
ALTER TABLE `enginedetails_master`
  ADD PRIMARY KEY (`engine_id`),
  ADD KEY `FK_enginedetails_master1` (`brand_id`),
  ADD KEY `FK_enginedetails_master2` (`model_id`),
  ADD KEY `FK_enginedetails_master` (`variant_id`);

--
-- Indexes for table `entertaindetails_master`
--
ALTER TABLE `entertaindetails_master`
  ADD PRIMARY KEY (`entertain_id`),
  ADD KEY `FK_entertaindetails_master` (`brand_id`),
  ADD KEY `FK_entertaindetails_master1` (`model_id`),
  ADD KEY `FK_entertaindetails_master2` (`variant_id`);

--
-- Indexes for table `exteriordetails_master`
--
ALTER TABLE `exteriordetails_master`
  ADD PRIMARY KEY (`exterior_id`),
  ADD KEY `FK_exteriordetails_master` (`brand_id`),
  ADD KEY `FK_exteriordetails_master1` (`model_id`),
  ADD KEY `FK_exteriordetails_master2` (`variant_id`);

--
-- Indexes for table `fueldetails_master`
--
ALTER TABLE `fueldetails_master`
  ADD PRIMARY KEY (`fuel_id`),
  ADD KEY `FK_fueldetails_master` (`brand_id`),
  ADD KEY `FK_fueldetails_master1` (`model_id`),
  ADD KEY `FK_fueldetails_master2` (`variant_id`);

--
-- Indexes for table `image_db`
--
ALTER TABLE `image_db`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `interiordetails_master`
--
ALTER TABLE `interiordetails_master`
  ADD PRIMARY KEY (`interior_id`),
  ADD KEY `FK_interiordetails_master` (`brand_id`),
  ADD KEY `FK_interiordetails_master1` (`model_id`),
  ADD KEY `FK_interiordetails_master2` (`variant_id`);

--
-- Indexes for table `model_db`
--
ALTER TABLE `model_db`
  ADD PRIMARY KEY (`model_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `performdetails_master`
--
ALTER TABLE `performdetails_master`
  ADD PRIMARY KEY (`perform_id`),
  ADD KEY `FK_performdetails_master` (`brand_id`),
  ADD KEY `FK_performdetails_master1` (`model_id`),
  ADD KEY `FK_performdetails_master2` (`variant_id`);

--
-- Indexes for table `postcar_db`
--
ALTER TABLE `postcar_db`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `model_id` (`model_id`),
  ADD KEY `variant_id` (`variant_id`),
  ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `safetyfeatures_master`
--
ALTER TABLE `safetyfeatures_master`
  ADD PRIMARY KEY (`feature_id`),
  ADD KEY `FK_safetyfeatures_master` (`brand_id`),
  ADD KEY `FK_safetyfeatures_master1` (`model_id`),
  ADD KEY `FK_safetyfeatures_master2` (`variant_id`);

--
-- Indexes for table `seatingdetails_master`
--
ALTER TABLE `seatingdetails_master`
  ADD PRIMARY KEY (`seat_id`),
  ADD KEY `FK_seatingdetails_master` (`brand_id`),
  ADD KEY `FK_seatingdetails_master1` (`model_id`),
  ADD KEY `FK_seatingdetails_master2` (`variant_id`);

--
-- Indexes for table `steeringdetails_master`
--
ALTER TABLE `steeringdetails_master`
  ADD PRIMARY KEY (`steer_id`),
  ADD KEY `FK_steeringdetails_master1` (`brand_id`),
  ADD KEY `FK_steeringdetails_master` (`model_id`),
  ADD KEY `FK_steeringdetails_master2` (`variant_id`);

--
-- Indexes for table `suspensiondetails_master`
--
ALTER TABLE `suspensiondetails_master`
  ADD PRIMARY KEY (`susp_id`),
  ADD KEY `FK_suspensiondetails_master` (`brand_id`),
  ADD KEY `FK_suspensiondetails_master1` (`model_id`),
  ADD KEY `FK_suspensiondetails_master3` (`variant_id`);

--
-- Indexes for table `transdetails_master`
--
ALTER TABLE `transdetails_master`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `FK_transdetails_master` (`brand_id`),
  ADD KEY `FK_transdetails_master1` (`model_id`),
  ADD KEY `FK_transdetails_master2` (`variant_id`);

--
-- Indexes for table `tyredetails_master`
--
ALTER TABLE `tyredetails_master`
  ADD PRIMARY KEY (`tyre_id`),
  ADD KEY `FK_tyredetails_master` (`brand_id`),
  ADD KEY `FK_tyredetails_master1` (`model_id`),
  ADD KEY `FK_tyredetails_master2` (`variant_id`);

--
-- Indexes for table `user_db`
--
ALTER TABLE `user_db`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `variant_db`
--
ALTER TABLE `variant_db`
  ADD PRIMARY KEY (`variant_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `model_id` (`model_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adsvisitor_db`
--
ALTER TABLE `adsvisitor_db`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `brand_db`
--
ALTER TABLE `brand_db`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `enginedetails_master`
--
ALTER TABLE `enginedetails_master`
  MODIFY `engine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `image_db`
--
ALTER TABLE `image_db`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `model_db`
--
ALTER TABLE `model_db`
  MODIFY `model_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `postcar_db`
--
ALTER TABLE `postcar_db`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_db`
--
ALTER TABLE `user_db`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `variant_db`
--
ALTER TABLE `variant_db`
  MODIFY `variant_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `adsvisitor_db`
--
ALTER TABLE `adsvisitor_db`
  ADD CONSTRAINT `adsvisitor_db_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `postcar_db` (`car_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `adsvisitor_db_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_db` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `image_db`
--
ALTER TABLE `image_db`
  ADD CONSTRAINT `image_db_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `postcar_db` (`car_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_db`
--
ALTER TABLE `model_db`
  ADD CONSTRAINT `model_db_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand_db` (`brand_id`);

--
-- Constraints for table `postcar_db`
--
ALTER TABLE `postcar_db`
  ADD CONSTRAINT `postcar_db_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_db` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `postcar_db_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brand_db` (`brand_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `postcar_db_ibfk_3` FOREIGN KEY (`model_id`) REFERENCES `model_db` (`model_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `postcar_db_ibfk_4` FOREIGN KEY (`variant_id`) REFERENCES `variant_db` (`variant_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `postcar_db_ibfk_5` FOREIGN KEY (`image_id`) REFERENCES `image_db` (`image_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `variant_db`
--
ALTER TABLE `variant_db`
  ADD CONSTRAINT `variant_db_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand_db` (`brand_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `variant_db_ibfk_2` FOREIGN KEY (`model_id`) REFERENCES `model_db` (`model_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
