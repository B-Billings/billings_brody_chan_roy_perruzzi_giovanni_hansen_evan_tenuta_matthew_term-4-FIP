-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 06, 2023 at 08:15 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

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
  `ad_image` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_ads`
--

INSERT INTO `tbl_ads` (`ad_id`, `ad_name`, `ad_desc`, `ad_image`, `created_at`, `updated_at`) VALUES
(1, 'Disconnect', 'This is a social media styled ad of a man screaming in rage at a game.', 'disconnectedAd1Redesign.jpg', '2023-04-06 07:04:51', '2023-04-06 07:05:25'),
(2, 'Disconnect', 'This is a social media styled ad of a female gamer feeling sad due to Esports bullying.', 'disconnectedAd2Redesign.jpg', '2023-04-06 07:04:51', '2023-04-06 07:05:25'),
(3, 'Disconnect', 'This is a social media styled ad of a man raging during gamplay. With a stat relating to cyberbullying.', 'disconnectedAd3Redesign.jpg', '2023-04-06 07:04:51', '2023-04-06 07:05:25'),
(4, 'Disconnect', 'This has taken our Screaming Gamer ad and placed it in a practicle environment.', 'busAd1.jpg', '2023-04-06 07:04:51', '2023-04-06 07:05:25'),
(5, 'Disconnect', 'This has taken our Sad Gamer ad and placed it in a practicle environment.', 'busAd2.jpg', '2023-04-06 07:04:51', '2023-04-06 07:05:25'),
(6, 'Disconnect', 'This has taken our Screaming Gamer ad and placed it in a practicle environment.', 'billboardAd1.jpg', '2023-04-06 07:04:51', '2023-04-06 07:05:25'),
(7, 'Disconnect', 'This has taken our Screaming Gamer ad and placed it in a practicle environment.', 'billboardAd2.jpg', '2023-04-06 07:04:51', '2023-04-06 07:05:25'),
(8, 'Disconnect', 'This has taken our Sad Gamer ad and placed it in a practicle digital environment on the XBOX home screen.', 'xboxAd1.jpg', '2023-04-06 07:04:51', '2023-04-06 07:05:25'),
(9, 'Disconnect', 'This has taken our Screaming Gamer ad and placed it in a practicle digital environment on the XBOX home screen.', 'xboxAd2.jpg', '2023-04-06 07:04:51', '2023-04-06 07:05:25'),
(10, 'Disconnect', 'This image features a girl who is losing connection from reality due to the hate received in Esports.', 'LSC1.jpg', '2023-04-06 07:04:51', '2023-04-06 07:05:25'),
(11, 'Disconnect', 'This image features a boy who is losing connection from reality due to the hate received in Esports.', 'LSC2.jpg', '2023-04-06 07:04:51', '2023-04-06 07:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_authors`
--

CREATE TABLE `tbl_authors` (
  `authors_id` int(11) NOT NULL,
  `authors_name` varchar(255) NOT NULL,
  `authors_email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_authors`
--

INSERT INTO `tbl_authors` (`authors_id`, `authors_name`, `authors_email`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john.doe@example.com', '2023-04-06 07:09:16', '2023-04-06 07:09:16'),
(2, 'Jane Smith', 'jane.smith@example.com', '2023-04-06 07:09:16', '2023-04-06 07:09:16'),
(3, 'Bob Johnson', 'bob.johnson@example.com', '2023-04-06 07:09:16', '2023-04-06 07:09:16'),
(4, 'Alice Lee', 'alice.lee@example.com', '2023-04-06 07:09:16', '2023-04-06 07:09:16'),
(5, 'Mike Brown', 'mike.brown@example.com', '2023-04-06 07:09:16', '2023-04-06 07:09:16');

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
  `event_attendees` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_events`
--

INSERT INTO `tbl_events` (`event_id`, `event_name`, `event_description`, `event_date`, `event_start_time`, `event_end_time`, `event_location`, `event_type`, `event_attendees`, `created_at`, `updated_at`) VALUES
(1, 'Tech Conference 2023', 'A technology conference for developers and enthusiasts', '2023-05-15', '09:00:00', '18:00:00', 'San Francisco Convention Center', 'Conference', 500, '2023-04-06 07:10:21', '2023-04-06 07:10:21'),
(2, 'Marketing Seminar', 'A seminar on marketing strategies', '2023-06-20', '14:00:00', '16:00:00', 'New York City Hotel', 'Seminar', 100, '2023-04-06 07:10:21', '2023-04-06 07:10:21'),
(3, 'Sales Workshop', 'A workshop on improving sales skills', '2023-07-10', '10:00:00', '13:00:00', 'Los Angeles Business Center', 'Workshop', 50, '2023-04-06 07:10:21', '2023-04-06 07:10:21'),
(4, 'Leadership Summit', 'A summit on leadership and management', '2023-09-01', '08:00:00', '17:00:00', 'Chicago Conference Hall', 'Summit', 300, '2023-04-06 07:10:21', '2023-04-06 07:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_body`, `created_at`, `updated_at`) VALUES
(1, 'being a girl in gaming', 'i just wanna say that i was harrassed firsthand in esports, specifically in Overwatch. people will literally flame you just because you\'re a woman. I love the game, and it\'s gotten a lot better over the years but i don\'t like to talk a lot cause of it :/ I report the abusive players but i hope more change happens soon. thanks for doing this <3', '2023-04-06 07:11:39', '2023-04-06 07:11:39'),
(2, 'Flaming in League...', 'As I am guilty of flaming. Its because I am overly competitive. I have gotten a lot better about this but I definitely know why I have flamed people and that’s a big part of it.', '2023-04-06 07:11:39', '2023-04-06 07:11:39'),
(3, 'playing val w/ my gf', 'I queue with my GF a lot(she is silver if rank matters for this? idk), and I have never heard one person harass her. She has never said she has ever been harassed in this game either when I don\'t play with her. IDK why people get unlucky and get games like this and it baffles me that it happens. Sure I have heard some shit in this game but never gender specific. glad you guys are talking about this. just wanna share my experience. Sucks it happens though :/ not cool.', '2023-04-06 07:11:39', '2023-04-06 07:11:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribers`
--

CREATE TABLE `tbl_subscribers` (
  `subscriber_id` int(11) NOT NULL,
  `subscriber_email` varchar(255) NOT NULL,
  `subscriber_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_subscribers`
--

INSERT INTO `tbl_subscribers` (`subscriber_id`, `subscriber_email`, `subscriber_name`, `created_at`, `updated_at`) VALUES
(1, 'john@example.com', 'John Doe', '2023-04-06 07:12:27', '2023-04-06 07:12:27'),
(2, 'jane@example.com', 'Jane Smith', '2023-04-06 07:12:27', '2023-04-06 07:12:27'),
(3, 'alice@example.com', 'Alice Williams', '2023-04-06 07:12:27', '2023-04-06 07:12:27');

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
  `volunteers_availability` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_volunteers`
--

INSERT INTO `tbl_volunteers` (`volunteers_id`, `volunteers_first_name`, `volunteers_last_name`, `volunteers_email`, `volunteers_phone_number`, `volunteers_address`, `volunteers_city`, `volunteers_state`, `volunteers_zip_code`, `volunteers_interests`, `volunteers_availability`, `created_at`, `updated_at`) VALUES
(1, 'John', 'Doe', 'johndoe@example.com', '555-123-4567', '123 Main St', 'Anytown', 'CA', '12345', 'Gardening, Cooking', 'Weekends', '2023-04-06 07:13:21', '2023-04-06 07:13:21');

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
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
