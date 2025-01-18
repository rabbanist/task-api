-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 18, 2025 at 05:46 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text,
  `priority` enum('low','medium','high') DEFAULT 'low',
  `is_completed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Not Completed, 1: Completed',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `priority`, `is_completed`, `created_at`, `updated_at`) VALUES
(2, 'Prepare for Meeting', 'Prepare slides and agenda for the upcoming team meeting.', 'medium', 0, '2025-01-02 03:15:00', '2025-01-17 10:20:05'),
(3, 'Fix Bugs in Code', 'Resolve issues and fix bugs reported by QA team in the latest version of the app.', 'high', 0, '2025-01-10 08:45:00', '2025-01-17 10:20:05'),
(4, 'Update Website Content', 'Review and update the content on the homepage to reflect recent changes.', 'low', 0, '2025-01-03 05:00:00', '2025-01-17 10:20:05'),
(5, 'Conduct Code Review', 'Review code submitted by the team and provide feedback on improvements.', 'medium', 1, '2025-01-06 04:30:00', '2025-01-17 10:20:05'),
(6, 'Research New Features', 'Research new features to integrate into the next version of the product.', 'medium', 0, '2025-01-01 09:20:00', '2025-01-17 10:20:05'),
(7, 'Write Unit Tests', 'Write unit tests for the new module to ensure all functions work as expected.', 'high', 1, '2025-01-04 10:00:00', '2025-01-17 10:20:05'),
(8, 'Team Building Activity', 'Organize a team-building event for the office to promote collaboration and team spirit.', 'low', 0, '2025-01-09 07:00:00', '2025-01-17 10:20:05'),
(9, 'Server Maintenance', 'Perform maintenance and updates on the server to ensure optimal performance.', 'high', 0, '2025-01-08 06:00:00', '2025-01-17 10:20:05'),
(10, 'update Client Feedback Call', 'Schedule and conduct a call with the client to gather feedback on the latest release.', 'medium', 1, '2025-01-07 11:30:00', '2025-01-18 05:36:35'),
(11, 'This is title', 'This is description ', 'low', 0, '2025-01-18 05:03:14', '2025-01-18 05:03:14'),
(13, 'This is title1', 'This is description ', 'low', 0, '2025-01-18 05:19:10', '2025-01-18 05:19:10'),
(16, 'Title', 'description', 'low', 0, '2025-01-18 05:30:15', '2025-01-18 05:30:15'),
(18, 'Title1', 'description', 'low', 0, '2025-01-18 05:32:13', '2025-01-18 05:32:13'),
(27, 'Title2', 'description', 'low', 0, '2025-01-18 05:38:43', '2025-01-18 05:38:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
