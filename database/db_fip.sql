-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 17, 2023 at 01:54 AM
-- Server version: 5.7.24
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_fip`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ads`
--

CREATE TABLE `tbl_ads` (
  `ad_id` int(11) NOT NULL,
  `ad_name` varchar(10) NOT NULL,
  `ad_desc` varchar(500) NOT NULL,
  `ad_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_ads`
--

INSERT INTO `tbl_ads` (`ad_id`, `ad_name`, `ad_desc`, `ad_image`) VALUES
(1, 'Ad 1', 'Ad desc goes here', 'ad_1.jpg'),
(2, 'Ad 2', 'Ad desc goes here', 'ad_2.jpg'),
(3, 'Ad 3', 'Ad desc goes here', 'ad_3.jpg'),
(4, 'Ad 4', 'Ad desc goes here', 'portrait_ad_1.jpg'),
(5, 'Ad 5', 'Ad desc goes here', 'portrait_ad_2.jpg'),
(6, 'Ad 6', 'Ad desc goes here', 'portrait_ad_3.jpg'),
(7, 'Ad 7', 'Ad desc goes here', 'ad_1_bilboard_size.jpg'),
(8, 'Ad 8', 'Ad desc goes here', 'ad_2_bilboard_size.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_authors`
--

CREATE TABLE `tbl_authors` (
  `authors_id` int(11) NOT NULL,
  `authors_name` varchar(255) NOT NULL,
  `authors_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_authors`
--

INSERT INTO `tbl_authors` (`authors_id`, `authors_name`, `authors_email`) VALUES
(1, 'John Doe', 'john.doe@example.com'),
(2, 'Jane Smith', 'jane.smith@example.com'),
(3, 'Bob Johnson', 'bob.johnson@example.com'),
(4, 'Alice Lee', 'alice.lee@example.com'),
(5, 'Mike Brown', 'mike.brown@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_description` text NOT NULL,
  `event_date` date NOT NULL,
  `event_start_time` time NOT NULL,
  `event_end_time` time NOT NULL,
  `event_location` varchar(255) NOT NULL,
  `event_type` varchar(255) NOT NULL,
  `event_attendees` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_events`
--

INSERT INTO `tbl_events` (`event_id`, `event_name`, `event_description`, `event_date`, `event_start_time`, `event_end_time`, `event_location`, `event_type`, `event_attendees`) VALUES
(1, 'Tech Conference 2023', 'A technology conference for developers and enthusiasts', '2023-05-15', '09:00:00', '18:00:00', 'San Francisco Convention Center', 'Conference', 500),
(2, 'Marketing Seminar', 'A seminar on marketing strategies', '2023-06-20', '14:00:00', '16:00:00', 'New York City Hotel', 'Seminar', 100),
(3, 'Sales Workshop', 'A workshop on improving sales skills', '2023-07-10', '10:00:00', '13:00:00', 'Los Angeles Business Center', 'Workshop', 50),
(4, 'Leadership Summit', 'A summit on leadership and management', '2023-09-01', '08:00:00', '17:00:00', 'Chicago Conference Hall', 'Summit', 300);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_body`) VALUES
(1, 'Post 1', 'This is the first post.'),
(2, 'Post 2', 'This is the second post.'),
(3, 'Post 3', 'This is the third post.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribers`
--

CREATE TABLE `tbl_subscribers` (
  `subscriber_id` int(11) NOT NULL,
  `subscriber_email` varchar(255) NOT NULL,
  `subscriber_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_subscribers`
--

INSERT INTO `tbl_subscribers` (`subscriber_id`, `subscriber_email`, `subscriber_name`) VALUES
(1, 'john@example.com', 'John Doe'),
(2, 'jane@example.com', 'Jane Smith'),
(3, 'alice@example.com', 'Alice Williams');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_volunteers`
--

CREATE TABLE `tbl_volunteers` (
  `volunteers_id` int(11) NOT NULL,
  `volunteers_first_name` varchar(50) NOT NULL,
  `volunteers_last_name` varchar(50) NOT NULL,
  `volunteers_email` varchar(255) NOT NULL,
  `volunteers_phone_number` varchar(20) NOT NULL,
  `volunteers_address` varchar(255) NOT NULL,
  `volunteers_city` varchar(50) NOT NULL,
  `volunteers_state` varchar(50) NOT NULL,
  `volunteers_zip_code` varchar(20) NOT NULL,
  `volunteers_interests` text NOT NULL,
  `volunteers_availability` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_volunteers`
--

INSERT INTO `tbl_volunteers` (`volunteers_id`, `volunteers_first_name`, `volunteers_last_name`, `volunteers_email`, `volunteers_phone_number`, `volunteers_address`, `volunteers_city`, `volunteers_state`, `volunteers_zip_code`, `volunteers_interests`, `volunteers_availability`) VALUES
(1, 'John', 'Doe', 'johndoe@example.com', '555-123-4567', '123 Main St', 'Anytown', 'CA', '12345', 'Gardening, Cooking', 'Weekends');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_ads`
--
ALTER TABLE `tbl_ads`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `tbl_authors`
--
ALTER TABLE `tbl_authors`
  ADD PRIMARY KEY (`authors_id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  ADD PRIMARY KEY (`subscriber_id`);

--
-- Indexes for table `tbl_volunteers`
--
ALTER TABLE `tbl_volunteers`
  ADD PRIMARY KEY (`volunteers_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_ads`
--
ALTER TABLE `tbl_ads`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_authors`
--
ALTER TABLE `tbl_authors`
  MODIFY `authors_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  MODIFY `subscriber_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_volunteers`
--
ALTER TABLE `tbl_volunteers`
  MODIFY `volunteers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
