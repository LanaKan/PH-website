-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2024 at 05:27 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phcmu_ln`
--

-- --------------------------------------------------------

--
-- Table structure for table `cmu_account`
--

CREATE TABLE `cmu_account` (
  `cmu_account_id` int(11) NOT NULL,
  `cmuitaccount` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_id` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cmu_y` int(11) DEFAULT NULL,
  `prename_TH` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname_TH` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname_TH` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_code` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_name_TH` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itaccounttype_TH` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `major_adv` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `co_adv` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `co_adv_2` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `co_adv_3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `committee_1` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `committee_2` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `studying` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eng_pass_f` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eng_pass` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proposal` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proposal_2` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dev_tools` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ethics` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `collecting_data` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `analyze_data` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discussion` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complete_research` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complete_research_2` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `propose_graduation` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stu_studying` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stu_eng_pass_f` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stu_eng_pass` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stu_proposal` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stu_proposal_2` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stu_dev_tools` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stu_ethics` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `stu_collecting_data` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stu_analyze_data` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stu_discussion` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stu_complete_research` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stu_complete_research_2` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stu_presentation` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stu_propose_graduation` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cmu_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_status` char(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1 = แอดมิน 2 = นศ ทั่วไป'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cmu_account`
--

INSERT INTO `cmu_account` (`cmu_account_id`, `cmuitaccount`, `student_id`, `cmu_y`, `prename_TH`, `firstname_TH`, `lastname_TH`, `organization_code`, `organization_name_TH`, `itaccounttype_TH`, `major_adv`, `co_adv`, `co_adv_2`, `co_adv_3`, `committee_1`, `committee_2`, `comment`, `studying`, `eng_pass_f`, `eng_pass`, `proposal`, `proposal_2`, `dev_tools`, `ethics`, `collecting_data`, `analyze_data`, `discussion`, `complete_research`, `complete_research_2`, `presentation`, `propose_graduation`, `stu_studying`, `stu_eng_pass_f`, `stu_eng_pass`, `stu_proposal`, `stu_proposal_2`, `stu_dev_tools`, `stu_ethics`, `stu_collecting_data`, `stu_analyze_data`, `stu_discussion`, `stu_complete_research`, `stu_complete_research_2`, `stu_presentation`, `stu_propose_graduation`, `cmu_type`, `user_status`) VALUES
(1, 'pipitton_h@cmu.ac.th', '620131017', NULL, 'นาย', 'พิพิธธน', 'โหมลา', '01', 'คณะมนุษยศาสตร์', 'นักศึกษาปัจจุบัน', NULL, NULL, NULL, NULL, NULL, NULL, '', 'Y', '', '', 'Y', 'Y', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'สม.', '1'),
(2, 'kannikar.i@cmu.ac.th', '', NULL, 'นางสาว', 'กรรณิการ์', 'อินต๊ะวงศ์', '22', 'คณะสาธารณสุขศาสตร์', 'บุคลากร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'สม.', '1'),
(3, 'kannikar_i@cmu.ac.th', '622232001', NULL, 'นางสาว', 'กรรณิการ์', 'อินต๊ะวงศ์', '22', 'คณะสาธารณสุขศาสตร์', 'นักศึกษาเก่า', '', '', '', '', '', '', 'test ', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '', '', 'สม.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ph_listname`
--

CREATE TABLE `ph_listname` (
  `listname_id` int(11) NOT NULL,
  `listname_fname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `listname_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `listname_type` char(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1 = อาจารย์ 2 = พนักงาน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ph_listname`
--

INSERT INTO `ph_listname` (`listname_id`, `listname_fname`, `listname_email`, `listname_type`) VALUES
(1, 'ศ.(เกียรติคุณ) นพ.สุวัฒน์ จริยาเลิศศักดิ์', 'suwat.c@cmu.ac.th', '1'),
(2, 'รศ.ดร.วราภรณ์ บุญเชียง', 'waraporn.b@cmu.ac.th', '1'),
(3, 'รศ.ดร.จักรกฤษณ์ วังราษฎร์', 'jukkrit.w@cmu.ac.th ', '1'),
(4, 'ผศ.ดร.อักษรา ทองประชุม', 'aksara.t@cmu.ac.th', '1'),
(5, 'ผศ.ดร.วรางคณา นาคเสน', 'warangkana.n@cmu.ac.th ', '1'),
(6, 'รศ.ดร.กรรณิการ์ อินต๊ะวงศ์', 'kannikar.i@cmu.ac.th ', '1'),
(7, 'ผศ.ดร.สินีนาฏ ชาวตระการ', 'sineenart.c@cmu.ac.th', '1'),
(8, 'ผศ.ดร.พัลลภ เซียวชัยสกุล', 'Pallop.s@cmu.ac.th', ''),
(9, 'อ.ดร.นภชา สิงห์วีรธรรม', 'noppcha.s@cmu.ac.th ', '1'),
(10, 'อ.ดร.ณปภัช โพธิ์พรหม', 'napaphat.p@cmu.ac.th ', '1'),
(11, 'นางรจนา ศรีจันทร์', 'rojana.s@cmu.ac.th ', '2'),
(12, 'นางสาวสุรภี ทานเคหาสน์', 'surapee.tarnkehard@cmu.ac.th ', '2'),
(13, 'นางสาวสิรีธร พรมทอง', 'Sireethorn.p@cmu.ac.th ', '2'),
(14, 'นางสาวธัญนันท์ ราชภัณฑ์', 'thanyanan.r@cmu.ac.th ', '2'),
(15, 'นายพลพัฒน์ ไชยคำหล้า', 'ponphat.c@cmu.ac.th ', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cmu_account`
--
ALTER TABLE `cmu_account`
  ADD PRIMARY KEY (`cmu_account_id`);

--
-- Indexes for table `ph_listname`
--
ALTER TABLE `ph_listname`
  ADD PRIMARY KEY (`listname_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cmu_account`
--
ALTER TABLE `cmu_account`
  MODIFY `cmu_account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `ph_listname`
--
ALTER TABLE `ph_listname`
  MODIFY `listname_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
