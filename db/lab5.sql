-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.3.0 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table lab5.address: ~4 rows (approximately)
INSERT INTO `address` (`add_id`, `city`, `country`, `number`, `street`, `zipcode`) VALUES
	(1, 'Ho Chi Minh City', 'Vietnam', '123', 'Le Thanh Ton', '70000'),
	(2, 'Ha Noi', 'Vietnam', '456', 'Kim Ma', '10000'),
	(3, 'Los Angeles', 'USA', '789', 'Sunset Blvd', '90001'),
	(4, 'London', 'UK', '321', 'Baker Street', 'EC1A1BB');

-- Dumping data for table lab5.candidate: ~4 rows (approximately)
INSERT INTO `candidate` (`can_id`, `dob`, `email`, `full_name`, `phone`, `address`) VALUES
	(1, '1998-05-21', 'nguyen.anh@gmail.com', 'Nguyen Van Anh', '0123456789', 1),
	(2, '1995-10-12', 'tran.binh@gmail.com', 'Tran Thi Binh', '0987654321', 2),
	(3, '1990-03-08', 'john.doe@gmail.com', 'John Doe', '0901234567', 3),
	(4, '1987-07-15', 'jane.smith@gmail.com', 'Jane Smith', '0823456789', 4);

-- Dumping data for table lab5.candidate_skill: ~4 rows (approximately)
INSERT INTO `candidate_skill` (`id`, `more_infos`, `skill_level`, `can_id`, `skill_id`) VALUES
	(1, 'Advanced JavaScript skills', '5', 1, 1),
	(2, 'Certified PMP', '4', 2, 3),
	(3, 'Hands-on AWS experience', '4', 3, 4),
	(4, 'Python expertise', '5', 4, 2);

-- Dumping data for table lab5.company: ~4 rows (approximately)
INSERT INTO `company` (`com_id`, `about`, `comp_name`, `email`, `phone`, `web_url`, `address`) VALUES
	(1, 'Leading tech company in Vietnam', 'VNG Corporation', 'contact@vng.com', '028-1234567', 'https://vng.com', 1),
	(2, 'E-commerce giant', 'Tiki Corporation', 'info@tiki.vn', '028-7654321', 'https://tiki.vn', 2),
	(3, 'Software services', 'TechSoft USA', 'contact@techsoft.com', '001-9876543', 'https://techsoft.com', 3),
	(4, 'Financial consultancy', 'London Financials', 'info@londonfin.com', '044-1231234', 'https://londonfin.com', 4);

-- Dumping data for table lab5.experience: ~4 rows (approximately)
INSERT INTO `experience` (`exp_id`, `company`, `from_date`, `role`, `to_date`, `work_desc`, `can_id`) VALUES
	(1, 'VNG Corporation', '2020-01-01', 'Software Engineer', '2022-12-31', 'Developed and maintained web applications', 1),
	(2, 'Tiki Corporation', '2018-06-01', 'Product Manager', '2020-05-31', 'Managed product listings and customer relations', 2),
	(3, 'TechSoft USA', '2019-04-01', 'Cloud Engineer', '2023-03-01', 'Designed and implemented cloud systems', 3),
	(4, 'London Financials', '2017-09-01', 'Financial Consultant', '2021-08-31', 'Provided financial strategies and analysis', 4);

-- Dumping data for table lab5.job: ~4 rows (approximately)
INSERT INTO `job` (`job_id`, `job_desc`, `job_name`, `company`) VALUES
	(1, 'Develop and maintain web applications', 'Web Developer', 1),
	(2, 'Design and manage cloud systems', 'Cloud Engineer', 1),
	(3, 'Manage product listings and orders', 'Product Manager', 2),
	(4, 'Develop AI models and solutions', 'AI Developer', 3);

-- Dumping data for table lab5.job_skill: ~4 rows (approximately)
INSERT INTO `job_skill` (`id`, `more_infos`, `skill_level`, `job_id`, `skill_id`) VALUES
	(1, 'Expert in React and Angular', '5', 1, 1),
	(2, 'AWS Certified Solutions Architect', '4', 2, 4),
	(3, 'Strong project management skills', '4', 3, 3),
	(4, 'Excellent in building AI models', '5', 4, 2);

-- Dumping data for table lab5.skill: ~4 rows (approximately)
INSERT INTO `skill` (`skill_id`, `skill_desc`, `skill_name`, `skill_type`) VALUES
	(1, 'Proficient in JavaScript programming', 'JavaScript', '1'),
	(2, 'Strong knowledge of Python programming', 'Python', '1'),
	(3, 'Ability to lead and manage projects', 'Project Management', '2'),
	(4, 'Experience with AWS cloud infrastructure', 'AWS', '3');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
