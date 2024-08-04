-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2023 at 10:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ofbms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_uname` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_uname`, `admin_email`, `admin_pwd`) VALUES
(1, 'admin', 'admin@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW');

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `airline_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`airline_id`, `name`, `seats`) VALUES
(1, 'Core Airways', 165),
(2, 'Echo Airline', 220),
(3, 'Spark Airways', 125),
(4, 'Peak Airways', 210),
(5, 'Homelander Airways', 185),
(9, 'Blue Airlines', 200),
(10, 'GoldStar Airways', 205),
(11, 'Novar Airways', 158),
(12, 'Aero Airways', 210),
(13, 'Nep Airways', 215),
(14, 'Delta Airlines', 135);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city`) VALUES
('Bangalore'),
('Delhi'),
('Guwahati'),
('Agra'),
('Jaipur'),
('Kolkata'),
('Chennai'),
('Chandigarh'),
('Srinagar'),
('Amritsar'),
('Mumbai'),
('Ahmedabad'),
('Patna');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feed_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `q1` varchar(250) NOT NULL,
  `q2` varchar(20) NOT NULL,
  `q3` varchar(250) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `arrivale` datetime NOT NULL,
  `departure` datetime NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `airline` varchar(20) NOT NULL,
  `Seats` varchar(110) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL,
  `status` varchar(6) DEFAULT NULL,
  `issue` varchar(50) DEFAULT NULL,
  `last_seat` varchar(5) DEFAULT '',
  `bus_seats` int(11) DEFAULT 20,
  `last_bus_seat` varchar(5) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_id`, `admin_id`, `arrivale`, `departure`, `Destination`, `source`, `airline`, `Seats`, `duration`, `Price`, `status`, `issue`, `last_seat`, `bus_seats`, `last_bus_seat`) VALUES
(1, 1, '2023-06-30 00:00:00', '2023-06-30 02:11:00', 'Bangalore', 'Delhi', 'Core Airways', '61', '1', 175, '', '', '21D', 20, ''),
(2, 1, '2023-07-05 11:15:00', '2023-07-05 10:05:00', 'Guwahati', 'Agra', 'Core Airways', '61', '1', 185, 'arr', '', '21D', 20, ''),
(3, 1, '2023-07-05 12:13:00', '2023-07-05 10:13:00', 'Jaipur', 'Agra', 'Spark Airways', '123', '2', 205, 'arr', '', '21B', 20, ''),
(4, 1, '2023-07-05 16:30:00', '2023-07-05 15:26:00', 'Jaipur', 'Bangalore', 'Echo Airline', '220', '1', 155, 'issue', '120', '', 20, ''),
(5, 1, '2023-07-05 15:30:00', '2023-07-05 12:30:00', 'Kolkata', 'Bangalore', 'Spark Airways', '125', '3', 326, '', '', '', 20, ''),
(6, 1, '2023-07-05 17:55:00', '2023-07-05 15:30:00', 'Bangalore', 'Jaipur', 'Spark Airways', '125', '2', 285, '', '', '', 20, ''),
(7, 1, '2023-07-05 20:50:00', '2023-07-05 18:50:00', 'Chennai', 'Bangalore', 'Spark Airways', '125', '2', 265, '', '', '', 20, ''),
(8, 1, '2023-07-06 00:55:00', '2023-07-05 17:00:00', 'Chandigarh', 'Chennai', 'Indian Airways', '183', '7', 615, 'arr', '', '21B', 20, ''),
(9, 1, '2022-07-05 17:09:00', '2022-07-05 16:05:00', 'Bangalore', 'Chennai', 'Peak Airways', '210', '1', 155, '', '', '', 20, ''),
(10, 1, '2023-07-06 13:10:00', '2023-07-06 11:05:00', 'Mumbai', 'Bangalore', 'Core Airways', '165', '2', 200, '', '', '', 20, ''),
(11, 1, '2023-07-05 19:10:00', '2023-07-05 18:05:00', 'Chennai', 'Srinagar', 'Echo Airline', '220', '1', 165, '', '', '', 20, ''),
(12, 1, '2023-07-05 21:10:00', '2023-07-05 19:05:00', 'Amritsar', 'Mumbai', 'Peak Airways', '210', '2', 320, '', '', '', 20, ''),
(13, 1, '2023-07-05 13:50:00', '2023-07-05 12:56:03', 'Bangalore', 'Amritsar', 'Core Airways', '165', '1', 110, 'issue', '110', '', 20, ''),
(14, 1, '2022-07-05 11:08:00', '2022-07-05 09:07:00', 'Chandigarh', 'Mumbai', 'Spark Airways', '125', '2', 195, 'issue', '120', '', 20, ''),
(15, 1, '2022-07-05 10:10:00', '2022-07-05 08:10:00', 'Jaipur', 'Amritsar', 'Peak Airways', '210', '2', 125, 'issue', '120', '', 20, ''),
(16, 1, '2023-07-05 18:10:00', '2023-07-05 16:09:00', 'Ahmedabad', 'Jaipur', 'Homelander Airways', '185', '2', 220, 'dep', '', '', 20, ''),
(17, 1, '2023-07-05 17:10:00', '2023-07-05 16:10:00', 'Mumbai', 'Agra', 'Echo Airline', '220', '1', 125, 'arr', '', '', 20, ''),
(18, 1, '2023-07-05 19:15:00', '2023-07-05 16:12:00', 'Agra', 'Bangalore', 'Core Airways', '165', '3', 275, 'dep', '', '', 20, ''),
(19, 1, '2023-07-05 23:40:00', '2023-07-05 20:31:00', 'Agra', 'Patna', 'Aero Airways', '210', '3', 295, '', '', '', 20, ''),
(20, 1, '2023-07-05 23:58:00', '2023-07-05 22:14:00', 'Patna', 'Chennai', 'Aero Airways', '208', '1', 185, 'dep', '', '21B', 20, ''),
(21, 1, '2023-07-06 10:14:00', '2023-07-05 23:15:04', 'Amritsar', 'Chennai', 'Blue Airlines', '200', '11', 965, '', '', '', 20, '');

-- --------------------------------------------------------

--
-- Table structure for table `passenger_profile`
--

CREATE TABLE `passenger_profile` (
  `passenger_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `mobile` varchar(110) NOT NULL,
  `dob` datetime NOT NULL,
  `f_name` varchar(20) DEFAULT NULL,
  `m_name` varchar(20) DEFAULT NULL,
  `l_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `passenger_profile`
--

INSERT INTO `passenger_profile` (`passenger_id`, `user_id`, `flight_id`, `mobile`, `dob`, `f_name`, `m_name`, `l_name`) VALUES
(1, 1, 1, '2147483647', '1995-01-01 00:00:00', 'Ram', 'Gopal', 'Sharma'),
(2, 2, 3, '2147483647', '1995-02-13 00:00:00', 'Hardik', 'Kumar', 'Dheer'),
(3, 3, 2, '2147483647', '1994-06-21 00:00:00', 'Harit', 'James', 'Bond'),
(4, 4, 2, '2147483647', '1995-05-16 00:00:00', 'Tina', 'Kumari', 'Sinha'),
(5, 2, 8, '7854444411', '1995-02-13 00:00:00', 'Karan', 'ARjun', 'Gandhi'),
(6, 2, 20, '7412585555', '1995-02-13 00:00:00', 'Klau', 'Kumar', 'Gupta'),
(7, 5, 1, '7894567894', '2023-06-02 00:00:00', 'kjkj', 'jflf', 'fkjfkl'),
(8, 5, 1, '7894561274', '2023-06-02 00:00:00', 'Shobhit', 'K', 'Gupta');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `card_no` varchar(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `expire_date` varchar(5) DEFAULT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`card_no`, `user_id`, `flight_id`, `expire_date`, `amount`) VALUES
('1010555677851111', 4, 2, '10/26', 370),
('1020445869651011', 2, 20, '12/25', 370),
('1111888889897778', 2, 3, '12/25', 205),
('1400565800004478', 2, 8, '12/25', 1230),
('14567894561234', 5, 1, '12/26', 175),
('1458799990001450', 3, 2, '12/25', 185),
('4204558500014587', 1, 1, '02/25', 350),
('764561234894561', 5, 1, '07/26', 175);

-- --------------------------------------------------------

--
-- Table structure for table `pwdreset`
--

CREATE TABLE `pwdreset` (
  `pwd_reset_id` int(11) NOT NULL,
  `pwd_reset_email` varchar(50) NOT NULL,
  `pwd_reset_selector` varchar(80) NOT NULL,
  `pwd_reset_token` varchar(120) NOT NULL,
  `pwd_reset_expires` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seat_no` varchar(10) NOT NULL,
  `cost` int(11) NOT NULL,
  `class` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `passenger_id`, `flight_id`, `user_id`, `seat_no`, `cost`, `class`) VALUES
(1, 1, 1, 1, '21A', 350, 'E'),
(2, 2, 3, 2, '21A', 205, 'E'),
(4, 3, 2, 3, '21A', 185, 'E'),
(6, 4, 2, 4, '21C', 370, 'E'),
(8, 5, 8, 2, '21A', 1230, 'E'),
(10, 6, 20, 2, '21A', 370, 'E'),
(12, 7, 1, 5, '21C', 175, 'E'),
(13, 8, 1, 5, '21D', 175, 'E');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'christine', 'christine@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(2, 'henry', 'henry@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(3, 'andre', 'andre@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(4, 'james', 'james@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(5, 'harvy', 'harvy@gmail.com', '$2y$10$WYgRxBC25DaEaK7cFHGmVOkCt0xwazEp39LnKxeHqVciMmz66Akuy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`airline_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feed_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  ADD PRIMARY KEY (`passenger_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`card_no`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `pwdreset`
--
ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwd_reset_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`),
  ADD KEY `passenger_id` (`passenger_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `airline`
--
ALTER TABLE `airline`
  MODIFY `airline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feed_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  MODIFY `passenger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pwdreset`
--
ALTER TABLE `pwdreset`
  MODIFY `pwd_reset_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  ADD CONSTRAINT `passenger_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `passenger_profile_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`),
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`passenger_id`) REFERENCES `passenger_profile` (`passenger_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
