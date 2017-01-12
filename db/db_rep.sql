-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2017 at 09:12 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rep`
--

-- --------------------------------------------------------

--
-- Table structure for table `action`
--

CREATE TABLE `action` (
  `id` int(11) NOT NULL,
  `controller_id` varchar(50) NOT NULL,
  `action_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `action`
--

INSERT INTO `action` (`id`, `controller_id`, `action_id`, `name`) VALUES
(12, 'site', 'index', 'Index'),
(13, 'site', 'profile', 'Profile'),
(14, 'site', 'login', 'Login'),
(15, 'site', 'logout', 'Logout'),
(16, 'site', 'contact', 'Contact'),
(17, 'site', 'about', 'About'),
(18, 'menu', 'index', 'Index'),
(19, 'menu', 'view', 'View'),
(20, 'menu', 'create', 'Create'),
(21, 'menu', 'update', 'Update'),
(22, 'menu', 'delete', 'Delete'),
(23, 'role', 'index', 'Index'),
(24, 'role', 'view', 'View'),
(25, 'role', 'create', 'Create'),
(26, 'role', 'update', 'Update'),
(27, 'role', 'delete', 'Delete'),
(28, 'role', 'detail', 'Detail'),
(29, 'user', 'index', 'Index'),
(30, 'user', 'view', 'View'),
(31, 'user', 'create', 'Create'),
(32, 'user', 'update', 'Update'),
(33, 'user', 'delete', 'Delete'),
(34, 'site', 'register', 'Register'),
(35, 'data-repair', 'index', 'Index'),
(36, 'data-repair', 'view', 'View'),
(37, 'data-repair', 'lists', 'Lists'),
(38, 'data-repair', 'create', 'Create'),
(39, 'data-repair', 'update', 'Update'),
(40, 'data-repair', 'delete', 'Delete'),
(41, 'data-repair', 'estimated-date', 'Estimated Date'),
(42, 'repair-time', 'index', 'Index'),
(43, 'repair-time', 'view', 'View'),
(44, 'repair-time', 'create', 'Create'),
(45, 'repair-time', 'update', 'Update'),
(46, 'repair-time', 'delete', 'Delete');

-- --------------------------------------------------------

--
-- Table structure for table `data_repair`
--

CREATE TABLE `data_repair` (
  `id` int(11) NOT NULL,
  `no` varchar(20) NOT NULL,
  `section` varchar(5) DEFAULT NULL,
  `pic_prod` varchar(100) DEFAULT NULL,
  `pic_pe` varchar(100) DEFAULT NULL,
  `in_date` date DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `dest` varchar(100) DEFAULT NULL,
  `pcb` varchar(100) DEFAULT NULL,
  `defect` varchar(200) DEFAULT NULL,
  `detail` text,
  `cause` text,
  `action` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `out_date` date DEFAULT NULL,
  `remark` text,
  `priority` int(11) DEFAULT NULL,
  `est_finish_date` date DEFAULT NULL,
  `repair_time_id` int(11) DEFAULT NULL,
  `flag` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_repair`
--

INSERT INTO `data_repair` (`id`, `no`, `section`, `pic_prod`, `pic_pe`, `in_date`, `model`, `dest`, `pcb`, `defect`, `detail`, `cause`, `action`, `location`, `status`, `out_date`, `remark`, `priority`, `est_finish_date`, `repair_time_id`, `flag`) VALUES
(1, 'F0001', 'FA', 'Deddy', 'Imam', '2016-08-05', 'YSP-2700', 'All', 'Beam', 'Array No Sound 1-8', 'error', 'Material', 'Change', 'IC505^', 'OK', '2016-08-22', 'pengecekan speaker array output IC505^ noise', 1, NULL, 49, 1),
(2, 'F0002', 'FA', 'Deddy', 'Imam', '2016-08-05', 'YSP-2700', 'All', 'Beam', 'D4-1 error', 'error', 'Material', 'Change', 'IC501^, 503^, 505^', 'OPEN', '2016-09-05', '', 1, NULL, 49, 1),
(3, 'F0003', 'FA', 'Deddy', 'Imam', '2016-08-05', 'YSP-2700', '', 'ACIN', 'Power Off', 'error', 'Material', 'Change', 'D805^', 'OK', '2016-09-13', 'AVOmeter check', 2, NULL, 0, 1),
(4, 'F0004', 'FA', 'Deddy', 'Imam', '2016-08-05', 'YSP-2700', 'All', 'Digital', 'Array No Sound', 'foreign object', 'Handling FA', 'Cleaning', 'CB304^', 'OPEN', '2016-08-18', 'Visual check', 2, '2016-12-23', 47, 1),
(5, 'F0005', 'FA', 'Deddy', 'Imam', '2016-08-05', 'YSP-2700', 'All', 'Digital', 'Suara besar, absound', '-', '-', 'Redownload', '-', 'OK', '2016-08-18', '-', 2, NULL, 47, 1),
(6, 'F0006', 'FA', 'Deddy', 'Imam', '2016-08-05', 'FSW050', 'J', '', 'F = 0', '-', '-', 'Recheck', '-', 'OK', '2016-08-08', '-', 2, NULL, 0, 1),
(7, 'F0007', 'FA', 'Deddy', 'Imam', '2016-08-05', 'SW500', 'R', '', 'Input NG', 'Wrong Part', 'Proses PCB', 'Return FA', 'VR1^', 'RETURN', '2016-08-09', 'Absound, suara sangat kecil', 2, NULL, 0, 1),
(8, 'F0008', 'FA', 'Nanang', 'Ali', '2016-08-05', 'YSP-5600', 'All', 'DAMP', 'Woofer No Sound', '-', '-', 'Recheck', '-', 'OPEN', '2016-08-27', '-', 1, NULL, 54, 1),
(9, 'F0009', 'FA', 'Deddy', 'Imam', '2016-08-08', 'YSP-2700', 'All', 'Beam', 'Array No Sound', 'error', 'Material', 'Change', 'IC501^, 503^, 505^', 'OK', '2016-09-06', 'status DEV OK tetapi no sound array all', 1, NULL, 49, 1),
(10, 'F0010', 'FA', 'Deddy', 'Imam', '2016-08-08', 'YSP-2700', 'All', 'Beam', 'Array No Sound', 'error', 'Material', 'Change', 'IC501^, 503^, 505^', 'OPEN', '2016-09-06', 'status DEV OK tetapi no sound array all', 1, NULL, 49, 1),
(11, 'F0011', 'FA', 'Deddy', 'Imam', '2016-08-08', 'YSP-2700', 'All', 'Beam', 'Array No Sound 1-8', '-', '-', 'Recheck', '-', 'OPEN', '2016-08-11', '-', 1, NULL, 49, 1),
(12, 'F0012', 'FA', 'Deddy', 'Imam', '2016-08-08', 'YSP-2700', 'All', 'FL Display', 'Remote Off', 'Unsolder', 'Proses PCB', '-', 'R817^', 'RETURN', '2016-08-20', '-', 2, NULL, 0, 1),
(13, 'F0013', 'FA', 'Deddy', 'Imam', '2016-08-08', 'SW050', 'K', '', 'Fuse Burn', '-', '-', '-', '-', 'SCRAP', '2016-08-11', '-', 2, NULL, 0, 1),
(14, 'F0014', 'FA', 'Deddy', 'Imam', '2016-08-08', 'SW050', 'S', '', 'Fuse Burn', 'Burn', 'Handling FA', 'Change', 'F1', 'OK', '2016-08-09', '-', 2, NULL, 0, 1),
(15, 'F0015', 'FA', 'Sakban', 'Ali', '2016-08-08', 'YAS-306', 'All', 'Digital', 'Power Off', '-', '-', 'Recheck', '-', 'OPEN', '2016-08-08', '-', 1, NULL, 26, 1),
(16, 'F0016', 'FA', 'Udin', 'Ali', '2016-08-08', '', 'All', '', 'LED D-con abn', '-', 'Material', 'Change', 'SW503^', 'OK', '2016-08-22', 'di check continuity ok', 1, NULL, NULL, 1),
(17, 'F0017', 'FA', 'Sukron', 'Ali', '2016-08-08', 'DSR', 'All', 'AMPS1', 'Power Off', 'Short', 'Electrical', 'Change', 'D107*', 'OK', '2016-08-18', '-', 2, NULL, 0, 1),
(18, 'F0018', 'FA', 'Eko', 'Ali', '2016-08-10', 'YSP-1600', 'G', 'Unit', 'IR No Connect', '-', '-', '-', '-', 'RETURN', '2016-08-10', '-', 2, NULL, 0, 1),
(19, 'F0019', 'FA', 'Sakban', 'Ali', '2016-08-10', 'YAS-306', 'G', 'LED', 'LED Off', '-', 'Handling FA', '-', '-', 'SCRAP', '2016-08-10', '-', 2, NULL, 0, 1),
(20, 'F0020', 'FA', 'Sakban', 'Ali', '2016-08-10', 'YAS-306', 'G', 'LED', 'LED Off', '-', 'Broken', 'Change', 'Q607^', 'OK', '2016-08-10', '-', 2, NULL, 0, 1),
(21, 'F0021', 'FA', 'Sakban', 'Ali', '2016-08-10', 'YAS-306', 'G', 'LED', 'LED Off', '-', 'Broken', 'Change', 'Q604^', 'OK', '2016-08-10', '-', 2, NULL, 0, 1),
(22, 'F0022', 'FA', 'Sakban', 'Ali', '2016-08-10', 'YAS-306', 'G', 'LED', 'LED Off', '-', 'Broken', 'Change', 'Q607^', 'OK', '2016-08-10', '-', 2, NULL, 0, 1),
(23, 'F0023', 'FA', 'Sakban', 'Ali', '2016-08-10', 'YAS-306', 'G', 'LED', 'LED Off', '-', 'Broken', 'Change', 'D606^', 'OK', '2016-08-10', '-', 2, NULL, 0, 1),
(24, 'F0024', 'FA', 'Sakban', 'Ali', '2016-08-10', 'YAS-306', 'G', 'LED', 'LED Off', '-', 'Broken', 'Change', 'Q607^', 'OK', '2016-08-10', '-', 2, NULL, 0, 1),
(25, 'F0025', 'FA', 'Sakban', 'Ali', '2016-08-10', 'YAS-306', 'G', 'LED', 'LED Off', '-', 'Material', 'Change', 'D605^', 'OK', '2016-08-10', '-', 2, NULL, 0, 1),
(26, 'F0026', 'FA', 'Deddy', 'Imam', '2016-08-10', 'WSW121', 'B', '', 'LED Off', '-', '-', 'Recheck', '-', 'OK', '2016-08-10', '-', 2, NULL, 0, 1),
(27, 'F0027', 'FA', 'Deddy', 'Imam', '2016-08-10', 'SW315', 'U', '', 'Fuse Burn', 'Solder Bridge', 'Handling FA', 'Return FA', 'Q16C', 'RETURN', '2016-08-11', '-', 2, NULL, 0, 1),
(28, 'F0028', 'FA', 'Deddy', 'Imam', '2016-08-11', 'SRT-700', 'J', 'Amp Assy', 'Power Off', 'Short', 'Material', 'Return FA', 'PCB digi', 'RETURN', '2016-08-16', 'pin +19D short terhadap pin GND', 1, NULL, 1, 1),
(29, 'F0029', 'FA', 'Deddy', 'Imam', '2016-08-11', 'SW050', 'G', '', 'Fuse Burn', 'Burn', 'Handling FA', 'Return FA', 'F1', 'OK', '2016-08-12', '-', 2, NULL, 0, 1),
(30, 'F0030', 'FA', 'Deddy', 'Imam', '2016-08-11', 'SW050', 'G', '', 'Fuse Burn', 'Burn', 'Handling FA', 'Return FA', 'F1', 'OK', '2016-08-12', '-', 2, NULL, 0, 1),
(31, 'F0031', 'FA', 'Deddy', 'Imam', '2016-08-11', 'SW050', 'G', '', 'Fuse Burn', 'Burn', 'Handling FA', 'Return FA', 'F1', 'OK', '2016-08-12', '-', 2, NULL, 0, 1),
(32, 'F0032', 'FA', 'Deddy', 'Imam', '2016-08-11', 'SW315', 'U', '', 'Fuse Burn', 'Open', 'Material', 'Change', 'Q27,R17,R18', 'OK', '2016-08-13', '-', 2, NULL, 0, 1),
(33, 'F0033', 'FA', 'Deddy', 'Imam', '2016-08-11', 'WSW121', 'B', '', 'LED Off', '-', '-', 'Recheck', '-', 'OK', '2016-08-18', '-', 2, NULL, 0, 1),
(34, 'F0034', 'FA', 'Deddy', 'Imam', '2016-08-11', 'WSW121', 'B', '', 'LED Off', '-', '-', 'Recheck', '-', 'OK', '2016-08-18', '-', 2, NULL, 0, 1),
(35, 'F0035', 'FA', 'Deddy', 'Imam', '2016-08-11', 'WSW121', 'B', '', 'LED Abnormal', '-', '-', 'Recheck', '-', 'OK', '2016-08-18', '-', 2, NULL, 0, 1),
(36, 'F0036', 'FA', 'Deddy', 'Imam', '2016-08-12', 'YSP-2700', '', 'Digital', 'Cut Off', '', '', '', '', 'SCRAP', '0000-00-00', '', 2, NULL, 47, 1),
(37, 'F0037', 'FA', 'Deddy', 'Imam', '2016-08-12', 'YSP-2700', '', 'Digital', 'Network NG', '-', '-', 'Redownload', '-', 'OK', '2016-08-18', '-', 2, NULL, 47, 1),
(38, 'F0038', 'FA', 'Deddy', 'Imam', '2016-08-12', 'YSP-2700', '', 'Digital', 'Network NG', '-', '-', 'Redownload', '-', 'OK', '2016-08-18', '-', 2, NULL, 47, 1),
(39, 'F0039', 'FA', 'Deddy', 'Imam', '2016-08-12', 'SW050', 'G', '', 'Relay klak-klik', '-', '-', 'Recheck', '-', 'OK', '2016-08-12', '-', 2, NULL, 0, 1),
(40, 'F0040', 'FA', 'Deddy', 'Imam', '2016-08-12', 'SW515', 'L', '', 'Fuse Burn', 'Short', 'Material', 'Change', 'Q26A', 'OK', '2016-08-16', 'R20 terbakar, ternyata setelah ditelusuri jalurnya ditemukan Q26A dalam kondisi short', 2, NULL, 0, 1),
(41, 'F0041', 'FA', 'Deddy', 'Imam', '2016-08-12', 'SW515', 'L', '', 'Fuse Burn', 'Short', 'Material', 'Change', 'Q26C', 'OK', '2016-08-16', 'R17 terbakar, ternyata setelah ditelusuri jalurnya ditemukan Q26C dalam kondisi short', 2, NULL, 0, 1),
(42, 'F0042', 'FA', 'Deddy', 'Imam', '2016-08-13', 'WSW121', 'B', '', 'Absound', '-', '-', 'Recheck', '-', 'OK', '2016-08-18', '-', 2, NULL, 0, 1),
(43, 'F0043', 'FA', 'Deddy', 'Imam', '2016-08-13', 'SW200', 'G', '', 'F = 0', '-', '-', 'Recheck', '-', 'OK', '2016-08-16', '-', 2, NULL, 0, 1),
(44, 'F0044', 'FA', 'Deddy', 'Imam', '2016-08-13', 'SW200', 'G', '', 'F = 0', '-', '-', 'Recheck', '-', 'OK', '2016-08-16', '-', 2, NULL, 0, 1),
(45, 'F0045', 'FA', 'Deddy', 'Imam', '2016-08-13', 'SW200', 'J', 'Main', 'F = 0', 'Burn', 'Handling FA', 'Change', 'R215^', 'OK', '2016-08-17', 'teg spryon drop jadi +1.2vdc normalnya +1.4vdc', 2, NULL, 0, 1),
(46, 'F0046', 'FA', 'Deddy', 'Imam', '2016-08-15', 'GA15II', 'J', '', 'Power Off', 'Burn', 'Handling FA', 'Return FA', 'F1', 'RETURN', '2016-08-15', '-', 2, NULL, 0, 1),
(47, 'F0047', 'FA', 'Deddy', 'Imam', '2016-08-15', 'SW200', 'U', 'Main', 'F = 0', 'Part broken', 'Handling FA', 'Change', 'R136*', 'OK', '2016-08-17', 'lokasi Q27* jika dicek abnormal seperti bocor tetapi tidak karena efek rusaknya R136*', 2, NULL, 0, 1),
(48, 'F0048', 'FA', 'Deddy', 'Imam', '2016-08-15', 'SW200', 'G', 'Input', 'F = 0', 'Part broken', 'Handling FA', 'Change', 'Q19*', 'OK', '2016-08-17', 'Visual check', 2, NULL, 0, 1),
(49, 'F0049', 'FA', 'Deddy', 'Imam', '2016-08-16', 'SW200', 'G', 'Input', 'F = 0', 'Short', 'Handling FA', 'Change', 'C20^', 'OK', '2016-08-17', 'input 3(LFE) normal tetapi input 2(stereo) absound suara sangat kecil', 2, NULL, 0, 1),
(50, 'F0050', 'FA', 'Deddy', 'Imam', '2016-08-16', 'SW210', 'J', '', 'F = 0', 'bocor', 'Material', 'Change', 'Q2', 'OK', '2016-08-16', 'gejala teg basis Q20 terukur +0.7vdc , harusnya -5 ~ -7 vdc', 2, NULL, 0, 1),
(51, 'F0051', 'FA', 'Deddy', 'Imam', '2016-08-16', 'SW210', 'G', '', 'F = 0', 'Part broken', 'Material', 'Change', 'RY1', 'OK', '2016-08-17', 'walaupun teg di kaki primer normal, RY1 tidak bekerja', 2, NULL, 0, 1),
(52, 'F0052', 'FA', 'Roni', 'Imam', '2016-08-16', 'SW515', 'L', 'Front Panel', 'Distorsi', 'Short', 'Handling FA', 'Reset', 'IC7', 'OK', '2016-08-17', 'dicek sound, speaker berdengung ternyata sisi luar shield sheet front panel menyentuh IC7 #1 dan #2 karena handling', 2, NULL, 0, 1),
(53, 'F0053', 'FA', 'Yusuf', 'Imam', '2016-08-17', 'SW300', 'J', '', 'F = 0', 'Crack Pattern', 'Handling FA', 'Return FA', 'main trafo', 'RETURN', '2016-08-17', 'Visual check', 2, NULL, 0, 1),
(54, 'F0054', 'FA', 'Rokisul', 'Ali', '2016-08-15', 'YSP-5600', 'All', 'IR', 'No connect', 'Pattern crack', 'Proses PCB', '-', 'U805^', 'SCRAP', '2016-08-27', '-', 2, NULL, 0, 1),
(55, 'F0055', 'FA', 'Rokisul', 'Ali', '2016-08-15', 'YSP-5600', 'All', 'Digital', 'No Sound', ' -', ' -', 'Recheck', ' -', 'OK', '2016-08-27', '-', 2, NULL, 52, 1),
(56, 'F0056', 'FA', 'Rokisul', 'Ali', '2016-08-15', 'YSP-5600', 'All', 'HDMI', 'No Sound & Pict', 'Unsolder', 'Proses PCB', 'Touch Up', 'CB6^', 'OK', '2016-09-16', '', 2, NULL, 53, 1),
(57, 'F0057', 'FA', 'Sakban', 'Ali', '2016-08-15', 'YAS-306', 'All', 'Digital', 'Cut Off', '-', '-', 'Recheck', '-', 'OK', '2016-08-19', '-', 2, NULL, 26, 1),
(58, 'F0058', 'FA', 'Sakban', 'Ali', '2016-08-15', 'YAS-306', 'All', 'Digital', 'Cut Off', ' -', ' -', ' -', ' -', 'RETURN', '2016-08-15', '-', 2, NULL, 26, 1),
(59, 'F0059', 'FA', 'Sakban', 'Ali', '2016-08-15', 'YAS-306', 'All', 'Digital', 'LED Abnormal', 'unsolder', 'Proses PCB', '-', 'R462', 'OK', '2016-08-19', '-', 2, NULL, 26, 1),
(60, 'F0060', 'FA', 'Sakban', 'Ali', '2016-08-15', 'YAS-306', 'All', 'Digital', 'Abnormal', 'dirty dross', 'Proses PCB', 'Return RPA', 'IC103*', 'RETURN', '2016-08-17', '-', 2, NULL, 26, 1),
(61, 'F0061', 'FA', 'Sukron', 'Ali', '2016-08-15', 'DXS18', 'All', 'Input', 'Step 20', 'Pattern crack', 'Handling FA', 'Return RPA', '-', 'SCRAP', '2016-08-24', '-', 2, NULL, 0, 1),
(62, 'F0062', 'FA', 'Deddy', 'Imam', '2016-08-16', 'YSP-2700', 'All', 'Digital', 'No Destination', '-', '-', 'Redownload', '-', 'OK', '2016-08-18', '-', 2, NULL, 47, 1),
(63, 'F0063', 'FA', 'Deddy', 'Imam', '2016-08-18', 'YSP-2700', 'All', 'Digital', 'No Destination', '-', '-', 'Redownload', '-', 'OK', '2016-08-18', '-', 2, NULL, 47, 1),
(64, 'F0064', 'FA', 'Deddy', 'Imam', '2016-08-16', 'WSW121', 'L', '', 'AVMT FAIL', 'microSolder Bridge', 'Proses PCB', '-', 'R50*', 'RETURN', '2016-08-19', 'Visual check', 2, NULL, 0, 1),
(65, 'F0065', 'FA', 'Deddy', 'Imam', '2016-08-16', 'WSW121', 'B', '', 'AVMT FAIL', 'missing part', 'Proses PCB', '-', 'jumper^', 'RETURN', '2016-08-19', 'Visual check', 2, NULL, 0, 1),
(66, 'F0066', 'FA', 'Deddy', 'Imam', '2016-08-16', 'YSP-2700', '', 'Beam', 'Sweep abnormal', '-', '-', 'Recheck', '-', 'OK', '2016-08-22', '', 2, NULL, 49, 1),
(67, 'F0067', 'FA', 'Deddy', 'Imam', '2016-08-18', 'NX-N500', 'K', '', 'Step 3 NG', 'error', 'Material', 'Change', 'IC206^, IC210^', 'OK', '2016-08-19', 'jalur HPF dan BAL_L , BAL_R', 2, NULL, 0, 1),
(68, 'F0068', 'FA', 'Deddy', 'Imam', '2016-08-18', 'NX-N500', 'K', '', 'LED kuning', '-', '-', 'Recheck', '-', 'OK', '2016-08-19', '-', 2, NULL, 0, 1),
(69, 'F0069', 'FA', 'Sukron', 'Ali', '2016-08-18', 'DSR215', 'All', 'DSP', 'Step 10', 'dirty flux', 'Proses PCB', 'Cleaning', '-', 'OK', '2016-08-18', '-', 2, NULL, 134, 1),
(70, 'F0070', 'FA', 'Titik', 'Ali', '2016-08-19', 'DKV', 'All', 'CC', 'Step 47/UFT', 'poor solder', 'Proses PCB', 'Touch Up', 'RY1', 'OK', '2016-09-16', '', 2, NULL, 0, 1),
(71, 'F0071', 'FA', 'Titik', 'Ali', '2016-08-19', 'DKV', 'All', 'CC', 'Step 34/UFT', 'Open', 'Proses PCB', 'Change', 'L31^', 'OK', '2016-09-16', '', 2, NULL, 0, 1),
(72, 'F0072', 'FA', 'Titik', 'Ali', '2016-08-19', 'DKV', 'All', 'CC', 'Step 14/UFT', '-', ' -', 'Change', 'SD card', 'OK', '2016-09-03', '', 2, NULL, 0, 1),
(73, 'F0073', 'FA', 'Udin', 'Ali', '2016-08-19', 'DBR', '', 'AMPS', 'Step 26', '-', 'Electrical', 'Change', 'L205^,IC201^', 'OK', '2016-08-26', 'check fct ok', 2, NULL, 0, 1),
(74, 'F0074', 'FA', 'Udin', 'Ali', '2016-08-19', 'DBR', 'All', 'DSP', 'Step 16', '-', 'Electrical', 'Change', 'ic602^,ic406^', 'SCRAP', '2016-08-25', '-', 2, NULL, 0, 1),
(75, 'F0075', 'FA', 'Udin', 'Ali', '2016-08-19', 'DBR', 'All', 'DSP', 'Dcoun', '-', '-', 'Touch Up', 'R553*', 'OK', '2016-08-22', '-', 2, NULL, 0, 1),
(76, 'F0076', 'FA', 'Sukron', 'Ali', '2016-08-19', 'DSR215', 'All', 'AMPS1', 'Burn', '-', 'Electrical', 'Change', 'R594^, R601^,Q517*, Q518*, R553*, R552*', 'OK', '2016-08-26', '-', 2, NULL, 133, 1),
(77, 'F0077', 'FA', 'Sukron', 'Ali', '2016-08-19', 'DSR', 'All', 'AMPS', 'Step 3', '-', '-', 'Recheck FCT', '-', 'OK', '2016-08-29', 'di check fct NG,setting VR OK', 2, NULL, 0, 1),
(78, 'F0078', 'FA', 'Deddy', 'Imam', '2016-08-19', 'YSP-2500', '', 'Input', 'HP ON terus', 'Open', 'Material', 'Change', 'JK901^', 'OK', '2016-08-20', 'AVOmeter check', 2, NULL, 0, 1),
(79, 'F0079', 'FA', 'Deddy', 'Imam', '2016-08-19', 'YSP-2500', '', 'Digital', 'AUX1 absound', '-', '-', '-', '-', 'SCRAP', '2016-08-23', 'hasil ukur teg +5A terhadap GND, nilainya abnormal', 2, NULL, 42, 1),
(80, 'F0080', 'FA', 'Deddy', 'Imam', '2016-08-19', 'WSW120', '', 'DAC', 'LED Abnormal', '-', '-', 'Recheck', '-', 'OK', '2016-08-20', '-', 2, NULL, 0, 1),
(81, 'F0081', 'FA', 'Deddy', 'Imam', '2016-08-19', 'WSW120', '', 'DAC', 'LED Abnormal', '-', '-', 'Recheck', '-', 'OK', '2016-08-20', '-', 2, NULL, 0, 1),
(82, 'F0082', 'FA', 'Deddy', 'Imam', '2016-08-19', 'WSW120', 'J', '', 'LED Off', '-', '-', 'Recheck', '-', 'OK', '2016-08-20', '-', 2, NULL, 0, 1),
(83, 'F0083', 'FA', 'Deddy', 'Imam', '2016-08-20', 'WSW120', 'L', '', 'LED Abnormal', '-', '-', 'Recheck', '-', 'OK', '2016-08-20', '-', 2, NULL, 0, 1),
(84, 'F0084', 'FA', 'Deddy', 'Imam', '2016-08-20', 'YRS-2500', '', 'Beam', 'Array No Sound 1-8', 'unsolder', 'Proses PCB', '-', 'R527^', 'RETURN', '2016-08-20', 'Visual check', 2, NULL, 0, 1),
(85, 'F0085', 'FA', 'Deddy', 'Imam', '2016-08-20', 'YRS-2500', '', 'Input', 'Headphone No Sound', 'Open', 'Material', 'Change', 'JK901^', 'OK', '2016-08-20', 'AVOmeter check', 2, NULL, 0, 1),
(86, 'F0086', 'FA', 'Titik', 'Ali', '2016-08-22', '', '', '', 'Step 3', 'Broken', 'Handling FA', ' -', 'L112*', 'OPEN', '2016-09-16', '', 1, NULL, NULL, 1),
(87, 'F0087', 'FA', 'Deddy', 'Imam', '2016-08-22', 'WSW120', 'J', 'Input', 'LED Off', 'unsolder', 'Proses PCB', 'Resolder', 'IC207*', 'OK', '2016-08-22', 'Visual check', 2, NULL, 0, 1),
(88, 'F0088', 'FA', 'Deddy', 'Imam', '2016-08-20', 'YSP-2500', '', 'Digital', 'Cut Off', '-', '-', 'Redownload', '-', 'OK', '2016-09-07', '', 2, NULL, 42, 1),
(89, 'F0089', 'FA', 'Deddy', 'Imam', '2016-08-22', 'YSP-2500', '', 'Beam', 'Remote Off', 'cut pattern', 'Material', '-', 'side B', 'SCRAP', '2016-08-24', 'cek jalur remote dari CB502^ #30 ke CB507^ #2 ternyata open', 2, NULL, 44, 1),
(90, 'F0090', 'FA', 'Deddy', 'Imam', '2016-08-22', 'YSP-2500', '', 'Digital', 'Volume kedip', 'Part broken', 'Proses PCB', '-', 'R338^', 'RETURN', '2016-09-07', 'Visual check', 2, NULL, 42, 1),
(91, 'F0091', 'FA', 'udin', 'Ali', '2016-08-22', 'DBR', '', 'DSP', 'Step 4', 'unsolder', 'Proses PCB', 'Touch Up', 'R505^', 'OK', '2016-08-24', '-', 2, NULL, 0, 1),
(92, 'F0092', 'FA', 'Rokisul', 'Ali', '2016-08-22', 'YSP-5600', '', 'intelbeam', 'logo on terus', 'Pattern crack', 'Handling FA', '-', '-', 'SCRAP', '2016-08-23', '-', 2, NULL, 0, 1),
(93, 'F0093', 'FA', 'Rokisul', 'Ali', '2016-08-22', 'YSP-5600', '', 'intelbeam', 'logo on terus', 'Pattern crack', 'Handling FA', '-', '-', 'SCRAP', '2016-08-23', '-', 2, NULL, 0, 1),
(94, 'F0094', 'FA', 'Rokisul', 'Ali', '2016-08-22', 'YSP-5600', '', 'Power', 'Power Off', '-', 'Proses PCB', '-', 'L701*', 'RETURN', '2016-08-23', '-', 2, NULL, 56, 1),
(95, 'F0095', 'FA', 'Deddy', 'Imam', '2016-08-23', 'SW216', 'S', 'Input', 'mono / L nosound', 'Pattern crack', 'Handling FA', '-', 'PJ1', 'RETURN', '2016-08-23', '-', 2, NULL, 0, 1),
(96, 'F0096', 'FA', 'Sukron', 'Ali', '2016-08-23', 'DSR', '', 'AMPS2', 'Power Off', '-', 'Electrical', 'Change', 'IC103^', 'OK', '2016-08-23', 'tegangan VCC untuk IC103^ abnormal,seharusnya 14.5v', 2, NULL, 0, 1),
(97, 'F0097', 'FA', 'Sakban', 'Ali', '2016-08-24', 'YAS-306', 'G', 'Digital', 'Download Error', ' -', ' -', ' -', ' -', 'RETURN', '2016-08-24', '', 2, NULL, 26, 1),
(98, 'F0098', 'FA', 'Deddy', 'Imam', '2016-08-23', 'YSP-2500', '', 'Beam', 'Absound', '-', '-', 'Recheck', '-', 'OK', '2016-08-25', '', 2, NULL, 44, 1),
(99, 'F0099', 'FA', 'Deddy', 'Imam', '2016-08-23', 'YSP-2500', '', 'Digital', 'No Destination', '-', '-', 'Redownload', '-', 'OK', '2016-09-07', '', 2, NULL, 42, 1),
(100, 'F0100', 'FA', 'Titik', 'Ali', '2016-08-24', 'YAS-203', 'U', '', 'LED Merah', '-', '-', 'Recheck', '-', 'OK', '2016-08-24', '-', 2, NULL, 0, 1),
(101, 'F0101', 'FA', 'Udin', 'Ali', '2016-08-24', 'DBR', '', 'DSP', 'FAN', '-', 'Electrical', 'Change', 'IC 504^', 'OK', '2016-08-24', '-', 2, NULL, 0, 1),
(102, 'F0102', 'FA', 'Titik', 'Ali', '2016-08-24', 'WSW41', 'U', '', 'No Click', 'poor solder', '-', 'Touch Up', 'T1^', 'OK', '2016-08-27', '-', 2, NULL, 0, 1),
(103, 'F0103', 'FA', 'Titik', 'Ali', '2016-08-24', 'WSW41', 'U', '', 'LED Merah', 'Solder Bridge', 'Proses PCB', '-', 'Q23*', 'RETURN', '2016-08-27', '-', 2, NULL, 0, 1),
(104, 'F0104', 'FA', 'Sukron', 'Ali', '2016-08-24', 'DXS18', '', 'Input', 'Step 9', '-', '-', 'Recheck', '-', 'OK', '2016-08-25', '-', 2, NULL, 0, 1),
(105, 'F0105', 'FA', 'Deddy', 'Imam', '2016-08-24', 'YSP-2500', '', 'Beam', 'D4-1 error', 'Solder Bridge', 'Proses PCB', '-', 'side B', 'RETURN', '2016-08-24', 'Visual check', 2, NULL, 44, 1),
(106, 'F0106', 'FA', 'Deddy', 'Imam', '2016-08-24', 'YSP-2500', '', 'Beam', 'Array No Sound 1-8', '-', '-', 'Recheck', '-', 'OK', '2016-08-24', '-', 2, NULL, 44, 1),
(107, 'F0107', 'FA', 'Sukron', 'Ali', '2016-08-24', 'DXS18', '', 'Input', 'Step 8', 'WPA', 'Proses PCB', '-', 'CN', 'RETURN', '2016-08-24', 'switch X over abnormal', 2, NULL, 0, 1),
(108, 'F0108', 'FA', 'Titik', 'Ali', '2016-08-24', 'Silent Piano', '', 'AM', 'Step 59', '-', '-', 'Recheck', '-', 'OK', '2016-08-25', '-', 2, NULL, 0, 1),
(109, 'F0109', 'FA', 'Titik', 'Ali', '2016-08-24', 'Silent Piano', '', 'AM', 'Step 14/UFT', '-', '-', 'Recheck', '-', 'OK', '2016-08-25', '-', 2, NULL, 0, 1),
(110, 'F0110', 'FA', 'Titik', 'Ali', '2016-08-24', 'Silent Piano', '', 'AM', 'Step 13/UFT', '-', '-', 'Recheck', '-', 'OK', '2016-08-25', '-', 2, NULL, 0, 1),
(111, 'F0111', 'FA', 'Titik', 'Ali', '2016-08-24', 'Silent Piano', '', 'UH', 'Step 10', 'Open', 'Electrical', 'Change', 'R4*', 'OK', '2016-08-25', '-', 2, NULL, 0, 1),
(112, 'F0112', 'FA', 'Titik', 'Ali', '2016-08-24', 'Silent Piano', '', 'UH', 'Step 52', 'Open', 'Material', 'Change', 'L1*', 'OK', '2016-08-25', '-', 2, NULL, 0, 1),
(113, 'F0113', 'FA', 'Vani', 'Ali', '2016-08-24', 'YAS-306', '', '', 'No Sound SW', 'Solder Bridge', 'Proses PCB', '', 'L305^', 'RETURN', '2016-08-30', '', 2, NULL, 0, 1),
(114, 'F0114', 'FA', 'Sakban', 'Ali', '2016-08-24', 'YAS-306', '', '', 'Download Error', '', '', '', '', 'RETURN', '2016-09-07', '', 2, NULL, 0, 1),
(115, 'F0115', 'FA', 'Deddy', 'Imam', '2016-08-24', 'YSP-2500', '', 'Digital', 'Oflash Error', 'Part broken', 'Handling FA', '-', 'L5*', 'RETURN', '2016-08-24', 'Visual check', 2, NULL, 42, 1),
(116, 'F0116', 'FA', 'Deddy', 'Imam', '2016-08-24', 'YSP-2500', '', 'Digital', 'HDMI Error', '-', '-', '-', '-', 'RETURN', '2016-09-29', 'keep', 2, NULL, 42, 1),
(117, 'F0117', 'FA', 'Deddy', 'Imam', '2016-08-24', 'WSW120', '', 'DAC', 'LED Abnormal', '-', '-', 'Recheck', '-', 'OK', '2016-08-25', '-', 2, NULL, 0, 1),
(118, 'F0118', 'FA', 'Deddy', 'Imam', '2016-08-24', 'SW216', 'A', '', 'F = 0', 'bengkok', 'Handling FA', 'Reset', 'IC1 #1 - #2', 'OK', '2016-08-25', 'Visual check', 2, NULL, 0, 1),
(119, 'F0119', 'FA', 'Deddy', 'Imam', '2016-08-25', 'SW216', 'A', '', 'F = 0', 'short', 'Material', 'Change', 'C15', 'OK', '2016-08-25', 'jika PCB input terpasang maka RY1 tidak bekerja tapi jika PCB input dilepas maka RY1 bisa bekerja', 2, NULL, 0, 1),
(120, 'F0120', 'FA', 'Sukron', 'Ali', '2016-08-25', 'DXS18', '', 'AMPS2', 'Step 3 ', '-', '-', 'Recheck', '-', 'OK', '2016-08-29', 'di check fct NG,setting VR OK', 2, NULL, 109, 1),
(121, 'F0121', 'FA', 'Titik', 'Ali', '2016-08-26', 'WSW41', 'U', '', 'Over', 'unsolder', 'Proses PCB', '-', 'R33*', 'RETURN', '2016-08-27', 'diganti DAC dan Avnera tetap NG', 2, NULL, 0, 1),
(122, 'F0122', 'FA', 'Titik', 'Ali', '2016-08-26', 'WSW41', 'U', '', 'Over', 'unsolder', 'Proses PCB', '-', 'R33*', 'RETURN', '2016-08-27', 'diganti DAC dan Avnera tetap NG', 2, NULL, 0, 1),
(123, 'F0123', 'FA', 'Sakban', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'Download Error', ' -', ' -', ' -', ' -', 'RETURN', '2016-08-26', '', 2, NULL, 0, 1),
(124, 'F0124', 'FA', 'Sakban', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'Download Error', '', '', '', '', 'RETURN', '2016-09-07', '', 2, NULL, 0, 1),
(125, 'F0125', 'FA', 'Sakban', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'Download Error', ' -', ' -', '', ' -', 'RETURN', '2016-08-30', '', 2, NULL, 0, 1),
(126, 'F0126', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'IR Check R/L', 'slanting', 'Proses PCB', 'Reinsert', 'U651^', 'OK', '2016-08-27', '-', 2, NULL, 0, 1),
(127, 'F0127', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'IR Check R/L', 'slanting', 'Proses PCB', 'Reinsert', 'U651^', 'OK', '2016-08-27', '-', 2, NULL, 0, 1),
(128, 'F0128', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'IR Check R/L', 'slanting', 'Proses PCB', 'Reinsert', 'U651^', 'OK', '2016-08-27', '-', 2, NULL, 0, 1),
(129, 'F0129', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'IR Check R/L', 'slanting', 'Proses PCB', 'Reinsert', 'U651^', 'OK', '2016-08-27', '-', 2, NULL, 0, 1),
(130, 'F0130', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'IR Check R/L', 'slanting', 'Proses PCB', 'Reinsert', 'U651^', 'OK', '2016-08-27', '-', 2, NULL, 0, 1),
(131, 'F0131', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'IR Check R/L', 'Open', 'Proses PCB', 'Change', 'U651^', 'OK', '2016-08-29', '', 2, NULL, 0, 1),
(132, 'F0132', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'IR Check R/L', 'Open', 'Proses PCB', 'Change', 'U651^', 'OK', '2016-08-29', '', 2, NULL, 0, 1),
(133, 'F0133', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'IR Check R/L', 'slanting', 'Proses PCB', 'Reinsert', 'U651^', 'OK', '2016-08-29', '', 2, NULL, 0, 1),
(134, 'F0134', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'IR Check R/L', 'Open', 'Proses PCB', 'Change', 'U651^', 'OK', '2016-08-29', '', 2, NULL, 0, 1),
(135, 'F0135', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', ' IR Check R', 'slanting', 'Proses PCB', 'Reinsert', 'U651^', 'OK', '2016-08-27', '-', 2, NULL, 0, 1),
(136, 'F0136', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', ' IR Check R', 'slanting', 'Proses PCB', 'Reinsert', 'U651^', 'OK', '2016-08-27', '-', 2, NULL, 0, 1),
(137, 'F0137', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', ' IR Check R', 'Solder Bridge', 'Proses PCB', ' -', 'W404^', 'RETURN', '2016-08-30', '', 2, NULL, 0, 1),
(138, 'F0138', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', ' IR Check R', ' -', 'Electrical', 'Change', 'D802^', 'OK', '2016-08-30', '', 2, NULL, 0, 1),
(139, 'F0139', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'IR Check L', 'Solder Bridge', 'Proses PCB', 'Touch Up', 'W404^', 'OK', '2016-08-27', '-', 2, NULL, 0, 1),
(140, 'F0140', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'IR Check L', 'Broken', 'Handling FA', ' -', 'R452*', 'RETURN', '2016-08-30', '', 2, NULL, 0, 1),
(141, 'F0141', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound SW R', 'Solder Bridge', 'Proses PCB', '', 'L305^', 'RETURN', '2016-08-29', '', 2, NULL, 0, 1),
(142, 'F0142', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound SW R', 'Solder Bridge', 'Proses PCB', '', 'L305^', 'RETURN', '2016-08-29', '', 2, NULL, 0, 1),
(143, 'F0143', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound SW R', 'Solder Bridge', 'Proses PCB', '', 'L305^', 'RETURN', '2016-08-29', '', 2, NULL, 0, 1),
(144, 'F0144', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound SW R', 'Solder Bridge', 'Proses PCB', '', 'L305^', 'RETURN', '2016-08-29', '', 2, NULL, 0, 1),
(145, 'F0145', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound WF L', 'Solder Bridge', 'Proses PCB', '', 'L305^', 'RETURN', '2016-08-30', '', 2, NULL, 0, 1),
(146, 'F0146', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound all', 'Solder Bridge', 'Proses PCB', '', 'R223^', 'RETURN', '2016-09-03', '', 2, NULL, 0, 1),
(147, 'F0147', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound WF L', 'Solder Bridge', 'Proses PCB', '', 'R223^', 'OK', '2016-09-03', '', 2, NULL, 0, 1),
(148, 'F0148', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound all', 'Solder Bridge', 'Proses PCB', '', 'R223^', 'RETURN', '2016-09-03', '', 2, NULL, 0, 1),
(149, 'F0149', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound SW L', 'Solder Bridge', 'Proses PCB', '', 'L305^', 'RETURN', '2016-08-29', '', 2, NULL, 0, 1),
(150, 'F0150', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound SW L', 'Solder Bridge', 'Proses PCB', '', 'L305^', 'RETURN', '2016-08-29', '', 2, NULL, 0, 1),
(151, 'F0151', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound SW L', 'Solder Bridge', 'Proses PCB', '', 'L305^', 'RETURN', '2016-08-29', '', 2, NULL, 0, 1),
(152, 'F0152', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound SW L', 'Solder Bridge', 'Proses PCB', '', 'L305^', 'RETURN', '2016-08-29', '', 2, NULL, 0, 1),
(153, 'F0153', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound SW L', 'Solder Bridge', 'Proses PCB', '', 'L305^', 'RETURN', '2016-08-29', '', 2, NULL, 0, 1),
(154, 'F0154', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound SW R', 'Solder Bridge', 'Proses PCB', '', 'L305^', 'RETURN', '2016-08-29', '', 2, NULL, 0, 1),
(155, 'F0155', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound SW', 'Solder Bridge', 'Proses PCB', '', 'L305^', 'RETURN', '2016-08-29', '', 2, NULL, 0, 1),
(156, 'F0156', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound SW', 'Solder Bridge', 'Proses PCB', '', 'L305^', 'RETURN', '2016-08-29', '', 2, NULL, 0, 1),
(157, 'F0157', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound SW', 'Solder Bridge', 'Proses PCB', '', 'L305^', 'RETURN', '2016-08-29', '', 2, NULL, 0, 1),
(158, 'F0158', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound SW', 'Solder Bridge', 'Proses PCB', '', 'L305^', 'RETURN', '2016-08-29', '', 2, NULL, 0, 1),
(159, 'F0159', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound SW', 'Solder Bridge', 'Proses PCB', '', 'L305^', 'RETURN', '2016-08-29', '', 2, NULL, 0, 1),
(160, 'F0160', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound SW', 'Solder Bridge', 'Proses PCB', '', 'L305^', 'RETURN', '2016-08-29', '', 2, NULL, 0, 1),
(161, 'F0161', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound SW', 'Solder Bridge', 'Proses PCB', '', 'L305^', 'RETURN', '2016-08-29', '', 2, NULL, 0, 1),
(162, 'F0162', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound SW', 'Solder Bridge', 'Proses PCB', '', 'L305^', 'RETURN', '2016-08-30', '', 2, NULL, 0, 1),
(163, 'F0163', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'Abnormal R', 'Broken', 'Handling FA', '', 'C346*', 'RETURN', '2016-09-01', '', 2, NULL, 0, 1),
(164, 'F0164', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'Abnormal R', 'Broken', 'Handling FA', '', 'C346*', 'RETURN', '2016-09-01', '', 2, NULL, 0, 1),
(165, 'F0165', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'High Sound R', 'Broken', 'Handling FA', '', 'C346*', 'RETURN', '2016-09-01', '', 2, NULL, 0, 1),
(166, 'F0166', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'High Sound R', 'Broken', 'Handling FA', '', 'C346*', 'RETURN', '2016-09-05', '', 2, NULL, 0, 1),
(167, 'F0167', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No sound L', '', '', 'Recheck', '', 'OK', '2016-09-06', '', 2, NULL, 0, 1),
(168, 'F0168', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'Absound', '', '', 'Recheck', '', 'OK', '2016-09-02', '', 2, NULL, 0, 1),
(169, 'F0169', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'IR Check R/L', 'Open', 'Proses PCB', 'Change', 'U651^', 'OK', '2016-08-29', '', 2, NULL, 0, 1),
(170, 'F0170', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'IR Check R/L', 'Open', 'Proses PCB', 'Change', 'U651^', 'OK', '2016-08-29', '', 2, NULL, 0, 1),
(171, 'F0171', 'FA', 'Vani', 'Ali', '2016-08-27', 'YAS-306', 'G', '', 'IR Check R/L', 'Open', 'Proses PCB', 'Change', 'U651^', 'OK', '2016-08-30', '', 2, NULL, 0, 1),
(172, 'F0172', 'FA', 'Vani', 'Ali', '2016-08-28', 'YAS-306', 'G', '', 'IR Check R/L', 'Open', 'Proses PCB', 'Change', 'U651^', 'OK', '2016-08-30', '', 2, NULL, 0, 1),
(173, 'F0173', 'FA', 'Vani', 'Ali', '2016-08-29', 'YAS-306', 'G', '', 'IR Check R/L', 'Open', 'Proses PCB', 'Change', 'U651^', 'OK', '2016-08-30', '', 2, NULL, 0, 1),
(174, 'F0174', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'High Sound TW', 'Broken', 'Handling FA', '', 'C361*', 'RETURN', '2016-09-05', '', 2, NULL, 0, 1),
(175, 'F0175', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'No Sound SW', ' -', ' -', 'Recheck', ' -', 'OK', '2016-08-31', '', 2, NULL, 0, 1),
(176, 'F0176', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'Bluetooth Off', ' -', 'Electrical', 'Change', 'IC403^', 'OK', '2016-09-06', 'tidak bisa memeilih menu B.tooth,ganti Mi com &PCM tetap NG', 2, NULL, 0, 1),
(177, 'F0177', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'Bluetooth Off', 'Broken', 'Handling FA', 'Change', 'D606^', 'OK', '2016-09-09', '', 2, NULL, 0, 1),
(178, 'F0178', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'diag mode NG', 'Broken', 'Handling FA', 'Change', 'R187*', 'OK', '2016-09-08', '', 2, NULL, 0, 1),
(179, 'F0179', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'LED Bluetooth Off', 'Broken', 'Handling FA', 'Change', 'Q607^', 'OK', '2016-09-07', '', 2, NULL, 0, 1),
(180, 'F0180', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'Bluetooth Off', ' -', ' -', 'Recheck', '', 'OK', '2016-09-21', '', 2, NULL, 0, 1),
(181, 'F0181', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'LED redup', ' -', ' -', 'Recheck', ' -', 'OK', '2016-09-21', '', 2, NULL, 0, 1),
(182, 'F0182', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'diag mode NG', ' -', 'Electrical', 'Change', 'IC404*,IC403^,IC110^', 'SCRAP', '2016-09-21', 'check tera term muncul DAC read data error', 2, NULL, 0, 1),
(183, 'F0183', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'Remote Off', ' -', ' -', 'Recheck', '', 'OK', '2016-08-30', '', 2, NULL, 0, 1),
(184, 'F0184', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'NG Download', ' -', ' -', 'Redownload', '', 'OK', '2016-09-02', '', 2, NULL, 0, 1),
(185, 'F0185', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'NG Download', ' -', ' -', 'Redownload', '', 'OK', '2016-09-02', '', 2, NULL, 0, 1),
(186, 'F0186', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'NG Download', ' -', ' -', 'Redownload', '', 'OK', '2016-09-02', '', 2, NULL, 0, 1),
(187, 'F0187', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'NG Download', 'unsolder', 'Proses PCB', 'Touch Up', 'R118*', 'OK', '2016-09-02', '', 2, NULL, 0, 1),
(188, 'F0188', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'NG Download', 'Solder Bridge', 'Proses PCB', ' -', 'R128*', 'RETURN', '2016-09-02', '', 2, NULL, 0, 1),
(189, 'F0189', 'FA', 'Vani', 'Ali', '2016-08-26', 'YAS-306', 'G', '', 'NG Download', ' -', ' -', 'Redownload', '', 'OK', '2016-09-02', '', 2, NULL, 0, 1),
(190, 'F0190', 'FA', 'Roni', 'Imam', '2016-08-26', 'SW515', 'L', '', 'Terbakar', 'short', 'Material', 'Change', 'Q26A,26C,27-30', 'OK', '2016-08-27', 'R19,23,107 ikut terbakar karena efek transistor yang short', 2, NULL, 0, 1),
(191, 'F0191', 'FA', 'Roni', 'Imam', '2016-08-26', 'SW515', 'L', '', 'Absound', 'Dirty', 'Handling FA', 'Cleaning', 'Q9', 'OK', '2016-08-27', 'Visual check', 2, NULL, 0, 1),
(192, 'F0192', 'FA', 'Deddy', 'Imam', '2016-08-26', 'SW40', 'U', '', 'Distorsi', '-', '-', 'Recheck', '-', 'OK', '2016-08-27', '', 2, NULL, 0, 1),
(193, 'F0193', 'FA', 'Rokisul', 'Ali', '2016-08-26', 'YSP-5600', '', 'Damp', 'Noise', ' -', 'Electrical', 'Change', 'IC315^', 'OK', '2016-08-27', '-', 2, NULL, 54, 1),
(194, 'F0194', 'FA', 'Udin', 'Ali', '2016-08-26', 'DBR', '', 'DSP', 'LED Abnormal', 'Pattern crack', 'Handling FA', '', '', 'SCRAP', '2016-08-31', '', 2, NULL, 0, 1),
(195, 'F0195', 'FA', 'Deddy', 'Imam', '2016-08-26', 'YSP-2500', '', 'headphone', 'NG Headphone', 'Open', 'Material', 'Change', 'JK901^', 'OK', '2016-08-27', 'AVOmeter check', 2, NULL, 0, 1),
(196, 'F0196', 'FA', 'Sukron', 'Ali', '2016-08-29', 'DSR215', '', 'DSP', 'Power Off', 'Solder Bridge', 'Proses PCB', '-', 'c215-c171', 'RETURN', '2016-08-29', '', 2, NULL, 134, 1),
(197, 'F0197', 'FA', 'Sukron', 'Ali', '2016-08-29', 'DSR215', '', 'DSP', 'Step 5', 'unsolder', 'Proses PCB', '-', 'RA101^', 'RETURN', '2016-08-29', '', 2, NULL, 134, 1),
(198, 'F0198', 'FA', 'Sukron', 'Ali', '2016-08-29', 'DSR215', '', 'DSP', 'LED Abnormal', 'Solder Bridge', 'Proses PCB', ' -', 'IC', 'RETURN', '2016-08-31', '', 2, NULL, 134, 1),
(199, 'F0199', 'FA', 'Werry', 'Ali', '2016-08-29', 'YAS-306', 'G', '', 'No Sound WF', 'Broken', 'Handling FA', ' -', 'R229^,R231^', 'RETURN', '2016-08-30', '', 2, NULL, 0, 1),
(200, 'F0200', 'FA', 'Werry', 'Ali', '2016-08-29', 'YAS-306', 'G', '', 'No Sound WF', 'Pattern crack', 'Handling FA', ' -', 'C311*', 'RETURN', '2016-08-30', '', 2, NULL, 0, 1),
(201, 'F0201', 'FA', 'Werry', 'Ali', '2016-08-29', 'YAS-306', 'G', '', 'IR Check R/L', ' -', 'Proses PCB', 'Change', 'U651^', 'RETURN', '2016-08-30', '', 2, NULL, 0, 1),
(202, 'F0202', 'FA', 'Werry', 'Ali', '2016-08-29', 'YAS-306', 'G', '', 'IR Check R/L', 'short', 'Proses PCB', 'Touch Up', 'U651^', 'OK', '2016-08-30', '', 2, NULL, 0, 1),
(203, 'F0203', 'FA', 'Werry', 'Ali', '2016-08-29', 'YAS-306', 'G', '', 'IR Check R/L', ' -', 'Proses PCB', 'Change', 'U651^', 'OK', '2016-08-30', '', 2, NULL, 0, 1),
(204, 'F0204', 'FA', 'Werry', 'Ali', '2016-08-29', 'YAS-306', 'G', '', 'IR Check R/L', ' -', 'Electrical', 'Change', 'D801^', 'OK', '2016-08-30', '', 2, NULL, 0, 1),
(205, 'F0205', 'FA', 'Werry', 'Ali', '2016-08-29', 'YAS-306', 'G', '', 'IR Check R/L', ' -', 'Proses PCB', 'Change', 'U651^', 'OK', '2016-09-05', '', 2, NULL, 0, 1),
(206, 'F0206', 'FA', 'Werry', 'Ali', '2016-08-29', 'YAS-306', 'G', '', 'IR Check R/L', ' -', 'Electrical', 'Change', 'D801^', 'OK', '2016-09-05', '', 2, NULL, 0, 1),
(207, 'F0207', 'FA', 'Werry', 'Ali', '2016-08-29', 'YAS-306', 'G', '', 'IR Check R/L', 'Shifted', 'Proses PCB', '', 'CB402^', 'RETURN', '2016-09-05', '', 2, NULL, 0, 1),
(208, 'F0208', 'FA', 'Roni', 'Imam', '2016-08-29', 'SW515', 'L', '', 'Absound', 'Burn', 'Handling FA', 'Change', 'R20, Q26A', 'OK', '2016-08-30', 'Visual check', 2, NULL, 0, 1),
(209, 'F0209', 'FA', 'Udin', 'Ali', '2016-08-30', 'DBR', '', 'DSP', 'STEP19', '', 'Electrical', '', '', 'SCRAP', '2016-09-09', '', 2, NULL, 0, 1),
(210, 'F0210', 'FA', 'Sakban', 'Ali', '2016-08-30', 'YAS-306', 'B', '', 'Download Error', ' -', ' -', 'Recheck', ' -', 'OK', '2016-09-17', '', 2, NULL, 0, 1),
(211, 'F0211', 'FA', 'Titik', 'Ali', '2016-08-31', 'Silent Piano', '', 'AM', 'DCN', '', '', 'Change', 'R129*', 'OK', '2016-08-31', '', 2, NULL, 0, 1),
(212, 'F0212', 'FA', 'Titik', 'Ali', '2016-08-31', 'Silent Piano', '', 'AM', 'DCN', '', '', 'Change', 'R129*', 'OK', '2016-08-31', '', 2, NULL, 0, 1),
(213, 'F0213', 'FA', 'Titik', 'Ali', '2016-08-31', 'Silent Piano', '', 'AM', 'DCN', '', '', 'Change', 'R129*', 'OK', '2016-08-31', '', 2, NULL, 0, 1),
(214, 'F0214', 'FA', 'Titik', 'Ali', '2016-08-31', 'Silent Piano', '', 'AM', 'DCN', '', '', 'Change', 'R129*', 'OK', '2016-08-31', '', 2, NULL, 0, 1),
(215, 'F0215', 'FA', 'Titik', 'Ali', '2016-08-31', 'Silent Piano', '', 'AM', 'DCN', '', '', 'Change', 'R129*', 'OK', '2016-08-31', '', 2, NULL, 0, 1),
(216, 'F0216', 'FA', 'Titik', 'Ali', '2016-08-31', 'Silent Piano', '', 'AM', 'DCN', '', '', 'Change', 'R129*', 'OK', '2016-08-31', '', 2, NULL, 0, 1),
(217, 'F0217', 'FA', 'Titik', 'Ali', '2016-08-31', 'Silent Piano', '', 'AM', 'DCN', '', '', 'Change', 'R129*', 'OK', '2016-08-31', '', 2, NULL, 0, 1),
(218, 'F0218', 'FA', 'Titik', 'Ali', '2016-08-31', 'Silent Piano', '', 'AM', 'DCN', '', '', 'Change', 'R129*', 'OK', '2016-08-31', '', 2, NULL, 0, 1),
(219, 'F0219', 'FA', 'Titik', 'Ali', '2016-08-31', 'Silent Piano', '', 'AM', 'DCN', '', '', 'Change', 'R129*', 'OK', '2016-08-31', '', 2, NULL, 0, 1),
(220, 'F0220', 'FA', 'Titik', 'Ali', '2016-08-31', 'Silent Piano', '', 'AM', 'DCN', '', '', 'Change', 'R129*', 'OK', '2016-08-31', '', 2, NULL, 0, 1),
(221, 'F0221', 'FA', 'Sukron', 'Ali', '2016-08-30', 'DSR215', '', 'AMPS1', 'P.off', ' -', ' -', 'Recheck', ' -', 'OK', '2016-09-17', '', 2, NULL, 133, 1),
(222, 'F0222', 'FA', 'Tom', 'Ali', '2016-08-31', 'YAS-306', 'A', '', 'IR Check R/L', ' -', 'Proses PCB', 'Change', 'U651^', 'OK', '2016-09-05', '', 2, NULL, 0, 1),
(223, 'F0223', 'FA', 'Tom', 'Ali', '2016-08-31', 'YAS-306', 'A', '', 'IR Check R/L', ' -', 'Proses PCB', 'Change', 'U651^', 'OK', '2016-09-05', '', 2, NULL, 0, 1),
(224, 'F0224', 'FA', 'Tom', 'Ali', '2016-08-31', 'YAS-306', 'A', '', 'Step2 off', 'unsolder', 'Proses PCB', 'Touch Up', 'U681^', 'OK', '2016-09-07', '', 2, NULL, 0, 1),
(225, 'F0225', 'FA', 'Deddy', 'Ali', '2016-08-31', 'SW050', 'R', '', 'No Sound', 'Open', 'Material', 'Change', 'R18^', 'OK', '2016-08-31', 'teg. +15vdc nge-drop', 2, NULL, 0, 1),
(226, 'F0226', 'FA', 'Rokisul', 'Ali', '2016-08-31', 'YSP-5600', '', 'HDMI', 'Error', 'Pattern crack', 'Handling FA', ' -', ' -', 'RETURN', '2016-09-16', '', 2, NULL, 53, 1),
(227, 'F0227', 'FA', 'Rokisul', 'Ali', '2016-08-31', 'YSP-5600', '', 'Digital', 'NO update', 'Shifted', 'Proses PCB', ' -', 'ic114*', 'RETURN', '2016-09-19', '', 2, NULL, 52, 1),
(228, 'F0228', 'FA', 'Vani', 'Ali', '2016-09-01', 'YAS-306', 'G', '', 'NG Download', 'Solder Bridge', 'Proses PCB', '', 'R128^', 'RETURN', '2016-09-03', '', 2, NULL, 0, 1),
(229, 'F0229', 'FA', 'Vani', 'Ali', '2016-09-01', 'YAS-306', 'G', '', 'NG Download', 'Solder Bridge', 'Proses PCB', '', 'R128^', 'OK', '2016-09-08', '', 2, NULL, 0, 1),
(230, 'F0230', 'FA', 'Vani', 'Ali', '2016-09-01', 'YAS-306', 'G', '', 'NG Download', 'Solder Bridge', 'Proses PCB', '', 'R128^', 'OK', '2016-09-08', '', 2, NULL, 0, 1),
(231, 'F0231', 'FA', 'Vani', 'Ali', '2016-09-01', 'YAS-306', 'G', '', 'step2,IR check', 'slanting,short', 'Proses PCB', 'Reinsert', 'W681^,U651^', 'OK', '2016-09-07', '', 2, NULL, 0, 1),
(232, 'F0232', 'FA', 'Vani', 'Ali', '2016-09-01', 'YAS-306', 'G', '', 'Step2', 'Slanting', 'Proses PCB', 'Reinsert', 'W681^ ', 'OK', '2016-09-07', '', 2, NULL, 0, 1),
(233, 'F0233', 'FA', 'Vani', 'Ali', '2016-09-01', 'YAS-306', 'G', '', 'IR Check L', 'Pattern crack', 'Handling FA', '-', 'CB802^', 'RETURN', '2016-09-05', '', 2, NULL, 0, 1),
(234, 'F0234', 'FA', 'Vani', 'Ali', '2016-09-01', 'YAS-306', 'B', '', 'Step2', 'Slanting', 'Proses PCB', 'Reinsert', 'W681^', 'OK', '2016-09-07', '', 2, NULL, 0, 1),
(235, 'F0235', 'FA', 'Vani', 'Ali', '2016-09-01', 'YAS-306', 'B', '', 'IR Check R/L', '', 'Proses PCB', 'Change', 'U651^', 'OK', '2016-09-05', '', 2, NULL, 0, 1),
(236, 'F0236', 'FA', 'Vani', 'Ali', '2016-09-01', 'YAS-306', 'B', '', 'IR Check R/L', ' -', ' -', ' Recheck', '', 'OK', '2016-09-05', '', 2, NULL, 0, 1),
(237, 'F0237', 'FA', 'Vani', 'Ali', '2016-09-01', 'YAS-306', 'B', '', 'IR Check R/L', '', 'Proses PCB', 'Change', 'U651^', 'OK', '2016-09-05', '', 2, NULL, 0, 1),
(238, 'F0238', 'FA', 'Vani', 'Ali', '2016-09-01', 'YAS-306', 'B', '', 'IR Check R/L', 'short', 'Proses PCB', 'Reinsert', 'U651^', 'OK', '2016-09-06', '', 2, NULL, 0, 1),
(239, 'F0239', 'FA', 'Vani', 'Ali', '2016-09-01', 'YAS-306', 'B', '', 'IR Check R/L', 'short', 'Proses PCB', 'Reinsert', 'U651^', 'OK', '2016-09-06', '', 2, NULL, 0, 1),
(240, 'F0240', 'FA', 'Vani', 'Ali', '2016-09-01', 'YAS-306', 'B', '', 'IR Check R/L', 'short', 'Proses PCB', 'Reinsert', 'U651^', 'OK', '2016-09-06', '', 2, NULL, 0, 1),
(241, 'F0241', 'FA', 'Vani', 'Ali', '2016-09-01', 'YAS-306', 'B', '', 'IR Check R/L', '', 'Proses PCB', 'Change', 'U651^', 'OK', '2016-09-06', '', 2, NULL, 0, 1),
(242, 'F0242', 'FA', 'Vani', 'Ali', '2016-09-01', 'YAS-306', 'B', '', 'IR Check R/L', '', 'Proses PCB', 'Change', 'U651^', 'OK', '2016-09-06', '', 2, NULL, 0, 1),
(243, 'F0243', 'FA', 'Sakban', 'Ali', '2016-09-01', 'YAS-306', '', 'digital', 'Download Error', '', '', '', '', 'RETURN', '2016-09-28', '', 2, NULL, 26, 1),
(244, 'F0244', 'FA', 'Sakban', 'Ali', '2016-09-01', 'YAS-306', '', 'digital', 'Download Error', '', '', '', ' ', 'RETURN', '2016-09-28', '', 2, NULL, 26, 1),
(245, 'F0245', 'FA', 'Deddy', 'Imam', '2016-08-30', 'WSW41', 'U', '', 'No Sound', 'Open', 'Material', 'Change', 'T1^', 'OK', '2016-08-31', 'saat CB24 di.short.kan acryon tidak bekerja, ternyata teg sekunder T1 ngedrop', 2, NULL, 0, 1),
(246, 'F0246', 'FA', 'Deddy', 'Imam', '2016-08-30', 'WSW41', 'U', '', 'No Sound', '', '', 'Recheck', '', 'OK', '2016-08-31', '', 2, NULL, 0, 1),
(247, 'F0247', 'FA', 'Deddy', 'Imam', '2016-08-31', 'YSP-2500', '', 'Digital', 'Volume kedip', 'Part broken', 'Handling FA', '-', 'R338^, R339^', 'RETURN', '2016-09-02', 'Visual check', 2, NULL, 42, 1),
(248, 'F0248', 'FA', 'Deddy', 'Imam', '2016-08-31', 'YSP-2700', '', 'Beam', 'Absound', 'Error', 'Material', 'Change', 'IC505^', 'OK', '2016-09-06', 'output IC505^ noise saat cek dgn sweeper', 2, NULL, 49, 1),
(249, 'F0249', 'FA', 'Deddy', 'Imam', '2016-08-31', 'YSP-2700', '', 'FL Display', 'FL off', 'Error', 'Material', 'Change', 'V801^', 'OK', '2016-09-02', 'Visual check', 2, NULL, 0, 1),
(250, 'F0250', 'FA', 'Deddy', 'Imam', '2016-08-31', 'YSP-2700', '', 'Digital', 'Power Off', '', '', '', '', 'SCRAP', '0000-00-00', '', 2, NULL, 47, 1),
(251, 'F0251', 'FA', 'Deddy', 'Imam', '2016-08-31', 'YSP-2700', '', 'Digital', 'Burn', 'Error', 'Material', 'Change', 'IC202^', 'SCRAP', '2016-09-06', 'pattern ikut terlepas saat proses melepas IC202 menggunakan blower DEN.ON', 2, NULL, 47, 1),
(252, 'F0252', 'FA', 'Deddy', 'Imam', '2016-09-02', 'FSW050', 'U', '', 'PSU NG', 'lead come off', 'Proses PCB', '-', 'RY2', 'RETURN', '2016-09-02', 'Visual check', 2, NULL, 0, 1),
(253, 'F0253', 'FA', 'FQA', 'Ali', '2016-09-03', 'YAS-306', '', 'Digital', 'LED LAN off', 'Part broken', 'Handling FA', 'Change', 'Q405*', 'OK', '2016-09-03', 'di check dg jig loopback normal mode', 2, NULL, 26, 1),
(254, 'F0254', 'FA', 'Udin', 'Ali', '2016-09-03', 'DBR', '', 'DSP', 'Step 4', ' -', ' -', 'Redownload', ' -', 'OK', '2016-09-08', '', 2, NULL, 0, 1),
(255, 'F0255', 'FA', 'Titik', 'Ali', '2016-09-01', 'WSW41', 'J', '', 'Distorsi', '', 'Material', 'Change', 'Avnera', 'OK', '2016-09-07', '', 2, NULL, 0, 1),
(256, 'F0256', 'FA', 'Titik', 'Ali', '2016-09-02', 'WSW41', 'C', '', 'Distorsi', '', 'Material', 'Change', 'Avnera', 'OK', '2016-09-07', '', 2, NULL, 0, 1),
(257, 'F0257', 'FA', 'Deddy', 'Imam', '2016-09-03', 'SW216', 'A', '', 'F = 0', 'bengkok', 'Handling FA', 'Reset', 'IC1', 'OK', '2016-09-05', 'Visual check', 2, NULL, 0, 1),
(258, 'F0258', 'FA', 'Deddy', 'Imam', '2016-09-03', 'DSR115', 'U', 'AMPS1', 'Polarity woofer', 'Part broken', 'Handling FA', '-', 'C701^', 'RETURN', '2016-09-05', 'Visual check', 2, NULL, 122, 1),
(259, 'F0259', 'FA', 'Titik', 'Ali', '2016-09-05', 'YAS-203', 'G', '', 'NG avnera', '', '', '', '', 'RETURN', '2016-09-07', '', 2, NULL, 0, 1),
(260, 'F0260', 'FA', 'Titik', 'Ali', '2016-09-05', 'YAS-203', 'G', '', 'P.off', '', '', '', '', 'RETURN', '2016-09-07', '', 2, NULL, 0, 1),
(261, 'F0261', 'FA', 'Titik', 'Ali', '2016-09-05', 'YAS-203', 'G', '', 'P.off', '', 'Electrical', 'Change', 'IC701*,T701^', 'OK', '2016-09-14', '', 2, NULL, 0, 1),
(262, 'F0262', 'FA', 'Udin', 'Ali', '2016-09-05', 'DBR', '', 'DSP', 'STEP4', ' -', 'Electrical', 'Change', 'IC504^', 'OK', '2016-09-08', '', 2, NULL, 0, 1),
(263, 'F0263', 'FA', 'Udin', 'Ali', '2016-09-05', 'DBR', '', 'DSP', 'STEP4', ' -', 'Electrical', 'Change', 'IC504^', 'OK', '2016-09-08', '', 2, NULL, 0, 1),
(264, 'F0264', 'FA', 'Rokisul', 'Ali', '2016-09-06', 'YSP-5600', '', 'Damp', 'Noise', '', '', '', '', '', '0000-00-00', '', 2, NULL, 54, 1),
(265, 'F0265', 'FA', 'Rokisul', 'Ali', '2016-09-06', 'YSP-5600', '', 'Damp', 'Nosound wo R/L', ' -', ' -', 'Recheck', ' -', 'OK', '2016-09-19', '', 2, NULL, 54, 1),
(266, 'F0266', 'FA', 'Sakban', 'Ali', '2016-09-05', 'YAS-306', 'G', '', 'Cut Off', ' -', ' -', ' -', ' -', 'RETURN', '2016-09-08', '', 2, NULL, 0, 1),
(267, 'F0267', 'FA', 'Sakban', 'Ali', '2016-09-05', 'YAS-306', 'G', '', 'Download Error', '', '', '', '', 'RETURN', '2016-09-28', '', 2, NULL, 0, 1),
(268, 'F0268', 'FA', 'Sakban', 'Ali', '2016-09-05', 'YAS-306', 'B', '', 'Download Error', ' -', ' -', ' -', ' -', 'RETURN', '2016-09-08', '', 2, NULL, 0, 1),
(269, 'F0269', 'FA', 'Vani', 'Ali', '2016-09-06', 'YAS-306', 'V', '', 'IR Check R/L', 'Open', 'Broken', 'Change', 'U651^', 'OK', '2016-09-07', 'analisa, U651^ open karena proses T.up  / adjust untuk meluruskan part', 2, NULL, 0, 1),
(270, 'F0270', 'FA', 'Vani', 'Ali', '2016-09-06', 'YAS-306', 'G', '', 'IR Check R/L', '-', '-', 'recheck', '-', 'OK', '2016-09-07', '', 2, NULL, 0, 1),
(271, 'F0271', 'FA', 'Vani', 'Ali', '2016-09-06', 'YAS-306', 'B', '', 'IR Check R/L', 'Open', 'Proses PCB', 'Change', 'U651^', 'RETURN', '2016-09-09', '', 2, NULL, 0, 1),
(272, 'F0272', 'FA', 'Vani', 'Ali', '2016-09-06', 'YAS-306', 'B', '', 'IR Check R/L', 'Open', 'Proses PCB', 'Change', 'U651^', 'RETURN', '2016-09-09', '', 2, NULL, 0, 1),
(273, 'F0273', 'FA', 'Vani', 'Ali', '2016-09-06', 'YAS-306', 'B', '', 'High sound', 'Pattern crack', 'Burn', '', 'IC305^', 'SCRAP', '2016-09-09', '', 2, NULL, 0, 1),
(274, 'F0274', 'FA', 'Vani', 'Ali', '2016-09-06', 'YAS-306', 'G', '', 'High sound', 'Broken', 'Handling FA', '', 'C346*', 'RETURN', '2016-09-09', '', 2, NULL, 0, 1),
(275, 'F0275', 'FA', 'Vani', 'Ali', '2016-09-06', 'YAS-306', 'B', '', 'STEP2', 'Broken', 'Handling FA', 'Change', 'W681^', 'OK', '2016-09-09', '', 2, NULL, 0, 1),
(276, 'F0276', 'FA', 'Sakban', 'Ali', '2016-09-07', 'YAS-306', 'G', '', 'Download Error', ' -', ' -', ' -', ' -', 'RETURN', '2016-09-08', '', 2, NULL, 0, 1),
(277, 'F0277', 'FA', 'Deddy', 'Imam', '2016-09-07', 'YSP-2700', '', 'Digital', 'FL off', '-', '-', 'Redownload', '-', 'OK', '2016-09-08', 'setelah download+FCT produk nyala tapi display unknowndest, redownload dest. Akhirnya normal', 2, NULL, 47, 1),
(278, 'F0278', 'FA', 'Udin', 'Ali', '2016-09-08', 'DBR', '', 'DSP', 'LED Abnormal', ' -', 'Electrical', 'Change', ' IC504^', 'OK', '2016-09-09', '', 2, NULL, 0, 1),
(279, 'F0279', 'FA', 'Udin', 'Ali', '2016-09-08', 'DBR', '', 'DSP', 'P.off', ' -', ' -', 'Redownload', ' -', 'OK', '2016-09-08', '', 2, NULL, 0, 1),
(280, 'F0280', 'FA', 'Udin', 'Ali', '2016-09-08', 'DBR', '', 'DSP', 'P.off', ' -', ' -', 'Redownload', ' -', 'OK', '2016-09-08', '', 2, NULL, 0, 1),
(281, 'F0281', 'FA', 'Deddy', 'Imam', '2016-09-07', 'SW012', 'G', '', 'F = 0', 'short', 'Material', 'Change', 'D3', 'OK', '2016-09-08', 'teg, -15vdc ngedrop', 2, NULL, 0, 1),
(282, 'F0282', 'FA', 'Deddy', 'Imam', '2016-09-07', 'SW40', 'G', '', 'F = 0', 'short', 'Material', 'Change', 'D3', 'OK', '2016-09-08', 'teg, -15vdc ngedrop', 2, NULL, 0, 1),
(283, 'F0283', 'FA', 'Udin', 'Ali', '2016-09-09', 'DBR', '', 'DSP', 'LED Abnormal', ' -', 'Electrical', 'Change', 'IC504^', 'OK', '2016-09-09', '', 2, NULL, 0, 1),
(284, 'F0284', 'FA', 'Sakban', 'Ali', '2016-09-08', 'YAS-306', 'G', '', 'diag mode NG', 'microSolder Bridge', 'Proses PCB', ' -', 'IC410^', 'RETURN', '2016-09-16', '', 2, NULL, 0, 1),
(285, 'F0285', 'FA', 'Deddy', 'Imam', '2016-09-08', 'YSP-2700', '', 'Beam', 'D4-1 error', 'Error', 'Material', 'Change', 'IC501^, 503^, 505^', 'OK', '2016-09-23', 'status DEV OK tetapi no sound array all', 2, NULL, 49, 1),
(286, 'F0286', 'FA', 'Deddy', 'Imam', '2016-09-08', 'SW200', 'R', '', 'F = 0', 'short', 'Handling FA', 'Reinsert', 'jumper^', 'OK', '2016-09-10', 'jika mendapat input audio, RY1^ langsung cut off. lokasi Q42^ jika diukur seperti bocor padahal tidak', 2, NULL, 0, 1),
(287, 'F0287', 'FA', 'Deddy', 'Imam', '2016-09-09', 'SW200', 'T', '', 'F = 0', 'bocor', 'Material', 'Change', 'Q39*', 'OK', '2016-09-10', 'posisi CB4 jika diukur pin +15 dan -15 , tegangannya tidak seimbang. Di sisi primer RY1 terukur +25vdc dan +29vdc yang normalnya +0.1vdc dan +24vdc', 2, NULL, 0, 1),
(288, 'F0288', 'FA', 'Deddy', 'Imam', '2016-09-09', 'SW40', 'L', '', 'Distorsi', 'Error', 'Material', 'Change', 'IC1, C15, F2', 'OK', '2016-09-13', '', 2, NULL, 0, 1),
(289, 'F0289', 'FA', 'Zuhri', 'Imam', '2016-09-13', 'YRS-2500', 'J', 'Damp', 'Cut Off', '-', '-', '-', '-', 'RETURN', '2016-09-20', '', 2, NULL, 0, 1);
INSERT INTO `data_repair` (`id`, `no`, `section`, `pic_prod`, `pic_pe`, `in_date`, `model`, `dest`, `pcb`, `defect`, `detail`, `cause`, `action`, `location`, `status`, `out_date`, `remark`, `priority`, `est_finish_date`, `repair_time_id`, `flag`) VALUES
(290, 'F0290', 'FA', 'Zuhri', 'Imam', '2016-09-13', 'YRS-2500', 'J', 'Damp', 'Absound', '-', '-', '-', '-', 'RETURN', '2016-09-20', '', 2, NULL, 0, 1),
(291, 'F0291', 'FA', 'Zuhri', 'Imam', '2016-09-13', 'YRS-2500', 'J', 'Damp', 'damp error', '-', '-', '-', '-', 'RETURN', '2016-09-20', '', 2, NULL, 0, 1),
(292, 'F0292', 'FA', 'Zuhri', 'Imam', '2016-09-13', 'WSW160', 'J', '', 'No Sound', '-', '-', '-', '-', 'SCRAP', '2016-09-14', '', 2, NULL, 0, 1),
(293, 'F0293', 'FA', 'Rokisul', 'Ali', '2016-09-14', 'YSP-5600', '', 'digital', 'NO update', ' -', ' -', 'Redownload', ' -', 'OK', '2016-09-19', '', 2, NULL, 52, 1),
(294, 'F0294', 'FA', 'Rokisul', 'Ali', '2016-09-14', 'YSP-5600', '', 'digital', 'NO update', ' -', ' -', 'Redownload', ' -', 'OK', '2016-09-19', '', 2, NULL, 52, 1),
(295, 'F0295', 'FA', 'Titik', 'Ali', '2016-09-14', 'YAS-203', 'U', '', 'Cut Off', 'Pattern crack', 'Handling FA', ' -', 'C733*', 'SCRAP', '2016-09-14', '', 2, NULL, 0, 1),
(296, 'F0296', 'FA', 'Titik', 'Ali', '2016-09-14', 'SR301', '', '', '5H PRT', 'unsolder', 'Proses PCB', ' -', 'CB', 'RETURN', '2016-09-14', 'Visual check', 2, NULL, 0, 1),
(297, 'F0297', 'FA', 'Titik', 'Ali', '2016-09-14', 'SR301', '', '', '5H PRT', 'unsolder', 'Proses PCB', ' -', 'CB', 'RETURN', '2016-09-14', 'Visual check', 2, NULL, 0, 1),
(298, 'F0298', 'FA', 'Andik', 'Imam', '2016-09-14', 'SW40', 'U', '', 'F = 0', 'short', 'Material', 'Change', 'D3', 'OK', '2016-09-14', 'teg, -15vdc ngedrop', 2, NULL, 0, 1),
(299, 'F0400', 'FA', 'Vani', 'Ali', '2016-09-14', 'YAS-306', 'G', '', 'IR Check R/L', 'Open', 'Proses PCB', 'Change', 'U651^', 'OK', '2016-09-15', '', 2, NULL, 0, 1),
(300, 'F0401', 'FA', 'Vani', 'Ali', '2016-09-14', 'YAS-306', 'G', '', 'IR Check R/L', ' -', ' -', 'Recheck', ' -', 'OK', '2016-09-15', '', 2, NULL, 0, 1),
(301, 'F0402', 'FA', 'Vani', 'Ali', '2016-09-14', 'YAS-306', 'G', '', 'IR Check R/L', 'Open', 'Proses PCB', 'Change', 'U651^', 'OK', '2016-09-15', '', 2, NULL, 0, 1),
(302, 'F0403', 'FA', 'Vani', 'Ali', '2016-09-14', 'YAS-306', 'G', '', 'High sound', 'Broken', 'Handling FA', '', 'C346*', 'RETURN', '2016-09-15', '', 2, NULL, 0, 1),
(303, 'F0404', 'FA', 'Titik', 'Ali', '2016-09-15', 'SR301', 'T', 'HDMI', '5H PRT', 'unsolder', 'Proses PCB', '-', 'CB6^', 'RETURN', '2016-09-15', 'Visual check', 2, NULL, 0, 1),
(304, 'F0405', 'FA', 'Titik', 'Ali', '2016-09-15', 'SR301', 'T', 'HDMI', '5H PRT', 'unsolder', 'Proses PCB', '-', 'CB6^', 'RETURN', '2016-09-15', 'Visual check', 2, NULL, 0, 1),
(305, 'F0406', 'FA', 'Vani', 'Ali', '2016-09-15', 'YAS-306', ' -', ' -', 'IR Check R/L', 'Open', 'Proses PCB', 'Change', 'U651^', 'OK', '2016-09-15', '', 2, NULL, 0, 1),
(306, 'F0407', 'FA', 'Vani', 'Ali', '2016-09-15', 'YAS-306', ' -', ' -', 'IR Check R/L', 'Open', 'Proses PCB', 'Change', 'U651^', 'OK', '2016-09-15', '', 2, NULL, 0, 1),
(307, 'F0408', 'FA', 'Vani', 'Ali', '2016-09-15', 'YAS-306', ' -', ' -', 'IR Check R/L', 'Broken', 'Handling FA', '', ' W404^', 'RETURN', '2016-09-21', '', 2, NULL, 0, 1),
(308, 'F0409', 'FA', 'Vani', 'Ali', '2016-09-15', 'YAS-306', ' -', ' -', 'IR Check R/L', ' -', ' -', 'Recheck', ' -', 'OK', '2016-09-21', '', 2, NULL, 0, 1),
(309, 'F0410', 'FA', 'Vani', 'Ali', '2016-09-15', 'YAS-306', ' -', ' -', 'Remote Off', 'Swap', 'Handling FA', 'Reinsert', 'W651^', 'OK', '2016-09-17', '', 2, NULL, 0, 1),
(310, 'F0411', 'FA', 'Vani', 'Ali', '2016-09-15', 'YAS-306', ' -', ' -', 'Nosound wo R/L', 'Solder Bridge', 'Proses PCB', ' -', 'IC305^', 'RETURN', '2016-09-21', '', 2, NULL, 0, 1),
(311, 'F0412', 'FA', 'Ikhwan', 'Imam', '2016-09-15', 'WSW41', 'G', '-', 'pairing absound', 'Error', 'Material', 'Change', 'Avnera', 'OK', '2016-09-15', 'pairing pertama sound OK, saat diulang pairing OK tapi no sound', 2, NULL, 0, 1),
(312, 'F0413', 'FA', 'Ikhwan', 'Imam', '2016-09-14', 'WSW121', 'A', 'Input', 'LED off', 'Open', 'Material', 'Change', 'W204^', 'OK', '2016-09-16', 'di W201^ teg +5WM tidak ada, di W204^ teg +5V juga tidak ada, tapi teg +5V di CB304^(timer) normal. Ternyata W204^ #3 diukur open', 2, NULL, 0, 1),
(313, 'F0414', 'FA', 'Yusuf', 'Imam', '2016-09-15', 'SW012', 'G', '', 'F = 0', 'short', 'Material', 'Change', 'Q9,D2,D28', 'OK', '2016-09-16', 'R45 terbakar karena efek Q9 yang short', 2, NULL, 0, 1),
(314, 'F0415', 'FA', 'Yusuf', 'Imam', '2016-09-15', 'SW012', 'G', '', 'F = 0', 'short', 'Material', 'Change', 'Q9,D28', 'OK', '2016-09-16', 'AVOmeter check', 2, NULL, 0, 1),
(315, 'F0416', 'FA', 'Yusuf', 'Imam', '2016-09-15', 'SW210', 'G', '', 'No Sound', 'Open', 'Material', 'Change', 'Q2', 'OK', '2016-09-16', 'gejala teg basis Q20 terukur +0.7vdc , harusnya -5 ~ -7 vdc', 2, NULL, 0, 1),
(316, 'F0417', 'FA', 'Yusuf', 'Imam', '2016-09-15', 'SW210', 'G', '', 'No Sound', 'Open', 'Material', 'Change', 'Q2', 'OK', '2016-09-16', 'gejala teg basis Q20 terukur +0.7vdc , harusnya -5 ~ -7 vdc', 2, NULL, 0, 1),
(317, 'F0418', 'FA', 'Ikhwan', 'Imam', '2016-09-15', 'SR301', 'T', '', 'Cut Off', 'slanting', 'Handling FA', 'Reinsert', 'konektor CB607^', 'OK', '2016-09-16', 'Visual check', 2, NULL, 0, 1),
(318, 'F0419', 'FA', 'Ikhwan', 'Imam', '2016-09-15', 'SR301', 'T', '', 'USB no sound', '-', '-', 'recheck', '-', 'OK', '2016-09-16', '', 2, NULL, 0, 1),
(319, 'F0420', 'FA', 'Yusuf', 'Imam', '2016-09-15', 'SW210', 'J', '', 'Fuse Burn', 'short', 'Material', 'Change', 'IC1', 'OK', '2016-09-17', 'AVOmeter check', 2, NULL, 0, 1),
(320, 'F0421', 'FA', 'Yusuf', 'Imam', '2016-09-15', 'SW210', 'J', '', 'No Sound', 'bocor', 'Material', 'Change', 'Q2', 'OK', '2016-09-17', 'gejala teg basis Q20 terukur +0.7vdc , harusnya -5 ~ -7 vdc', 2, NULL, 0, 1),
(321, 'F0422', 'FA', 'Ikhwan', 'Imam', '2016-09-16', 'WSW121', 'A', 'Timer', 'AVMT FAIL', 'Open', 'Material', 'Change', 'RY302^', 'OK', '2016-09-17', 'teg p-con dan +5v normal, pairing OK, teg primer RY302 masing-masing 12vdc dan 0mv tapi relay tidak bekerja', 2, NULL, 0, 1),
(322, 'F0423', 'FA', 'Yusuf', 'Imam', '2016-09-17', 'SW210', 'U', '', 'No Sound', 'bocor', 'Material', 'Change', 'Q2', 'OK', '2016-09-17', 'gejala teg basis Q20 terukur +0.7vdc , harusnya -5 ~ -7 vdc', 2, NULL, 0, 1),
(323, 'F0424', 'FA', 'Yusuf', 'Imam', '2016-09-17', 'SW210', 'G', '', 'No Sound', 'bocor', 'Material', 'Change', 'Q2', 'OK', '2016-09-17', 'gejala teg basis Q20 terukur +0.7vdc , harusnya -5 ~ -7 vdc', 2, NULL, 0, 1),
(324, 'F0425', 'FA', 'Udin', 'Ali', '2016-09-20', 'DSR112', '', 'AMPS1', 'Cut Off', ' -', 'Electrical', 'Change', 'IC103^', 'OK', '2016-09-20', 'check fct NG step2,check dg AVO tdk ad yg short', 2, NULL, 116, 1),
(325, 'F0426', 'FA', 'Titik', 'Ali', '2016-09-16', 'YAS-203', '', '', 'No Sound', '', 'Electrical', 'Change', 'IC4,IC5,IC303,IC304', 'SCRAP', '2016-10-25', '', 2, NULL, 0, 1),
(326, 'F0427', 'FA', 'Sakban', 'Ali', '2016-09-19', 'YAS-706', 'U', '', 'Network NG', '', '', '', '', 'RETURN', '2016-09-28', '', 2, NULL, 0, 1),
(327, 'F0428', 'FA', 'Ikhwan', 'Imam', '2016-09-17', 'WSW121', 'B', 'TImer', 'AVMT FAIL', 'Open', 'Material', 'Change', 'RY302^', 'OK', '2016-09-17', 'teg p-con dan +5v normal, pairing OK, teg primer RY302 masing-masing 12vdc dan 0mv tapi relay tidak bekerja', 2, NULL, 0, 1),
(328, 'F0429', 'FA', 'Andik', 'Imam', '2016-09-19', 'SW40', 'U', '', 'Power Off', 'Pattern crack', 'Handling FA', '-', 'main trafo', 'RETURN', '2016-09-20', 'Visual check', 2, NULL, 0, 1),
(329, 'F0430', 'FA', 'Yusuf', 'Imam', '2016-09-19', 'SW210', 'G', '', 'No Sound', 'bocor', 'Material', 'Change', 'Q2', 'OK', '2016-09-20', 'gejala teg basis Q20 terukur +0.7vdc , harusnya -5 ~ -7 vdc', 2, NULL, 0, 1),
(330, 'F0431', 'FA', 'Vani', 'Ali', '2016-09-20', 'YAS-306', 'G', '', 'High sound', 'Broken', 'Handling FA', ' -', 'C361*', 'RETURN', '2016-09-21', '', 2, NULL, 0, 1),
(331, 'F0432', 'FA', 'Vani', 'Ali', '2016-09-20', 'YAS-306', 'G', '', 'High sound', 'Broken', 'Handling FA', ' -', 'C346*', 'RETURN', '2016-09-21', '', 2, NULL, 0, 1),
(332, 'F0433', 'FA', 'Vani', 'Ali', '2016-09-20', 'YAS-306', 'G', '', 'Absound', 'Broken', 'Handling FA', ' -', 'C346*', 'RETURN', '2016-09-21', '', 2, NULL, 0, 1),
(333, 'F0434', 'FA', 'Vani', 'Ali', '2016-09-20', 'YAS-306', 'G', '', 'High sound', 'Solder Bridge', 'Proses PCB', ' -', 'R223^', 'RETURN', '2016-09-21', '', 2, NULL, 0, 1),
(334, 'F0435', 'FA', 'Ikhwan', 'Imam', '2016-09-20', 'SR301', 'T', 'Main', 'USB no sound', 'unsolder', 'Proses PCB', '-', 'R813^', 'RETURN', '2016-09-21', 'ketika port USB dipasang flashdisk, tidak terbaca dan tampilan USB EXTENDED tidak bisa loading dan tidak blinking', 2, NULL, 0, 1),
(335, 'F0436', 'FA', 'Vani', 'Ali', '2016-09-15', 'YAS-306', '', '', 'high sound', 'Broken', 'Handling FA', ' -', 'C348*', 'RETURN', '2016-09-21', '', 2, NULL, 0, 1),
(336, 'F0437', 'FA', 'Vani', 'Ali', '2016-09-15', 'YAS-306', '', '', 'IR Check R/L', 'short', 'Proses PCB', 'Reinsert', 'U651^', 'OK', '2016-09-21', '', 2, NULL, 0, 1),
(337, 'F0438', 'FA', 'Gley', 'Imam', '2016-09-14', 'SW901', 'J', 'Digital', 'Absound', 'Error', 'Material', 'Change', 'IC103^', 'OK', '2016-09-22', 'cek sound noise sebelum ada input audio, teg di kaki C135^ dan C136^ normal +14vdc, C166^ juga normal +80vd tapi teg di C167^ tidak stabil / naik-turun', 2, NULL, 0, 1),
(338, 'F0439', 'FA', 'Yusuf', 'Imam', '2016-09-20', 'SW315', 'G', '', 'Absound', 'Error', 'Material', 'Change', 'VR1', 'OK', '2016-09-22', 'saat VR1 diputar-putar terdengar suara asing walaupun tidak ada input audio', 2, NULL, 0, 1),
(339, 'F0440', 'FA', 'Udin', 'Ali', '2016-09-21', 'DSR112', '', 'AMPS1', 'Cut Off', ' -', ' -', ' -', ' -', 'RETURN', '2016-09-28', 'stock taking', 2, NULL, 116, 1),
(340, 'F0441', 'FA', 'Udin', 'Ali', '2016-09-21', 'DSR112', '', 'AMPS1', 'STEP 2', ' -', 'Proses PCB', 'Touch Up', 'R128^', 'OK', '2016-09-27', 'terdengar suara ''''ngerik''''ketika proses APX', 2, NULL, 116, 1),
(341, 'F0442', 'FA', 'Deddy', 'Imam', '2016-09-09', 'YSP-2700', '', 'Beam', 'Array No Sound 1-8', 'Error', 'Material', 'Change', 'IC501^, 503^, 505^', 'OK', '2016-09-23', 'status DEV OK tetapi no sound array all', 2, NULL, 49, 1),
(342, 'F0443', 'FA', 'Rokisul', 'Ali', '2016-09-26', 'YSP-5600', '', 'HDMI', 'ERR HDMI', '', 'Electrical', 'Change', 'IC4^', 'SCRAP', '2016-09-27', '', 2, NULL, 53, 1),
(343, 'F0444', 'FA', 'Rokisul', 'Ali', '2016-09-24', 'YSP-5600', '', 'Damp', 'Woofer No Sound', '', '', '', '', '', '0000-00-00', '', 2, NULL, 54, 1),
(344, 'F0445', 'FA', 'Rokisul', 'Ali', '2016-09-24', 'SWK16', '', '', 'LED off', 'Pattern crack', 'Proses PCB', ' -', 'C8^', 'SCRAP', '2016-09-27', '', 2, NULL, 0, 1),
(345, 'F0446', 'FA', 'Titik', 'Ali', '2016-10-06', 'YAS-203', 'U', '', 'Power Off', '', '', 'Recheck', '', 'OK', '2016-09-28', 'stock taking', 2, NULL, 0, 1),
(346, 'F0447', 'FA', 'Titik', 'Ali', '2016-09-20', 'WSW41', 'U', '', 'LED hijau', 'unsolder', 'Proses PCB', 'Touch Up', 'IC8*', 'OK', '2016-09-27', '', 2, NULL, 0, 1),
(347, 'F0448', 'FA', 'Titik', 'Ali', '2016-09-27', 'WSW41', 'U', '', 'Distorsi', 'missing part', 'Proses PCB', 'Reinsert', 'R5*', 'OK', '2016-09-28', '', 2, NULL, 0, 1),
(348, 'F0449', 'FA', 'Titik', 'Ali', '2016-09-27', 'DKV', '', 'CC', 'STEP34/fct', 'Bad solder', 'Proses PCB', ' -', '', 'RETURN', '2016-09-28', 'R45 terbakar karena efek Q9 yang short', 2, NULL, 0, 1),
(349, 'F0450', 'FA', 'Vani', 'Ali', '2016-10-06', 'YAS-706', 'U', '', 'Power Off', 'slanting', 'Handling FA', 'Reinsert', 'FFC', 'OK', '2016-10-06', '', 2, NULL, 0, 1),
(350, 'F0451', 'FA', 'Tom', 'Ali', '2016-10-03', 'YAS-306', 'G', '', 'No Sound', 'Broken', 'Handling FA', 'Change', 'R227^', 'OK', '2016-10-19', '', 2, NULL, 0, 1),
(351, 'F0452', 'FA', 'Tom', 'Ali', '2016-10-03', 'YAS-306', 'G', '', 'Preset Noise', 'microSolder Bridge', 'Proses PCB', 'Touch Up', 'IC201^_21-22', 'OK', '2016-10-12', 'ketika proses set factory(78-E0) terdengar ada noise', 2, NULL, 0, 1),
(352, 'F0453', 'FA', 'Yusuf', 'Imam', '2016-09-26', 'SW050', 'G', '', 'F = 0', 'missing part', 'Proses PCB', '-', 'R51*', 'RETURN', '2016-09-27', 'teg di kaki primer RY1 masing" terukur +30vdc', 2, NULL, 0, 1),
(353, 'F0454', 'FA', 'Zuhri', 'Imam', '2016-09-26', 'YAS-203', 'U', '', 'BT no connect', 'unsolder', 'Proses PCB', '-', 'CB1^', 'RETURN', '2016-09-27', 'Visual check', 2, NULL, 0, 1),
(354, 'F0455', 'FA', 'Bagus', 'Imam', '2016-09-27', 'SW40', 'U', '', 'F = 0', 'Open', 'Proses PCB', 'Change', 'D2', 'OK', '2016-09-27', 'teg +14vdc over jadi +22vdc', 2, NULL, 0, 1),
(355, 'F0456', 'FA', 'Tom', 'Ali', '2016-10-03', 'YAS-306', 'G', '', 'Absound', ' -', ' -', ' -', ' -', 'RETURN', '2016-10-07', '', 2, NULL, 0, 1),
(356, 'F0457', 'FA', 'Vani', 'Ali', '2016-10-03', 'YAS-706', 'U', '', 'led off blue tooth', 'unsolder', 'Proses PCB', ' -', 'CB404^', 'RETURN', '2016-10-06', '', 2, NULL, 0, 1),
(357, 'F0458', 'FA', 'Vani', 'Ali', '2016-10-03', 'YAS-706', 'U', '', 'absound tweeter L', ' -', ' -', 'Recheck', ' -', 'OK', '2016-10-04', '', 2, NULL, 0, 1),
(358, 'F0459', 'FA', 'Vani', 'Ali', '2016-10-04', 'YAS-706', 'U', '', 'No sound wf', 'Bad solder', 'Proses PCB', ' -', 'CB901^', 'RETURN', '2016-10-06', '', 2, NULL, 0, 1),
(359, 'F0460', 'FA', 'Tom', 'Ali', '2016-10-04', 'YAS-306', 'A', '', 'Power Off', 'wrong part', ' -', ' -', 'PCB LED', 'RETURN', '2016-10-11', '', 2, NULL, 0, 1),
(360, 'F0461', 'FA', 'Tom', 'Ali', '2016-10-04', 'YAS-306', 'A', '', 'absound tweeter ', 'unsolder', 'Proses PCB', ' -', 'C355*', 'RETURN', '2016-10-11', '', 2, NULL, 0, 1),
(361, 'F0462', 'FA', 'Udin', 'Ali', '2016-10-03', 'DBR', '', 'DSP', 'STEP28', 'Error', 'Electrical', 'Change', 'R625*', 'OK', '2016-11-04', 'check FCT ok,APX Ngselisih antara spec upper lower dengan act tipis sekali,Input (R input bermasalah)', 2, NULL, 0, 1),
(362, 'F0463', 'FA', 'Udin', 'Ali', '2016-10-03', 'DBR', '', 'DSP', 'STEP4', '', '-', 'Redownload', '', 'OK', '2016-10-06', '', 2, NULL, 0, 1),
(363, 'F0464', 'FA', 'Bagus', 'Imam', '2016-10-04', 'SW200', 'A', '', 'F = 0', 'wrong polarity', 'Material', 'Change', 'W2^', 'OK', '2016-10-05', 'R221^ dan R218^ terbakar karena mendapat suplai tegangan dengan polaritas terbalik', 2, NULL, 0, 1),
(364, 'F0465', 'FA', 'Ikhwan', 'Imam', '2016-10-04', 'SRT-700', '', 'Digital', 'Cut Off', 'Error', 'Material', 'Change', 'IC5^', 'SCRAP', '2016-10-06', '', 2, NULL, 2, 1),
(365, 'F0466', 'FA', 'Syahril', 'Ali', '2016-10-04', 'YAS-105', 'G', '', 'No sound', 'Broken', 'Handling FA', 'Change', 'IC310^', 'OK', '2016-10-07', '', 2, NULL, 0, 1),
(366, 'F0467', 'FA', 'Syahril', 'Ali', '2016-10-04', 'YAS-105', 'G', '', 'diag mode NG', 'Broken', 'Material', 'Change', 'W610^', 'OK', '2016-10-07', '', 2, NULL, 0, 1),
(367, 'F0468', 'FA', 'Titik', 'Ali', '2016-10-04', 'WSW41', 'J', '', 'Over step2', 'Error', 'Electrical', 'Change', 'Q35*', 'OK', '2016-10-06', '', 2, NULL, 0, 1),
(368, 'F0469', 'FA', 'Titik', 'Ali', '2016-10-04', 'YAS-203', 'L', '', 'Power Off', 'Error', 'Electrical', 'Change', 'IC701*,T701^', 'OK', '2016-10-08', '', 2, NULL, 0, 1),
(369, 'F0470', 'FA', 'Vani', 'Ali', '2016-10-04', 'YAS-706', 'U', '', 'IR Check R/L', 'Open', 'Proses PCB', ' -', 'U651^', 'RETURN', '2016-10-06', '', 2, NULL, 0, 1),
(370, 'F0471', 'FA', 'Syahril', 'Ali', '2016-10-07', 'YAS-105', 'G', '', 'diag mode NG', '', '', 'Recheck', '', 'OK', '2016-10-07', '', 2, NULL, 0, 1),
(371, 'F0472', 'FA', 'Syahril', 'Ali', '2016-10-07', 'YAS-105', 'G', '', 'diag mode NG', 'Broken', 'Handling FA', 'Change', 'W609^', 'OK', '2016-10-08', '', 2, NULL, 0, 1),
(372, 'F0473', 'FA', 'Syahril', 'Ali', '2016-10-07', 'YAS-105', 'G', '', 'diag mode NG', ' -', ' -', ' -', ' -', 'RETURN', '2016-10-12', '', 2, NULL, 0, 1),
(373, 'F0474', 'FA', 'Syahril', 'Ali', '2016-10-07', 'YAS-105', 'G', '', 'diag mode NG', 'Broken', 'Handling FA', 'Change', 'W609^', 'OK', '2016-10-08', '', 2, NULL, 0, 1),
(374, 'F0475', 'FA', 'Udin', 'Ali', '2016-10-07', 'DBR', '', 'DSP', 'LED Abnormal', 'Error', 'Electrical', 'Change', 'IC504^', 'OK', '2016-11-07', 'FCT ok,APX ok line no sound', 2, NULL, 0, 1),
(375, 'F0476', 'FA', 'Udin', 'Ali', '2016-10-07', 'DBR', '', 'DSP', 'STEP28 ', 'Error', 'Electrical', 'Change', 'R625*', 'OK', '2016-11-04', 'check FCT ok,APX Ngselisih antara spec upper lower dengan act tipis sekali,Input (R input bermasalah)', 2, NULL, 0, 1),
(376, 'F0477', 'FA', 'Udin', 'Ali', '2016-10-07', 'DBR', '', 'DSP', 'STEP16', '', '', '', '', '', '0000-00-00', '', 2, NULL, 0, 1),
(377, 'F0478', 'FA', 'Tom', 'Ali', '2016-10-06', 'YAS-306', 'A', '', 'Abnormal function', 'unsolder', 'Proses PCB', ' -', 'U681^', 'OK', '2016-10-17', '', 2, NULL, 0, 1),
(378, 'F0479', 'FA', 'Tom', 'Ali', '2016-10-07', 'YAS-706', 'U', '', 'High sound TW', ' -', ' -', 'Recheck', ' -', 'OK', '2016-10-10', '', 2, NULL, 0, 1),
(379, 'F0480', 'FA', 'Tom', 'Ali', '2016-10-07', 'YAS-706', 'U', '', 'LED status off', 'unsolder', 'Proses PCB', ' -', 'CB404^', 'RETURN', '2016-10-10', '', 2, NULL, 0, 1),
(380, 'F0481', 'FA', 'Tom', 'Ali', '2016-10-07', 'YAS-706', 'C', '', 'IR Check R/L', ' no insert', ' -', 'Reinsert', 'W651^', 'OK', '2016-10-10', '', 2, NULL, 0, 1),
(381, 'F0482', 'FA', 'Sinyo', 'Imam', '2016-10-07', 'SW210', 'G', '', 'F = 0', 'bend', 'Handling FA', 'Return FA', 'CB3#4', 'RETURN', '2016-10-08', 'Visual check', 2, NULL, 0, 1),
(382, 'F0483', 'FA', 'Sinyo', 'Imam', '2016-10-07', 'SW210', 'J', '', 'no sound', 'Open', 'Material', 'Change', 'Q2', 'OK', '2016-10-08', 'gejala teg basis Q20 terukur +0.7vdc , harusnya -5 ~ -7 vdc', 2, NULL, 0, 1),
(383, 'F0484', 'FA', 'Sinyo', 'Imam', '2016-10-07', 'SW210', 'J', '', 'no sound', 'short', 'Material', 'Change', 'Q2', 'OK', '2016-10-08', 'gejala teg basis Q20 terukur +0.7vdc , harusnya -5 ~ -7 vdc', 2, NULL, 0, 1),
(384, 'F0485', 'FA', 'Sinyo', 'Imam', '2016-10-08', 'SW210', 'G', '', 'no sound', 'short', 'Material', 'Change', 'Q2', 'OK', '2016-10-08', 'gejala teg basis Q20 terukur +0.7vdc , harusnya -5 ~ -7 vdc', 2, NULL, 0, 1),
(385, 'F0486', 'FA', 'Ikhwan', 'Imam', '2016-10-04', 'SRT-1500', '', 'Input', 'HDMI NG', 'Pattern crack', '-', 'Return FA', 'IC HDMI ^', 'SCRAP', '2016-10-05', 'proses repair', 2, NULL, 11, 1),
(386, 'F0487', 'FA', 'Ikhwan', 'Imam', '2016-10-04', 'WSW121', 'U', '', 'AVMT FAIL', '-', '-', 'Recheck', '-', 'OK', '2016-10-06', '', 2, NULL, 0, 1),
(387, 'F0488', 'FA', 'Ikhwan', 'Imam', '2016-10-04', 'WSW121', 'U', '', 'AVMT FAIL', '-', '-', 'Change', 'IC201*, 203*, Q206*', 'SCRAP', '2016-10-07', '', 2, NULL, 0, 1),
(388, 'F0489', 'FA', 'Ikhwan', 'Imam', '2016-10-06', 'WSW121', 'B', '', 'AVMT FAIL', 'Error', 'Material', 'Change', 'IC201*, 203*, Q206*', 'OK', '2016-10-07', '', 2, NULL, 0, 1),
(389, 'F0490', 'FA', 'Ikhwan', 'Imam', '2016-10-08', 'SRT-700', 'B', 'power', 'Power Off', 'Pattern crack', 'Handling FA', 'Return FA', 'side B', 'SCRAP', '2016-10-08', 'Visual check', 2, NULL, 4, 1),
(390, 'F0491', 'FA', 'Ikhwan', 'Imam', '2016-10-08', 'SW200', 'G', '', 'absound', 'Open', 'Material', 'Change', 'VR1', 'OK', '2016-10-10', 'jika dicek teg sp.out ada selisih 2-3 vac lebih rendah dari yang OK', 2, NULL, 0, 1),
(391, 'F0492', 'FA', 'Titik', 'Ali', '2016-10-08', 'YAS-203', 'U', '', 'NG avnera', 'Broken', 'Handling FA', 'Change', 'R96*', 'OK', '2016-10-10', '', 2, NULL, 0, 1),
(392, 'F0493', 'FA', 'Udin', 'Ali', '2016-10-08', 'DBR', '', 'DSP', 'STEP16', '', '', '', '', '', '0000-00-00', '', 2, NULL, 0, 1),
(393, 'F0494', 'FA', 'Udin', 'Ali', '2016-10-08', 'DBR', '', 'DSP', 'STEP27', ' -', ' -', 'Recheck', ' -', 'OK', '2016-10-25', '', 2, NULL, 0, 1),
(394, 'F0495', 'FA', 'Rokisul', 'Ali', '2016-10-08', 'YSP-5600', '', 'Digital', 'NO update', 'unsolder', 'Proses PCB', 'Touch Up', 'R1849^', 'OK', '2016-11-21', 'power on ok,ketika tombol yang lain di tekan tidak fungsi', 2, NULL, 52, 1),
(395, 'F0496', 'FA', 'Vani', 'Ali', '2016-10-10', 'YAS-306', '', '', 'diag mode NG', 'slanting', 'Handling FA', 'Reinsert', 'W681^', 'OK', '2016-10-12', '', 2, NULL, 0, 1),
(396, 'F0497', 'FA', 'Vani', 'Ali', '2016-10-10', 'YAS-706', 'U', '', 'STEP2', 'Bad solder', 'Proses PCB', ' -', 'CB801^', 'RETURN', '2016-10-10', '', 2, NULL, 0, 1),
(397, 'F0498', 'FA', 'Vani', 'Ali', '2016-10-10', 'YAS-706', 'U', '', 'STEP2', 'Slanting', 'Handling FA', 'Reinsert', 'FFC', 'OK', '2016-10-11', '', 2, NULL, 0, 1),
(398, 'F0499', 'FA', 'Vani', 'Ali', '2016-10-10', 'YAS-706', 'U', '', 'Nosound TW', 'Slanting', 'Handling FA', 'Reinsert', 'FFC', 'OK', '2016-10-11', '', 2, NULL, 0, 1),
(399, 'F0500', 'FA', 'Vani', 'Ali', '2016-10-10', 'YAS-706', 'U', '', 'Nosound ', 'Unsolder', 'Proses PCB', ' -', 'CB801^', 'RETURN', '2016-10-11', '', 2, NULL, 0, 1),
(400, 'F0501', 'FA', 'Ikhwan', 'Imam', '2016-10-08', 'WSW121', 'G', '', 'AVMT FAIL', 'Open', 'Material', 'Change', 'T301^', 'OK', '2016-10-12', 'indikator LED nyala hijau (AVNERA connect) tapi RY302 tidak bekerja', 2, NULL, 0, 1),
(401, 'F0502', 'FA', 'Ikhwan', 'Imam', '2016-10-10', 'WSW121', 'G', '', 'LED Abnormal', 'Open', 'Material', 'Change', 'R79*', 'OK', '2016-10-13', 'koneksi AVNERA ok, RY302 normal tapi RY1 tidak bekerja dan LED berubah dari hijau ke orange, teg -15vdc over sampai +10vdc', 2, NULL, 0, 1),
(402, 'F0503', 'FA', 'Ikhwan', 'Imam', '2016-10-10', 'YSP-2700', '', 'FL Display', 'Remote Off', 'Error', 'Material', 'Change', 'U801^', 'OK', '2016-10-21', 'saat di-remote teg +3.3vdc di pin out IR sensor statis, normalnya +3.3vdc naik turun jika di-remote', 2, NULL, 0, 1),
(403, 'F0504', 'FA', 'Ikhwan', 'Imam', '2016-10-13', 'YSP-2500', '', 'Beam', 'Cut Off', 'Error', 'Material', 'Change', 'IC505^', 'OK', '2016-10-20', 'cut off saat pengecekan output speaker dan IC 505^ terasa panas', 2, NULL, 44, 1),
(404, 'F0505', 'FA', 'Ikhwan', 'Imam', '2016-10-10', 'YSP-2700', '', 'Digital', 'No Destination', '-', '-', 'Redownload', '-', 'OK', '2016-10-18', '', 2, NULL, 47, 1),
(405, 'F0506', 'FA', 'Ikhwan', 'Imam', '2016-10-10', 'YSP-2700', '', 'FL Display', 'display redup', 'Error', 'Material', 'Change', 'V801^', 'OK', '2016-10-21', 'teg VCC display normal 3vac tapi display tidak nyala', 2, NULL, 0, 1),
(406, 'F0507', 'FA', 'Anas', 'Imam', '2016-10-11', 'YRS-2500', '', 'Digital', 'Volume kedip', 'Part broken', 'Handling FA', '-', 'R339^', 'RETURN', '2016-10-12', 'Visual check', 2, NULL, 0, 1),
(407, 'F0508', 'FA', 'Sinyo', 'Imam', '2016-10-10', 'SW300', 'R', '', 'F = 0', 'short', 'Handling FA', '-', 'PJ1^', 'RETURN', '2016-10-12', 'Visual check', 2, NULL, 0, 1),
(408, 'F0509', 'FA', 'Sinyo', 'Imam', '2016-10-11', 'SW300', 'R', '', 'F = 0', 'unsolder', 'Proses PCB', '-', 'R156*', 'RETURN', '2016-10-12', 'teg CB4 #spryon normal tetapi RY1 tidak bekerja', 2, NULL, 0, 1),
(409, 'F0510', 'FA', 'Tom', 'Ali', '2016-10-11', 'YAS-306', 'V', '', 'IR Check R/L', 'Error', 'Proses PCB', ' -', 'U651^', 'RETURN', '2016-10-12', '', 2, NULL, 0, 1),
(410, 'F0511', 'FA', 'Rokisul', 'Ali', '2016-10-12', 'YSP-5600', '', 'Digital', 'NO picture', 'Bad solder', 'Proses PCB', ' -', 'CB211^', 'RETURN', '2016-10-13', '', 2, NULL, 52, 1),
(411, 'F0512', 'FA', 'Rokisul', 'Ali', '2016-10-12', 'YSP-5600', '', 'HDMI', 'NO update', 'unsolder', 'Proses PCB', ' -', 'CB6^', 'RETURN', '2016-10-13', '', 2, NULL, 53, 1),
(412, 'F0513', 'FA', 'Rokisul', 'Ali', '2016-10-12', 'YSP-5600', '', 'HDMI', 'Error HDMI', ' -', ' -', 'Recheck', ' -', 'OK', '2016-10-14', '', 2, NULL, 53, 1),
(413, 'F0514', 'FA', 'Rokisul', 'Ali', '2016-10-12', 'YSP-5600', '', 'HDMI', 'No Sound & Pict', 'Bad solder', 'Proses PCB', 'Touch Up', 'CB6^', 'OK', '2016-10-13', '', 2, NULL, 53, 1),
(414, 'F0515', 'FA', 'Rokisul', 'Ali', '2016-10-12', 'YSP-5600', '', 'Damp', 'Cut Off', 'Solder Bridge', 'Proses PCB', ' -', 'IC310^', 'RETURN', '2016-10-13', '', 2, NULL, 54, 1),
(415, 'F0516', 'FA', 'Rokisul', 'Ali', '2016-10-12', 'YSP-5600', '', 'Damp', 'No sound array 33', 'poor solder', 'Proses PCB', 'Touch Up', 'CB304^', 'OK', '2016-10-13', '', 2, NULL, 54, 1),
(416, 'F0517', 'FA', 'Sinyo', 'Imam', '2016-10-12', 'SW300', 'G', '', 'no sound', 'missing part', 'Proses PCB', '-', 'Q23*', 'RETURN', '2016-10-13', 'Visual check', 2, NULL, 0, 1),
(417, 'F0518', 'FA', 'Sinyo', 'Imam', '2016-10-12', 'SW300', 'G', '', 'F = 0', 'missing part', 'Proses PCB', '-', 'Q23*', 'RETURN', '2016-10-13', 'Visual check', 2, NULL, 0, 1),
(418, 'F0519', 'FA', 'Vani', 'Ali', '2016-10-12', 'YAS-706', 'U', '', 'diag mode NG', 'unsolder', 'Proses PCB', ' -', 'CB801^', 'RETURN', '2016-10-19', '', 2, NULL, 0, 1),
(419, 'F0520', 'FA', 'Vani', 'Ali', '2016-10-13', 'YAS-306', 'A', '', 'Absound', 'Error', 'Electrical', 'Change', 'IC301*', 'OK', '2016-10-19', 'terdengar noise ketika proses preset', 2, NULL, 0, 1),
(420, 'F0521', 'FA', 'Anas', 'Imam', '2016-10-12', 'YAS-203', 'U', '', 'BT no connect', 'wrong polarity', 'Handling FA', '-', 'flexible CB1', 'RETURN', '2016-10-14', 'Visual check', 2, NULL, 0, 1),
(421, 'F0522', 'FA', 'Ikhwan', 'Imam', '2016-10-13', 'WSW120', 'J', '', 'HIPOT FAIL', '-', '-', '-', '-', 'RETURN', '2016-10-14', '', 2, NULL, 0, 1),
(422, 'F0523', 'FA', 'Ikhwan', 'Imam', '2016-10-13', 'WSW120', 'J', '', 'LED Abnormal', 'missing part', 'Proses PCB', '-', 'C273^', 'RETURN', '2016-10-14', 'Visual check', 2, NULL, 0, 1),
(423, 'F0524', 'FA', 'Ikhwan', 'Imam', '2016-10-13', 'WSW120', 'J', '', 'pairing no connect', 'FL-FO', 'Proses PCB', '-', 'R904^', 'OK', '2016-10-14', 'switch DAC to F0553', 2, NULL, 0, 1),
(424, 'F0525', 'FA', 'Ikhwan', 'Imam', '2016-10-13', 'YSP-2500', '', 'Digital', 'Mic off', '', '', '', '', '', '0000-00-00', '', 2, NULL, 42, 1),
(425, 'F0526', 'FA', 'Ikhwan', 'Imam', '2016-10-10', 'YSP-2700', '', 'Beam', 'Cut Off', 'Solder Bridge', 'Proses PCB', '-', 'Q502^', 'OK', '2016-10-18', 'Visual check', 2, NULL, 49, 1),
(426, 'F0527', 'FA', 'Sinyo', 'Imam', '2016-10-12', 'SW300', 'G', '', 'Fuse Burn', 'wrong polarity', 'Proses PCB', '-', 'D39^, D40^', 'RETURN', '2016-10-14', 'Visual check', 2, NULL, 0, 1),
(427, 'F0528', 'FA', 'Titik', 'Ali', '2016-10-14', 'YAS-203', 'U', '', 'Power Off', 'No download', 'Proses PCB', ' -', ' -', 'RETURN', '2016-10-17', '', 2, NULL, 0, 1),
(428, 'F0529', 'FA', 'Titik', 'Ali', '2016-10-14', 'YAS-203', 'U', '', 'No Click', 'microSolder Bridge', 'Proses PCB', 'Touch Up', 'W1^', 'OK', '2016-10-17', '', 2, NULL, 0, 1),
(429, 'F0530', 'FA', 'Titik', 'Ali', '2016-10-17', 'YAS-203', 'U', '', 'LED hijau', 'microSolder Bridge', 'Proses PCB', ' -', 'D481^', 'RETURN', '2016-10-17', '', 2, NULL, 0, 1),
(430, 'F0531', 'FA', 'Udin', 'Ali', '2016-10-13', 'DSR', '', 'AMPS1', 'STEP5', 'Error', 'Electrical', 'Change', 'R336,337,338,339^', 'OK', '2016-10-21', 'check fct NG,VR 300 tidak respon', 2, NULL, 0, 1),
(431, 'F0532', 'FA', 'Udin', 'Ali', '2016-10-13', 'DSR', '', 'DSP', 'Cut Off', '', '', '', '', '', '0000-00-00', '', 2, NULL, 0, 1),
(432, 'F0533', 'FA', 'Udin', 'Ali', '2016-10-13', 'DSR', '', 'DSP', 'STEP50', '', '', '', '', '', '0000-00-00', '', 2, NULL, 0, 1),
(433, 'F0534', 'FA', 'Udin', 'Ali', '2016-10-13', 'DSR', '', 'DSP', 'STEP10/APX', 'floating', 'Proses PCB', ' -', 'R185^', 'RETURN', '2016-10-22', '', 2, NULL, 0, 1),
(434, 'F0535', 'FA', 'Tom', 'Ali', '2016-10-14', 'YAS-306', 'G', '', 'No sound', 'Broken', 'Handling FA', ' -', 'R227^', 'RETURN', '2016-10-26', '', 2, NULL, 0, 1),
(435, 'F0536', 'FA', 'Rokisul', 'Ali', '2016-10-18', 'YSP-5600', '', 'HDMI', 'No Sound & Pict', 'Error', 'Electrical', 'Change', 'IC4,IC9,IC2,IC5,IC6', 'SCRAP', '2016-11-22', '-1059401', 2, NULL, 53, 1),
(436, 'F0537', 'FA', 'Syahril', 'Ali', '2016-10-17', 'ATS-1050', '', '', 'diag mode NG', ' -', 'Electrical', 'Change', 'IC604*,IC603^', 'SCRAP', '2016-10-31', 'tegangan di kaki #1 pada W609 abnormal terukur 0.001', 2, NULL, 0, 1),
(437, 'F0538', 'FA', 'Sakban', 'Ali', '2016-10-17', 'YAS-306', 'G', '', 'diag mode NG', '', '', '', '', 'RETURN', '2016-11-10', '', 2, NULL, 0, 1),
(438, 'F0539', 'FA', 'Sakban', 'Ali', '2016-10-17', 'YAS-306', 'G', 'Digital', 'diag mode NG', ' -', ' -', ' -', ' -', 'RETURN', '2016-10-22', '', 2, NULL, 26, 1),
(439, 'F0540', 'FA', 'Ridho', 'Imam', '2016-10-13', 'HS8S', '', '', 'Step 15/25', 'missing part', 'Proses PCB', '-', 'R430*, 428*, 456*', 'RETURN', '2016-10-17', 'awal dihidupkan, ada teg bocor +44vdc di CB speaker (output) ', 2, NULL, 0, 1),
(440, 'F0541', 'FA', 'Ikhwan', 'Imam', '2016-10-14', 'WSW120', 'A', '', 'Connect No Sound', '-', '-', 'Recheck', '-', 'OK', '2016-10-18', '', 2, NULL, 0, 1),
(441, 'F0542', 'FA', 'Ikhwan', 'Imam', '2016-10-14', 'WSW120', 'J', '', 'AVMT FAIL', '-', '-', 'Recheck', '-', 'OK', '2016-10-18', '', 2, NULL, 0, 1),
(442, 'F0543', 'FA', 'Ikhwan', 'Imam', '2016-10-14', 'WSW120', 'K', '', 'No Sound', 'bend', 'Handling FA', '-', 'CB304^', 'RETURN', '2016-10-18', 'Visual check', 2, NULL, 0, 1),
(443, 'F0544', 'FA', 'Ikhwan', 'Imam', '2016-10-14', 'YSP-2500', '', 'Beam', 'Array No Sound 1-8', 'Error', 'Material', 'Change', 'IC501^, 503^, 505^', 'OK', '2016-10-20', 'status DEV OK tetapi no sound array all', 2, NULL, 44, 1),
(444, 'F0545', 'FA', 'Ikhwan', 'Imam', '2016-10-14', 'YSP-2500', '', 'Digital', 'TV No Sound', '', '', '', '', '', '0000-00-00', '', 2, NULL, 42, 1),
(445, 'F0546', 'FA', 'Ikhwan', 'Imam', '2016-10-14', 'YSP-2500', '', 'Beam', 'D4-1 Error', 'Error', 'Material', 'Change', 'IC505^', 'OK', '2016-10-20', 'cut off saat pengecekan output speaker dan IC 505^ terasa panas', 2, NULL, 44, 1),
(446, 'F0547', 'FA', 'Ikhwan', 'Imam', '2016-10-14', 'YSP-2500', '', 'Beam', 'Array No Sound 1-8', 'Error', 'Material', 'Change', 'IC501^, 503^, 505^', 'OK', '2016-10-20', 'status DEV OK tetapi no sound array all', 2, NULL, 44, 1),
(447, 'F0548', 'FA', 'Anas', 'Imam', '2016-10-17', 'YAS-203', 'U', '', 'IR Check NG', 'Solder Bridge', 'Proses PCB', '-', 'CB605*', 'RETURN', '2016-10-18', 'Visual check', 2, NULL, 0, 1),
(448, 'F0549', 'FA', 'Sinyo', 'Imam', '2016-10-18', 'SW216', 'A', '', 'Power Off', 'Open', 'Material', '-', 'main trafo', 'RETURN', '2016-10-18', 'tidak ada output di sisi sekunder trafo', 2, NULL, 0, 1),
(449, 'F0550', 'FA', 'Sinyo', 'Imam', '2016-10-18', 'SW216', 'A', '', 'No Sound', 'Open', 'Material', 'Change', 'Q2', 'OK', '2016-10-18', 'gejala teg basis Q20 terukur +0.7vdc , harusnya -5 ~ -7 vdc', 2, NULL, 0, 1),
(450, 'F0551', 'FA', 'Udin', 'Ali', '2016-10-17', 'DSR', '', 'IN4', 'Step 12', 'microSolder Bridge', 'Proses PCB', 'Touch Up', 'R105^', 'OK', '2016-10-18', '', 2, NULL, 0, 1),
(451, 'F0552', 'FA', 'Udin', 'Ali', '2016-10-17', 'DSR', '', 'IN4', 'Step 12', 'microSolder Bridge', 'Proses PCB', 'Touch Up', 'R105^', 'OK', '2016-10-18', '', 2, NULL, 0, 1),
(452, 'F0553', 'FA', 'Ikhwan', 'Imam', '2016-10-18', 'WSW120', 'G', '', 'AVMT FAIL', '', '', 'Recheck', '', 'OK', '2016-10-21', 'switch DAC to F0524', 2, NULL, 0, 1),
(453, 'F0554', 'FA', 'Ikhwan', 'Imam', '2016-10-18', 'YSP-2500', '', 'Button', 'tidak fungsi', 'Part broken', 'Handling FA', 'Change', 'R861*', 'OK', '2016-10-21', 'Visual check', 2, NULL, 0, 1),
(454, 'F0555', 'FA', 'Ikhwan', 'Imam', '2016-10-18', 'YSP-2500', '', 'Digital', 'Power Off', '-', '-', 'Redownload', '-', 'OK', '0000-00-00', '', 2, NULL, 42, 1),
(455, 'F0556', 'FA', 'Ikhwan', 'Imam', '2016-10-18', 'SRT-700', '', 'Digital', 'Power Off', '-', '-', 'Redownload', '-', 'OK', '2016-10-28', '', 2, NULL, 2, 1),
(456, 'F0557', 'FA', 'Anas', 'Imam', '2016-10-20', 'WSW41', 'U', '', 'Connect No Sound', 'Pattern crack', 'Handling FA', '-', 'main trafo', 'RETURN', '2016-10-21', 'Visual check', 2, NULL, 0, 1),
(457, 'F0558', 'FA', 'Titik', 'Ali', '2016-10-20', 'WSW41', 'U', '', 'LED hijau', 'Error', 'Electrical', 'Change', 'IC8*', 'OK', '2016-10-22', '', 2, NULL, 0, 1),
(458, 'F0559', 'FA', 'Titik', 'Ali', '2016-10-20', 'WSW41', 'U', '', 'Power Off', 'Broken', 'Material', 'Change', 'W4^', 'OK', '2016-10-22', '', 2, NULL, 0, 1),
(459, 'F0560', 'FA', 'Udin', 'Ali', '2016-10-19', 'DSR', '', 'AMPS1', 'STEP25', ' -', 'Electrical', 'Change', 'IC101^,L307^', 'SCRAP', '2016-10-22', 'pattern crack proses repair', 2, NULL, 0, 1),
(460, 'F0561', 'FA', 'Tom', 'Ali', '2016-10-20', 'YAS-706', 'C', '', 'No sound SW', 'Pattern crack', 'Proses PCB', ' -', 'CB801^', 'RETURN', '2016-10-21', '', 2, NULL, 0, 1),
(461, 'F0562', 'FA', 'Tom', 'Ali', '2016-10-20', 'YAS-706', 'C', '', 'No sound', 'Part Broken', 'Proses PCB', ' -', 'CB801^', 'RETURN', '2016-10-21', '', 2, NULL, 0, 1),
(462, 'F0563', 'FA', 'Sinyo', 'Imam', '2016-10-20', 'SW300', 'G', '', 'F = 0', 'wrong polarity', 'Proses PCB', 'Reinsert', 'D20*', 'OK', '2016-10-24', '', 2, NULL, 0, 1),
(463, 'F0564', 'FA', 'Sinyo', 'Imam', '2016-10-20', 'SW40', 'T', '', 'F = 0', 'short', 'Material', 'Change', 'D3', 'OK', '2016-10-22', 'teg. +15vdc nge-drop', 2, NULL, 0, 1),
(464, 'F0565', 'FA', 'Udin', 'Ali', '2016-10-19', 'DBR', '', 'DSP', 'STEP25', ' -', ' -', 'Recheck', ' -', 'OK', '2016-10-25', '', 2, NULL, 0, 1),
(465, 'F0566', 'FA', 'Sinyo', 'Imam', '2016-10-22', 'FSW100', 'G', '', 'F = 0', '-', '-', 'Reinsert', '-', 'OK', '2016-10-24', 'Visual check', 2, NULL, 0, 1),
(466, 'F0567', 'FA', 'Sinyo', 'Imam', '2016-10-24', 'SW315', 'U', '', 'F = 0', 'short', 'Material', 'Change', 'C39', 'OK', '2016-10-24', '', 2, NULL, 0, 1),
(467, 'F0568', 'FA', 'Sinyo', 'Imam', '2016-10-22', 'SW012', 'G', '', 'F = 0', 'short', 'Material', 'Change', 'D3', 'OK', '2016-10-25', 'teg. +15vdc nge-drop', 2, NULL, 0, 1),
(468, 'F0569', 'FA', 'Ikhwan', 'Imam', '2016-10-22', 'YSP-2700', '', 'Digital', 'HDMI NG', '-', '-', 'Change', 'IC1^, 4^, 407^, Q1*,2*,3*,4*,5*,6*', 'SCRAP', '2016-11-22', 'no.MDS : 1059399', 2, NULL, 47, 1),
(469, 'F0570', 'FA', 'Ikhwan', 'Imam', '2016-10-22', 'YSP-2700', '', 'Digital', 'mac address', '-', '-', 'Recheck', '-', 'OK', '2016-10-26', '', 2, NULL, 47, 1),
(470, 'F0571', 'FA', 'Ikhwan', 'Imam', '2016-10-22', 'YSP-2700', '', 'Digital', 'Power Off', 'Pattern crack', 'Burn', '-', 'IC202^', 'SCRAP', '2016-11-18', 'no.MDS : 1059398', 2, NULL, 47, 1),
(471, 'F0572', 'FA', 'Ikhwan', 'Imam', '2016-10-22', 'YSP-2700', '', 'Digital', 'device error', '-', '-', 'Recheck', '-', 'OK', '2016-10-26', '', 2, NULL, 47, 1),
(472, 'F0573', 'FA', 'Ikhwan', 'Imam', '2016-10-22', 'YSP-2700', '', 'Digital', 'No Destination', 'Solder Bridge', 'Proses PCB', '-', 'R401*', 'RETURN', '2016-10-27', 'Visual check', 2, NULL, 47, 1),
(473, 'F0574', 'FA', 'Gley', 'Imam', '2016-10-22', 'SW515', 'L', '', 'F = 0', 'Pattern crack', 'Handling FA', '-', 'Q37', 'RETURN', '2016-10-25', 'Visual check', 2, NULL, 0, 1),
(474, 'F0575', 'FA', 'Gley', 'Imam', '2016-10-22', 'SW515', 'L', '', 'F = 0', 'Solder Bridge', 'Proses PCB', '-', 'IC8', 'RETURN', '2016-10-25', 'Visual check', 2, NULL, 0, 1),
(475, 'F0576', 'FA', 'Karno', 'Imam', '2016-10-25', 'FSW100', 'G', '', 'switch NG', 'Error', 'Material', 'Change', 'SW5', 'OK', '2016-10-25', '', 2, NULL, 0, 1),
(476, 'F0577', 'FA', 'Karno', 'Imam', '2016-10-25', 'SW215', 'G', '', 'absound', 'Pattern crack', 'Proses PCB', '-', 'R230', 'RETURN', '2016-10-25', 'Visual check', 2, NULL, 0, 1),
(477, 'F0578', 'FA', 'Karno', 'Imam', '2016-10-25', 'SW215', 'G', '', 'absound', 'short', 'Handling FA', '-', 'PJ1^', 'RETURN', '2016-10-25', 'Visual check', 2, NULL, 0, 1),
(478, 'F0579', 'FA', 'Udin', 'Ali', '2016-10-22', 'DBR', '', 'DSP', 'STEP16', 'Burn', 'Electrical', 'Change', 'IC602^ ', 'OK', '2016-10-25', '', 2, NULL, 0, 1),
(479, 'F0580', 'FA', 'Titik', 'Ali', '2016-10-24', 'YAS-203', 'U', '', 'Power Off', 'No download', 'Proses PCB', ' -', ' -', 'RETURN', '2016-10-25', '', 2, NULL, 0, 1),
(480, 'F0581', 'FA', 'Tom', 'Ali', '2016-10-22', 'YAS-306', 'G', '', 'Remote function', ' -', ' -', 'reseting', ' -', 'OK', '2016-10-28', 'ketika proses pengecekan Dest unit berbunyi seperti proses ssound check,kemungkinan di sebabkan salah seting input seharusnya TV tetapi di seting analog', 2, NULL, 0, 1),
(481, 'F0582', 'FA', 'Tom', 'Ali', '2016-10-24', 'YAS-306', 'G', 'Digital', 'Power Off', 'Error', 'Electrical', 'Change', 'IC404*,XL401^,IC403^', 'OK', '2016-10-28', 'kondisi standby LED red mati,tetapi function ok,indikasinya sinyal pada kaki XL401^ abn(osciloscope),change IC404 dan XL401 tetap NG,change IC403 hasilnya "zen sawak"', 2, NULL, 26, 1),
(482, 'F0583', 'FA', 'Tom', 'Ali', '2016-10-24', 'YAS-306', 'G', '', 'IR Check NG', ' -', ' -', 'Recheck', ' -', 'OK', '0000-00-00', '', 2, NULL, 0, 1),
(483, 'F0584', 'FA', 'Tom', 'Ali', '2016-10-26', 'YAS-306', 'A', 'Digital', 'LED status off', 'Error', 'Electrical', 'Change', 'IC403^', 'OK', '2016-10-26', 'kondisi standby LED red mati,tetapi function ok,indikasinya sinyal pada kaki XL401^ abn(osciloscope)change IC403 hasilnya "zen sawak"', 2, NULL, 26, 1),
(484, 'F0585', 'FA', 'Tom', 'Ali', '2016-10-26', 'YAS-306', 'G', '', 'LED stetus merah off', 'poor solder', 'Proses PCB', 'Touch Up', 'D601^', 'OK', '2016-10-27', '', 2, NULL, 0, 1),
(485, 'F0586', 'FA', 'Ikhwan', 'Imam', '2016-10-25', 'SRT-700', '', 'Digital', 'Cut Off', 'Part broken', 'Handling FA', '-', 'C327*', 'RETURN', '2016-10-27', 'Visual check', 2, NULL, 2, 1),
(486, 'F0587', 'FA', 'Ikhwan', 'Imam', '2016-10-25', 'WSW121', 'G', '', 'AVMT FAIL', '-', '-', 'Recheck', '-', 'OK', '2016-10-26', '', 2, NULL, 0, 1),
(487, 'F0588', 'FA', 'Ikhwan', 'Imam', '2016-10-27', 'WSW41', 'U', '', 'no sound', 'Pattern crack', 'Handling FA', '-', 'main trafo', 'RETURN', '2016-10-27', 'Visual check', 2, NULL, 0, 1),
(488, 'F0589', 'FA', 'Ikhwan', 'Imam', '2016-10-27', 'SRT-700', '', 'Digital', 'Power Off', '-', '-', '-', '-', 'RETURN', '2016-10-28', '', 2, NULL, 2, 1),
(489, 'F0590', 'FA', 'Udin', 'Ali', '2016-10-25', 'DBR', '', 'DSP', 'STEP34 ', ' -', ' -', 'Recheck', ' -', 'OK', '2016-11-07', '', 2, NULL, 0, 1),
(490, 'F0591', 'FA', 'Ikhwan', 'Imam', '2016-10-28', 'SRT-700', '', 'Digital', 'Power Off', '-', '-', 'Redownload', '-', 'OK', '2016-10-28', '', 2, NULL, 2, 1),
(491, 'F0592', 'FA', 'Ikhwan', 'Imam', '2016-10-28', 'WSW121', 'G', '', 'AVMT FAIL', 'korosi', 'Material', 'Touch Up', 'PCB timer', 'OK', '2016-10-28', 'saat dihidupkan intermitten', 2, NULL, 0, 1),
(492, 'F0593', 'FA', 'Ikhwan', 'Imam', '2016-10-28', 'YSP-2700', '', 'Digital', 'HDMI NG', 'Part broken', 'Handling FA', '-', 'IC3*, D13*', 'RETURN', '2016-10-28', 'Visual check', 2, NULL, 47, 1),
(493, 'F0594', 'FA', 'Ikhwan', 'Imam', '2016-10-28', 'YSP-2700', '', 'Digital', 'HDMI NG', '-', '-', 'Change', 'IC1^, 4^, 407^, Q1*,2*,3*,4*,5*,6*', 'SCRAP', '2016-11-22', 'no.MDS : 1059399', 2, NULL, 47, 1),
(494, 'F0595', 'FA', 'Ikhwan', 'Imam', '2016-10-28', 'YSP-2700', '', 'Digital', 'device error', '-', '-', 'Recheck', '-', 'OK', '2016-10-31', '', 2, NULL, 47, 1),
(495, 'F0596', 'FA', 'Ikhwan', 'Imam', '2016-10-28', 'YSP-2700', '', 'Digital', 'device error', 'Slanting', 'Proses PCB', '-', 'ST101^', 'RETURN', '2016-10-28', 'Visual check', 2, NULL, 47, 1),
(496, 'F0597', 'FA', 'Ikhwan', 'Imam', '2016-10-28', 'YSP-2700', '', 'Digital', 'mac address', 'Slanting', 'Proses PCB', '-', 'ST101^', 'RETURN', '2016-10-31', 'Visual check', 2, NULL, 47, 1),
(497, 'F0598', 'FA', 'Ikhwan', 'Imam', '2016-10-28', 'YSP-2700', '', 'Beam', 'D4-1 Error', 'Error', 'Material', 'Change', 'IC501^, 503^, 505^', 'OK', '0000-00-00', '', 2, NULL, 49, 1),
(498, 'F0599', 'FA', 'Ikhwan', 'Imam', '2016-10-28', 'WSW121', 'G', '', 'Distorsi', '-', '-', 'Recheck', '-', 'OK', '2016-11-01', '', 2, NULL, 0, 1),
(499, 'F0600', 'FA', 'Rokisul', 'Ali', '2016-10-28', 'YSP-5600', '', 'Display', 'Display off', 'Error', 'Material', 'Change', 'V801^', 'OK', '2016-11-01', 'check teg pada kaki display ok(compare dg unit yang ok)', 2, NULL, 0, 1),
(500, 'F0601', 'FA', 'Rokisul', 'Ali', '2016-10-28', 'YSP-5600', '', 'Button', 'Abnormal function', 'unsolder', 'Proses PCB', ' -', 'R902*', 'RETURN', '2016-10-31', '', 2, NULL, 0, 1),
(501, 'F0602', 'FA', 'Rokisul', 'Ali', '2016-10-28', 'YSP-5600', '', 'Damp', 'Error DSP4', 'Slanting', 'Handling FA', ' -', 'CB301^', 'RETURN', '2016-10-31', '', 2, NULL, 54, 1),
(502, 'F0603', 'FA', 'Ikhwan', 'Imam', '2016-10-31', 'WSW121', 'K', '', 'AVMT FAIL', '-', '-', '-', '-', 'RETURN', '2016-10-31', 'take by Romzy', 2, NULL, 0, 1),
(503, 'F0604', 'FA', 'Yusuf', 'Imam', '2016-10-31', 'SW050', 'J', '', 'Distorsi', 'Error', 'Material', 'Change', 'IC1*,2*, Q18*,19*,15A^,15C^', 'OK', '2016-11-04', 'suara abnormal sound (mbrebet)', 2, NULL, 0, 1),
(504, 'F0605', 'FA', 'Titik', 'Ali', '2016-10-31', 'Silent Piano', '', 'DM', 'STEP15 abn/UFT', '', '', '', '', '', '0000-00-00', '', 2, NULL, 0, 1),
(505, 'F0606', 'FA', 'Didik', 'Ali', '2016-10-31', 'YAS-203', 'L', 'power', 'Power Off', 'Error', 'Electrical', 'Change', 'IC701*,T701^', 'OK', '2016-11-01', '', 2, NULL, 24, 1),
(506, 'F0607', 'FA', 'Didik', 'Ali', '2016-10-31', 'YAS-203', 'L', 'power', 'Power Off', 'Error', 'Electrical', 'Change', 'IC701*,T701^', 'OK', '2016-11-01', '', 2, NULL, 24, 1),
(507, 'F0608', 'FA', 'Didik', 'Ali', '2016-11-01', 'YAS-203', 'L', 'power', 'Power Off', 'Error', 'Electrical', 'Change', 'IC701*,T701^', 'OK', '2016-11-01', '', 2, NULL, 24, 1),
(508, 'F0609', 'FA', 'Eko', 'Ali', '2016-10-31', 'YSP-1600', '', '', 'IR Check NG', 'Error', 'Electrical', 'Change', 'U802^', 'OK', '2016-11-04', '', 2, NULL, 0, 1),
(509, 'F0610', 'FA', 'Eko', 'Ali', '2016-10-31', 'YSP-1600', '', '', 'IR Check NG', 'Error', 'Electrical', 'Change', 'U802^', 'OK', '2016-11-04', '', 2, NULL, 0, 1),
(510, 'F0611', 'FA', 'Eko', 'Ali', '2016-11-01', 'YSP-1600', '', '', 'IR Check NG', 'Error', 'Electrical', 'Change', 'U802^', 'OK', '2016-11-04', '', 2, NULL, 0, 1),
(511, 'F0612', 'FA', 'Anas', 'Imam', '2016-10-31', 'YAS-203', 'U', '', 'BT no connect', 'Open', 'Material', 'Change', 'flexible CB1', 'OK', '2016-11-01', 'coba ganti bluetooth module NG tapi saat ganti flexible bluetooth terbaca', 2, NULL, 0, 1),
(512, 'F0613', 'FA', 'Ikhwan', 'Imam', '2016-11-01', 'YSP-2700', '', 'Beam', 'step 2 NG', 'Error', 'Material', 'Change', 'IC501^, 503^, 505^', 'OK', '0000-00-00', '', 2, NULL, 49, 1),
(513, 'F0614', 'FA', 'Ikhwan', 'Imam', '2016-11-01', 'YSP-2700', '', 'Digital', 'HDMI NG', '-', '-', 'Change', 'IC1^, 4^, 407^, Q1*,2*,3*,4*,5*,6*', 'SCRAP', '2016-11-22', 'no.MDS : 1059399', 2, NULL, 47, 1),
(514, 'F0615', 'FA', 'Ikhwan', 'Imam', '2016-11-01', 'YSP-2700', '', 'Digital', 'DSP no sound', 'Error', 'Material', 'Change', 'IC301^ (windbond)', 'OK', '0000-00-00', 'pengecekan device : ERR DSP FL , tampilan "FL" blinking', 2, NULL, 47, 1),
(515, 'F0616', 'FA', 'Ikhwan', 'Imam', '2016-11-01', 'SRT-700', '', 'Digital', 'DVD no sound', 'Error', 'Material', 'Change', 'IC4^', 'OK', '2016-11-22', '', 2, NULL, 2, 1),
(516, 'F0617', 'FA', 'Anas', 'Imam', '2016-11-02', 'YAS-203', 'L', '', 'absound', '-', '-', 'Redownload', 'PCB digital', 'OK', '2016-11-07', '', 2, NULL, 0, 1),
(517, 'F0618', 'FA', 'Udin', 'Ali', '2016-11-02', 'DBR', '', 'DSP', 'step16APX/29FCT', '', '', '', '', '', '0000-00-00', '', 2, NULL, 0, 1),
(518, 'F0619', 'FA', 'Rokisul', 'Ali', '2016-11-02', 'YSP-5600', '', 'power', 'Power Off', 'Error', 'Material', 'Change', 'L701*', 'OK', '2016-11-07', 'teg 5.6 ok,VCC IC 706^ ok,tetapi act L701 open', 2, NULL, 56, 1),
(519, 'F0620', 'FA', 'Rokisul', 'Ali', '2016-11-04', 'YSP-5600', '', 'Digital', 'DSP2 error', '', '', '', '', '', '0000-00-00', '', 2, NULL, 52, 1),
(520, 'F0621', 'FA', 'Titik', 'Ali', '2016-11-04', 'WSW41', 'U', '', 'Distorsi', '', '', '', '', '', '0000-00-00', '', 2, NULL, 0, 1),
(521, 'F0622', 'FA', 'Vani', 'Ali', '2016-11-04', 'YAS-706', 'U', '', 'NO sound R', ' -', ' -', 'Recheck', ' -', 'OK', '2016-11-10', '', 2, NULL, 0, 1),
(522, 'F0623', 'FA', 'Vani', 'Ali', '2016-11-04', 'YAS-706', 'U', '', 'NO sound R', ' -', ' -', 'Recheck', ' -', 'OK', '2016-11-10', '', 2, NULL, 0, 1),
(523, 'F0624', 'FA', 'Anas', 'Imam', '2016-11-03', 'YAS-203', 'C', '', 'IR Check NG', 'Solder Bridge', 'Proses PCB', '-', 'CB605*', 'RETURN', '2016-11-07', 'cek dengan multimeter ternyata short', 2, NULL, 0, 1),
(524, 'F0625', 'FA', 'Anas', 'Imam', '2016-11-03', 'YAS-203', 'C', '', 'Vibrasi', '-', '-', 'Redownload', 'PCB digital', 'OK', '2016-11-07', '', 2, NULL, 0, 1),
(525, 'F0626', 'FA', 'Ikhwan', 'Imam', '2016-11-03', 'WSW121', 'A', '', 'Connect No Sound', 'Open', 'Material', 'Change', 'T301^', 'OK', '2016-11-07', 'indikator LED nyala hijau (AVNERA connect) tapi RY302 tidak bekerja', 2, NULL, 0, 1),
(526, 'F0627', 'FA', 'Ikhwan', 'Imam', '2016-11-03', 'WSW121', '', 'DAC', 'Connect No Sound', 'floating', 'Proses PCB', '-', 'IC901^ #13,14', 'RETURN', '2016-11-07', 'pin #14 lurus dengan jalur signal', 2, NULL, 0, 1),
(527, 'F0628', 'FA', 'Sinyo', 'Imam', '2016-11-04', 'GA15II', 'J', '', 'Distorsi', 'bocor', 'Material', 'Change', 'D10', 'OK', '2016-11-08', 'teg, -15vdc ngedrop', 2, NULL, 0, 1),
(528, 'F0629', 'FA', 'Sinyo', 'Imam', '2016-11-04', 'GA15II', 'J', '', 'clean absound', '-', '-', 'Recheck', '-', 'OK', '2016-11-08', '', 2, NULL, 0, 1),
(529, 'F0630', 'FA', 'Anas', 'Imam', '2016-11-07', 'YRS-2500', '', 'Damp', 'Woofer No Sound', 'unsolder', 'P0727', 'Resolder', 'IC202^', 'OK', '2016-11-07', 'cek schematic jalur woofer R, ternyata IC202^ #38 unsolder', 2, NULL, 0, 1),
(530, 'F0631', 'FA', 'Titik', 'Ali', '2016-11-07', 'Silent Piano', '', 'DM', 'step2/cut off', 'unsolder', 'Proses PCB', 'Resolder', 'R307*', 'OK', '2016-11-08', '', 2, NULL, 0, 1),
(531, 'F0632', 'FA', 'Titik', 'Ali', '2016-11-07', 'Silent Piano', '', 'UH', 'step25', ' -', ' -', 'Recheck', ' -', 'OK', '2016-11-08', '', 2, NULL, 0, 1),
(532, 'F0633', 'FA', 'Titik', 'Ali', '2016-11-07', 'Silent Piano', '', 'UH', 'step25', ' -', ' -', 'Recheck', ' -', 'OK', '2016-11-09', '', 2, NULL, 0, 1),
(533, 'F0634', 'FA', 'Titik', 'Ali', '2016-11-07', 'Silent Piano', '', 'MA', 'step9/no sound', ' -', ' -', 'Recheck', ' -', 'OK', '2016-11-09', '', 2, NULL, 0, 1),
(534, 'F0635', 'FA', 'Titik', 'Ali', '2016-11-07', 'Silent Piano', '', 'MA', 'step39', ' -', ' -', 'Recheck', ' -', 'OK', '2016-11-09', '', 2, NULL, 0, 1),
(535, 'F0636', 'FA', 'Titik', 'Ali', '2016-11-07', 'Silent Piano', '', 'UH', 'step9/no sound', 'Solder Bridge', 'Proses PCB', ' -', 'CN2^', 'RETURN', '2016-11-10', '', 2, NULL, 0, 1),
(536, 'F0637', 'FA', 'Anas', 'Imam', '2016-11-07', 'YAS-203', 'U', '', 'HIPOT FAIL', 'Part broken', 'Handling FA', '-', 'C703^', 'RETURN', '2016-11-10', 'Visual check', 2, NULL, 0, 1),
(537, 'F0638', 'FA', 'Yusuf', 'Imam', '2016-11-08', 'GA15II', '', '', 'Distorsi', 'bocor', 'Material', 'Change', 'Q3', 'OK', '2016-11-09', 'speaker langsung berdengung saat dihidupkan tanpa input audio', 2, NULL, 0, 1),
(538, 'F0639', 'FA', 'Yusuf', 'Imam', '2016-11-08', 'GA15II', '', '', 'Fuse Burn', 'bocor', 'Material', 'Change', 'Q6', 'OK', '2016-11-09', 'jika diberi input lewat AUX IN, OK, tapi lewat INPUT (mic jack), fuse langsung terbakar', 2, NULL, 0, 1),
(539, 'F0640', 'FA', 'Titik', 'Ali', '2016-11-07', 'Silent Piano', '', 'MA', 'step3', 'floating', 'Proses PCB', 'Resolder', 'IC1^', 'OK', '2016-11-08', 'TST tidak muncul', 2, NULL, 0, 1),
(540, 'F0641', 'FA', 'Titik', 'Ali', '2016-11-08', 'YAS-203', 'U', 'Digital', 'Power Off', ' -', ' -', 'Redownload', '  -', 'OK', '2016-11-10', '', 2, NULL, 23, 1),
(541, 'F0642', 'FA', 'Vani', 'Ali', '2016-11-08', 'YAS-706', 'U', 'Digital', 'no sound tw table position', 'Slanting', 'Handling FA', 'Reinsert', 'FFC to CB304*', 'OK', '2016-11-10', '', 2, NULL, 29, 1),
(542, 'F0643', 'FA', 'Titik', 'Ali', '2016-11-09', 'Silent Piano', '', 'MA', 'step3', 'Open', 'Material', 'Change', 'R12*', 'OK', '2016-11-09', '', 2, NULL, 0, 1),
(543, 'F0644', 'FA', 'Titik', 'Ali', '2016-11-09', 'Silent Piano', '', 'DM', 'step39', 'unsolder', 'Proses PCB', 'Resolder', 'RA307*', 'OK', '2016-11-09', '', 2, NULL, 0, 1),
(544, 'F0645', 'FA', 'Ikhwan', 'Imam', '2016-11-08', 'WSW121', 'L', '', 'AVMT FAIL', '-', '-', 'Recheck', '-', 'OK', '2016-11-10', '', 2, NULL, 0, 1),
(545, 'F0646', 'FA', 'Ikhwan', 'Imam', '2016-11-08', 'WSW121', 'L', '', 'Distorsi', '-', '-', 'Recheck', '-', 'OK', '2016-11-10', '', 2, NULL, 0, 1),
(546, 'F0647', 'FA', 'Ikhwan', 'Imam', '2016-11-08', 'WSW121', 'L', '', 'Distorsi', '-', '-', 'Recheck', '-', 'OK', '2016-11-10', '', 2, NULL, 0, 1),
(547, 'F0648', 'FA', 'Gley', 'Imam', '2016-11-09', 'DSR215', 'B', 'Input', 'noise', 'Error', 'Material', 'Change', 'VR801^', 'OK', '2016-11-15', 'noise saat VR diputar / adjust (kemresek)', 2, NULL, 0, 1),
(548, 'F0649', 'FA', 'Gley', 'Imam', '2016-11-09', 'DSR215', 'U', 'Input', 'noise', 'Error', 'Material', 'Change', 'VR801^', 'OK', '2016-11-15', 'noise saat VR diputar / adjust (kemresek)', 2, NULL, 0, 1),
(549, 'F0650', 'FA', 'Gley', 'Imam', '2016-11-09', 'DSR215', 'E', 'Input', 'noise', 'Error', 'Material', 'Change', 'VR801^', 'OK', '2016-11-15', 'noise saat VR diputar / adjust (kemresek)', 2, NULL, 0, 1),
(550, 'F0651', 'FA', 'Yusuf', 'Imam', '2016-11-09', 'FSW100', 'G', 'Front Panel', 'no sound', 'Open', 'Material', 'Change', 'IC5', 'OK', '2016-11-10', 'CB3 #1(main) terukur teg. -14vdc, ternyata IC5 #1 dan #8 diukur open, harusnya keluar 0,7 pada mode diode', 2, NULL, 0, 1),
(551, 'F0652', 'FA', 'Eko', 'Ali', '2016-11-07', 'YSP-1600', 'L', 'Input', 'nosound WF R/L', 'Open', 'Material', 'Change', 'R612*', 'OK', '2016-11-10', 'speaker array ok', 2, NULL, 38, 1),
(552, 'F0653', 'FA', 'Anas', 'Imam', '2016-11-10', 'YAS-203', 'U', '', 'IR Check NG', 'Part broken', 'Handling FA', '-', 'W801^', 'RETURN', '2016-11-11', 'Visual check', 2, NULL, 0, 1),
(553, 'F0654', 'FA', 'Yusuf', 'Imam', '2016-11-11', 'SW200', 'G', '', 'LED off', 'Open', 'Material', 'Change', 'T1^', 'OK', '2016-11-14', 'LED off, RY2 tidak bekerja, tidak ada output teg. di kaki sekunder sub.trafo ,ternyata kaki primer putus', 2, NULL, 0, 1),
(554, 'F0655', 'FA', 'Saiful', 'Imam', '2016-11-11', 'GA15II', 'U', '', 'clean absound', 'Part broken', 'Proses PCB', '-', 'R8', 'RETURN', '2016-11-14', 'Visual check', 2, NULL, 0, 1),
(555, 'F0656', 'FA', 'Ikhwan', 'Imam', '2016-11-11', 'WSW121', 'V', 'Input', 'Connect No Sound', 'Open', 'Material', 'Change', 'W201^', 'OK', '2016-11-15', 'lokasi CB903 (pcb DAC) teg. P.con normal 3.3vdc tapi di W201^(pcb input) teg. P.con ngedrop, ternyata W201^#2 putus', 2, NULL, 0, 1),
(556, 'F0657', 'FA', 'Anas', 'Imam', '2016-11-11', 'YRS-2500', '', 'power', 'Panel key abnormal', 'dirty flux', 'Proses PCB', 'Change', 'SW901^, 902^, 903^, 904^', 'OK', '2016-11-14', 'Multimeter check kondisi switch open semua saat ditekan', 2, NULL, 0, 1),
(557, 'F0658', 'FA', 'Titik', 'Ali', '2016-11-09', 'DKV', '', 'CC', 'STEP3/UFT', 'floating', 'Proses PCB', ' -', 'CN27^', 'RETURN', '2016-11-15', '', 2, NULL, 0, 1),
(558, 'F0659', 'FA', 'Sakban', 'Ali', '2016-11-11', 'YAS-306', 'G', '', 'Power Off', ' -', ' -', 'Recheck', ' -', 'OK', '2016-11-14', '', 2, NULL, 0, 1);
INSERT INTO `data_repair` (`id`, `no`, `section`, `pic_prod`, `pic_pe`, `in_date`, `model`, `dest`, `pcb`, `defect`, `detail`, `cause`, `action`, `location`, `status`, `out_date`, `remark`, `priority`, `est_finish_date`, `repair_time_id`, `flag`) VALUES
(559, 'F0660', 'FA', 'Sakban', 'Ali', '2016-11-11', 'YAS-306', 'G', 'Digital', 'diag mode NG', 'Broken', 'Handling FA', 'Change', 'R225^', 'OK', '2016-11-14', 'di check dg tera term menunjukkan DAC read data error,check schematic blok DAC', 2, NULL, 26, 1),
(560, 'F0661', 'FA', 'Didik', 'Ali', '2016-11-11', 'YAS-203', 'U', '', 'Power Off', ' -', ' -', 'Recheck', ' -', 'OK', '2016-11-14', '', 2, NULL, 0, 1),
(561, 'F0662', 'FA', 'Vani', 'Ali', '2016-11-10', 'YAS-306', 'G', 'Digital', 'Abnnormal led stnby', 'Error', 'Electrical', 'Change', 'IC403^', 'OK', '2016-11-14', 'LED merah tidak menyala ketika posisi standby', 2, NULL, 26, 1),
(562, 'F0663', 'FA', 'Vani', 'Ali', '2016-11-14', 'YAS-306', 'G', '', 'Abnormal LED', ' -', ' -', 'Recheck', ' -', 'OK', '2016-11-15', '', 2, NULL, 0, 1),
(563, 'F0664', 'FA', 'Ikhwan', 'Imam', '2016-11-14', 'YSP-2700', '', 'Digital', 'step 2 NG', '-', '-', 'Recheck', '-', 'OK', '0000-00-00', '', 2, NULL, 47, 1),
(564, 'F0665', 'FA', 'Yusuf', 'Imam', '2016-11-14', 'SW216', 'U', '', 'LED off', 'dirty flux', 'Proses PCB', 'Reinsert', 'screw grounding radiator', 'OK', '2016-11-15', 'LED mati tetapi teg. -V normal -25vdc', 2, NULL, 0, 1),
(565, 'F0666', 'FA', 'Gley', 'Imam', '2016-11-14', 'SW700', 'J', '', 'F = 0', 'short', 'Material', 'Change', 'Q11', 'OK', '2016-11-15', 'ketika Q4 di.cek seperti bocor tapi sebenarnya tidak, karena efek dari Q11 yang short', 2, NULL, 0, 1),
(566, 'F0667', 'FA', 'Yusuf', 'Imam', '2016-11-14', 'SW210', 'G', '', 'F = 0', 'Pattern crack', 'Handling FA', '-', 'IC3', 'RETURN', '2016-11-15', 'Visual check', 2, NULL, 0, 1),
(567, 'F0668', 'FA', 'Yusuf', 'Imam', '2016-11-14', 'SW210', 'G', '', 'no sound', 'Open', 'Material', 'Change', 'Q2', 'OK', '2016-11-15', 'gejala teg basis Q20 terukur +0.7vdc , harusnya -5 ~ -7 vdc', 2, NULL, 0, 1),
(568, 'F0669', 'FA', 'Ikhwan', 'Imam', '2016-11-14', 'SRT-1500', 'G', 'power', 'Download Error', '-', '-', 'Recheck', '-', 'OK', '2016-11-21', 'tegangan +19 normal', 2, NULL, 13, 1),
(569, 'F0670', 'FA', 'Ikhwan', 'Imam', '2016-11-14', 'SRT-1500', 'G', 'power', 'Download Error', '-', '-', 'Recheck', '-', 'OK', '0000-00-00', 'tegangan +19 normal', 2, NULL, 13, 1),
(570, 'F0671', 'FA', 'Ikhwan', 'Imam', '2016-11-14', 'SRT-1500', 'G', 'power', 'Download Error', '-', '-', 'Recheck', '-', 'OK', '0000-00-00', 'tegangan +19 normal', 2, NULL, 13, 1),
(571, 'F0672', 'FA', 'Didik', 'Ali', '2016-11-15', 'YAS-203', 'U', '', 'Power Off', 'No download', 'Proses PCB', 'Redownload', ' -', 'OK', '2016-11-21', '', 2, NULL, 0, 1),
(572, 'F0673', 'FA', 'Vani', 'Ali', '2016-11-15', 'YAS-306', 'G', '', 'Abnormal LED', ' -', ' -', 'Recheck', ' -', 'OK', '0000-00-00', '', 2, NULL, 0, 1),
(573, 'F0674', 'FA', 'Vani', 'Ali', '2016-11-15', 'YAS-306', 'G', '', 'Abnormal LED', 'Error', 'Material', 'Change', 'ic403^(digital)', 'OK', '0000-00-00', '', 2, NULL, 0, 1),
(574, 'F0675', 'FA', 'Ikhwan', 'Imam', '2016-11-15', 'WSW120', 'J', '', 'Distorsi', 'short', 'Material', 'Change', 'Q18A^, Q18C^', 'OK', '0000-00-00', 'jalur teg.+B dan teg.-B jika diukur short', 2, NULL, 0, 1),
(575, 'F0676', 'FA', 'Ikhwan', 'Imam', '2016-11-15', 'WSW120', 'J', '', 'Distorsi', '-', '-', 'Recheck', '-', 'OK', '0000-00-00', '', 2, NULL, 0, 1),
(576, 'F0677', 'FA', 'Ikhwan', 'Imam', '2016-11-15', 'WSW120', 'J', '', 'AVMT FAIL', 'Pattern crack', 'Handling FA', '-', 'Q1^, Q2^', 'RETURN', '0000-00-00', 'Visual check', 2, NULL, 0, 1),
(577, 'F0678', 'FA', 'Ikhwan', 'Imam', '2016-11-15', 'WSW120', 'J', '', 'SWA SET NG', '-', '-', 'Recheck', '-', 'OK', '0000-00-00', '', 2, NULL, 0, 1),
(578, 'F0679', 'FA', 'Ikhwan', 'Imam', '2016-11-15', 'WSW120', 'J', '', 'Connect No Sound', 'unsolder', 'Proses PCB', '-', 'IC205*', 'RETURN', '0000-00-00', 'nilai teg.P-con dari AVNERA ke W201^ normal 3.3vdc tapi di W204^ ngedrop, ternyata tidak ada output dari IC205* karena pin 4 unsolder', 2, NULL, 0, 1),
(579, 'F0680', 'FA', 'Ikhwan', 'Imam', '2016-11-15', 'WSW120', 'G', '', 'Reset LED abnormal', 'unsolder', 'Proses PCB', '-', 'IC207*', 'RETURN', '2016-11-22', 'LED tidak blinking setelah proses reset di FA', 2, NULL, 0, 1),
(580, 'F0681', 'FA', 'Ikhwan', 'Imam', '2016-11-16', 'YSP-2500', 'G', 'headphone', 'HP ON terus', 'Open', 'Material', 'Change', 'JK901^', 'OK', '0000-00-00', 'AVOmeter check', 2, NULL, 0, 1),
(581, 'F0682', 'FA', 'Didik', 'Ali', '2016-11-16', 'YAS-203', 'U', '', 'TV,DVD no sound', '', '', '', '', '', '0000-00-00', '', 2, NULL, 0, 1),
(582, 'F0683', 'FA', 'Vani', 'Ali', '2016-11-16', 'YAS-306', 'U', '', 'no sound R analog', 'Solder Bridge', 'Proses PCB', ' -', 'PJ102^', 'RETURN', '2016-11-17', '', 2, NULL, 0, 1),
(583, 'F0684', 'FA', 'Vani', 'Ali', '2016-11-16', 'YAS-306', 'U', '', 'no sound R analog', 'Solder Bridge', 'Proses PCB', ' -', 'PJ102^', 'RETURN', '2016-11-17', '', 2, NULL, 0, 1),
(584, 'F0685', 'FA', 'Vani', 'Ali', '2016-11-16', 'YAS-706', 'L', '', 'Abnormal function', 'Slanting', 'Handling FA', 'Reinsert', 'FFC to CB304*', 'OK', '2016-11-17', '', 2, NULL, 0, 1),
(585, 'F0686', 'FA', 'Gley', 'Imam', '2016-11-16', 'DSR115', '', '', 'no sound', '-', '-', 'Recheck', '-', 'OK', '0000-00-00', '', 2, NULL, 0, 1),
(586, 'F0687', 'FA', 'Gley', 'Imam', '2016-11-16', 'DSR115', '', '', 'D-count abnormal', 'out spec', 'Material', '-', 'spacer PCB IN', 'RETURN', '0000-00-00', 'tombol D-contour abnormal', 2, NULL, 0, 1),
(587, 'F0688', 'FA', 'Yusuf', 'Imam', '2016-11-18', 'SW300', 'G', 'Input', 'no sound', 'shifted', 'Handling FA', 'Reset', 'SW2^', 'OK', '0000-00-00', 'Visual check', 2, NULL, 0, 1),
(588, 'F0689', 'FA', 'Titik', 'Ali', '2016-11-16', 'Silent Piano', '', 'DM', 'Step2', '', '', '', '', '', '0000-00-00', '', 2, NULL, 0, 1),
(589, 'F0690', 'FA', 'Vani', 'Ali', '2016-11-18', 'YAS-706', 'U', '', 'WIFI no connect.02.', ' -', ' -', 'Change', 'NW module', 'OK', '2016-11-22', 'suspect operator salah menekan kode remote(78-F1 untuk jig 06,78-F3 untuk jig 08)', 2, NULL, 0, 1),
(590, 'F0691', 'FA', 'Yusuf', 'Imam', '2016-11-18', 'SW300', 'G', '', 'absound', '-', '-', 'Recheck', '-', 'OK', '0000-00-00', '', 2, NULL, 0, 1),
(591, 'F0692', 'FA', 'Yusuf', 'Imam', '2016-11-18', 'SW300', 'G', '', 'absound', '-', '-', 'Recheck', '-', 'OK', '0000-00-00', '', 2, NULL, 0, 1),
(592, 'F0693', 'FA', 'Ikhwan', 'Imam', '2016-11-18', 'WSW120', 'B', '', 'Cut Off', 'Open', 'Material', 'Change', 'R56^', 'OK', '0000-00-00', 'tegangan RY1 drop jadi 2.3vdc, teg. Di belakang R56 +38vdc tp di depannya hanya 2.3vdc', 2, NULL, 0, 1),
(593, 'F0694', 'FA', 'Yusuf', 'Imam', '2016-11-18', 'SW40', 'G', '', 'F = 0', 'Error', 'Material', 'Change', 'IC1 (STK)', 'OK', '2016-11-22', 'tegangan basis Q20 sekitar -7vdc, RY1 tidak bekerja karena tegangan over (+31vdc), saat IC1 dilepas, RY1 langsung bekerja normal', 2, NULL, 0, 1),
(594, 'F0695', 'FA', 'Gley', 'Imam', '2016-11-18', 'DSR118', 'U', 'AMPS', 'suara kecil', 'Part broken', 'Handling FA', '-', 'C701^', 'RETURN', '2016-11-22', 'Visual check', 2, NULL, 0, 1),
(595, 'F0696', 'FA', 'Rokisul', 'Ali', '2016-11-17', 'YSP-5600', '', 'Digital', 'NO update', ' -', ' -', 'Recheck', ' -', 'OK', '2016-11-21', '', 2, NULL, 52, 1),
(596, 'F0697', 'FA', 'Rokisul', 'Ali', '2016-11-17', 'YSP-5600', '', 'Digital', 'NO update', 'unsolder', 'Proses PCB', 'Touch Up', 'IC1134*', 'OK', '0000-00-00', 'muncul teks FW UPDATE tetapi proses tidak berjalan', 2, NULL, 52, 1),
(597, 'F0698', 'FA', 'Yusuf', 'Imam', '2016-11-21', 'SW300', 'G', '', 'F = 0', 'Open', 'Material', 'Change', 'W3^', 'OK', '2016-11-25', 'RY1^ bekerja tapi no sound, ternyata W3 #8 (SIG1) open', 2, NULL, 0, 1),
(598, 'F0699', 'FA', 'Rokisul', 'Ali', '2016-11-21', 'YSP-5600', '', 'Digital', 'no sound/err dsp1,2,3', '', '', '', '', '', '0000-00-00', '', 2, NULL, 52, 1),
(599, 'F0700', 'FA', 'Rokisul', 'Ali', '2016-11-21', 'YSP-5600', '', 'Damp', 'error SWA,DSP', '', '', '', '', '', '0000-00-00', '', 2, NULL, 54, 1),
(600, 'F0701', 'FA', 'Udin', 'Ali', '2016-11-22', 'DBR', '', 'DSP', 'step16', '', '', '', '', '', '0000-00-00', '', 2, NULL, 0, 1),
(601, 'F0702', 'FA', 'Udin', 'Ali', '2016-11-22', 'DBR', '', 'DSP', 'step16', '', '', '', '', '', '0000-00-00', '', 2, NULL, 0, 1),
(602, 'F0703', 'FA', 'Didik', 'Ali', '2016-11-22', 'YAS-203', 'U', '', 'Power Off', ' -', ' -', 'Redownload', '', 'OK', '2016-11-24', 'teg semua normal,tetapi ketika di check dengan teraterm seperti blank', 2, NULL, 0, 1),
(603, 'F0704', 'FA', 'Ikhwan', 'Imam', '2016-11-21', 'WSW120', 'J', 'Main', 'Distorsi', 'Open', 'Material', 'Change', 'R58^', 'OK', '2016-11-23', 'nyala LED berubah dari green ke orange dan RY1 klak klik saat diberi input AUX', 2, NULL, 0, 1),
(604, 'F0705', 'FA', 'Yusuf', 'Imam', '2016-11-21', 'SW40', 'G', '', 'F = 0', 'Error', 'Material', 'Change', 'Q5, RY1, W3', 'OK', '2016-11-23', 'nilai resistansi Q5 ada selisih dengan yang OK, teg.-15vdc di pcb main normal tapi di pcb input over smp +7vdc ternyata W3 open', 2, NULL, 0, 1),
(605, 'F0706', 'FA', 'Ikhwan', 'Imam', '2016-11-21', 'YSP-2500', '', 'Display', 'Cut Off', 'Error', 'Material', 'Change', 'V901^', 'OK', '2016-11-23', 'dinyalakan diag mode, langsung cut off dengan teks "FL?????"', 2, NULL, 0, 1),
(606, 'F0707', 'FA', 'Ikhwan', 'Imam', '2016-11-21', 'YSP-2500', '', 'Button', 'not function', 'Open', 'Material', 'Change', 'W861^', 'OK', '2016-11-23', 'semua switch, cek resistansi OK, ternyata W861^#2 (GND) open', 2, NULL, 0, 1),
(607, 'F0708', 'FA', 'Rokisul', 'Ali', '2016-11-24', 'YSP-5600', '', 'Digital', 'NO update', 'unsolder', 'Proses PCB', ' -', 'CB191^', 'RETURN', '2016-11-25', '', 2, NULL, 52, 1),
(608, 'F0709', 'FA', 'Sakban', 'Ali', '2016-11-23', 'YAS-203', 'U', '', 'Power Off', ' -', ' -', 'Redownload', '', 'OK', '2016-11-24', 'teg semua normal,tetapi ketika di check dengan teraterm seperti blank', 2, NULL, 0, 1),
(609, 'F0710', 'FA', 'Sakban', 'Ali', '2016-11-23', 'WSW41', 'U', '', 'Power Off', 'microSolder Bridge', 'Proses PCB', '-', 'IC9*', 'RETURN', '2016-11-24', 'CB25 #4 (G LED ON) tidak ada teg. Karena Q23* tidak bekerja, ternyata Q32* juga tidak bekerja karena tidak mendapat trigger dari IC9* yang pin#1-#2 .nya bridging', 2, NULL, 0, 1),
(610, 'F0711', 'FA', 'Sakban', 'Ali', '2016-11-23', 'WSW41', 'U', '', 'STEP3', '', '', '', '', '', '0000-00-00', '', 2, NULL, 0, 1),
(611, 'F0712', 'FA', 'Udin', 'Ali', '2016-11-23', 'DSR118', 'U', 'AMPS1', 'STEP5', ' -', ' -', ' -', ' -', 'RETURN', '2016-11-25', '', 2, NULL, 0, 1),
(612, 'F0713', 'FA', 'Udin', 'Ali', '2016-11-23', 'DSR118', 'U', 'ASP', 'STEP7/LED abnormal', 'Error', 'Material', 'Change', 'R312*', 'OK', '2016-11-28', 'ketika di check APX step 7 seharusnya yang nyala LED protection tetapi act yang nyala LED limited,check appearance solder kurang sempurna,change part', 2, NULL, 0, 1),
(613, 'F0714', 'FA', 'Yusuf', 'Imam', '2016-11-24', 'GA15II', 'U', '', 'clean absound', '-', '-', 'Reassembling', '-', 'OK', '2016-11-24', '', 2, NULL, 0, 1),
(614, 'F0715', 'FA', 'Yusuf', 'Imam', '2016-11-24', 'SW300', '', 'Front Panel', 'switch NG', 'Part broken', 'Handling FA', 'Change', 'SW6', 'OK', '2016-11-24', '', 2, NULL, 0, 1),
(615, 'F0716', 'FA', 'Ikhwan', 'Imam', '2016-11-25', 'YSP-2500', '', 'Display', 'Power Off', 'Part broken', 'Handling FA', '-', 'C904*', 'RETURN', '2016-11-28', 'Visual check', 2, NULL, 0, 1),
(616, 'F0717', 'FA', 'Syahril', 'Ali', '2016-11-24', 'YAS-152', 'T', '', 'BT no connect', 'Error', 'Electrical', 'Change', 'IC604*,IC603^', 'OK', '2016-11-25', 'BT ID tidak muncul,BT 5v ok,ketika diag mode pengecekan BT (78-F6)LED PL11 ikut blinking seharusnya mati', 2, NULL, 0, 1),
(617, 'F0718', 'FA', 'Vani', 'Ali', '2016-11-25', 'YAS-306', 'G', '', 'Abnormal LED', '', '', '', '', '', '0000-00-00', '', 2, NULL, 0, 1),
(618, 'F0719', 'FA', 'Gley', 'Imam', '2016-11-28', 'SW700', 'G', '', 'Burn', 'short', 'Handling FA', '-', 'Q17A^', 'RETURN', '2016-11-30', 'radiasheet bocor karena dirty gram', 2, NULL, 0, 1),
(619, 'F0720', 'FA', 'Yusuf', 'Imam', '2016-11-28', 'SW40', 'T', '', 'Power Off', 'Pattern crack', 'Handling FA', '-', 'main trafo', 'RETURN', '2016-11-30', 'Visual check', 2, NULL, 0, 1),
(620, 'F0721', 'FA', 'Ikhwan', 'Imam', '2016-11-28', 'WSW121', 'K', '', 'Distorsi', '-', '-', 'Recheck', '-', 'OK', '2016-11-30', '', 2, NULL, 0, 1),
(621, 'F0722', 'FA', 'Ikhwan', 'Imam', '2016-11-28', 'WSW121', 'K', '', 'Distorsi', '-', '-', 'Recheck', '-', 'OK', '2016-11-30', '', 2, NULL, 0, 1),
(622, 'F0723', 'FA', 'Udin', 'Ali', '2016-11-29', 'DSR215', '', 'PCB IN1', 'STEP9 ', '', '', '', '', '', '0000-00-00', '', 2, NULL, 0, 1),
(623, 'F0724', 'FA', 'Ikhwan', 'Imam', '2016-11-29', 'YSP-2500', 'G', 'Display', 'Power Off', 'Error', 'Material', 'Change', 'V901^', 'OK', '2016-11-30', 'Visual check', 2, NULL, 0, 1),
(624, 'F0725', 'FA', 'Ikhwan', 'Imam', '2016-11-29', 'YSP-2700', 'A', 'Beam', 'no sound array', 'Error', 'Material', 'Change', 'IC505^', 'OK', '2016-11-30', 'kondisi diag mode, pengecekan speaker, array 1-8 no sound', 2, NULL, 49, 1),
(625, 'F0726', 'FA', 'Yusuf', 'Imam', '2016-11-29', 'SW012', 'G', '', 'no sound', 'bocor', 'Material', 'Change', 'Q2', 'OK', '2016-11-30', 'gejala teg basis Q20 terukur +0.7vdc , harusnya -5 ~ -7 vdc', 2, NULL, 0, 1),
(626, 'F0727', 'FA', 'Ikhwan', 'Imam', '2016-12-09', 'HS5', 'J', 'H5', 'sdfsdf', 'sdfsd', 'dfgsdfg', 'sdfgs', 'sdfgs', 'RETURN', '2016-12-12', 'sdfgs', 2, '2016-12-11', NULL, 1),
(627, 'F0728', 'FA', 'Anas', 'Ali', '2016-12-08', 'DSR118W', 'aaaa', 'ASP', 'aaa', 'aaaa', 'aaa', 'aaa', 'aaa', 'OPEN', NULL, 'sdsdfsdf', 2, '1970-01-04', NULL, 0),
(628, 'F0729', 'FA', 'Andik', 'Ali', '2016-12-08', 'DBR15', 'a', 'DSP', 'a', 'a', 'a', 'a', 'a', 'OPEN', NULL, 'a', 2, '2016-12-24', 106, 1),
(629, 'P0001', 'PCB', 'Karno', 'Imam', '2016-12-13', 'DBR10', 'A', 'DSP', '', '', '', '', '', 'OPEN', NULL, '', 1, '2016-12-20', 98, 1),
(630, 'P0002', 'PCB', 'Titik', 'Imam', '2016-12-14', 'SRT-700', 'K', 'Digital', '', '', '', '', '', 'OK', NULL, '', 2, '2016-12-23', 2, 1),
(631, 'F0730', 'FA', 'Bagus', 'Imam', '2017-01-12', 'YSP-2700', 'K', 'Power', '', '', '', '', '', 'OPEN', NULL, '', 2, '2016-12-25', 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `controller` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL DEFAULT 'index',
  `icon` varchar(50) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `controller`, `action`, `icon`, `order`, `parent_id`) VALUES
(1, 'Home', 'site', 'index', 'fa fa-home', 1, NULL),
(2, 'Master', '', 'index', 'fa fa-database', 2, NULL),
(3, 'Menu', 'menu', 'index', 'fa fa-circle-o', 3, 2),
(4, 'Role', 'role', 'index', 'fa fa-circle-o', 4, 2),
(5, 'User', 'user', 'index', 'fa fa-circle-o', 5, 2),
(6, 'Data Repair', 'data-repair', 'index', 'fa fa-database', 5, NULL),
(7, 'Repair Time', 'repair-time', 'index', 'fa fa-tasks', 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `repair_status`
--

CREATE TABLE `repair_status` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `repair_status`
--

INSERT INTO `repair_status` (`id`, `name`) VALUES
(1, 'OPEN'),
(2, 'Return'),
(3, 'Scrap'),
(4, 'OK');

-- --------------------------------------------------------

--
-- Table structure for table `repair_time`
--

CREATE TABLE `repair_time` (
  `id_time` int(11) NOT NULL,
  `model` varchar(200) DEFAULT NULL,
  `pcb` varchar(100) DEFAULT NULL,
  `est_time` varchar(50) DEFAULT NULL,
  `flag` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `repair_time`
--

INSERT INTO `repair_time` (`id_time`, `model`, `pcb`, `est_time`, `flag`) VALUES
(1, 'SRT-700', 'Amp Assy', '3', 1),
(2, 'SRT-700', 'Digital', '3', 1),
(3, 'SRT-700', 'LED', '0.25', 1),
(4, 'SRT-700', 'Power', '1', 1),
(5, 'SRT-1000', 'Amp Assy', '3', 1),
(6, 'SRT-1000', 'Digital', '3', 1),
(7, 'SRT-1000', 'Beam', '1', 1),
(8, 'SRT-1000', 'Power', '1', 1),
(9, 'SRT-1500', 'Amp Assy', '3', 1),
(10, 'SRT-1500', 'Main', '3', 1),
(11, 'SRT-1500', 'Input', '3', 1),
(12, 'SRT-1500', 'Operation', '0.25', 1),
(13, 'SRT-1500', 'Power', '1', 1),
(14, 'YAS-105 /ATS-1050', 'Amp Assy', '3', 1),
(15, 'YAS-105 /ATS-1050', 'Digital', '3', 1),
(16, 'YAS-105 /ATS-1050', 'LED', '0.25', 1),
(17, 'YAS-105 /ATS-1050', 'Power', '1', 1),
(18, 'YAS-152', 'Amp Assy', '3', 1),
(19, 'YAS-152', 'Digital', '3', 1),
(20, 'YAS-152', 'BT Card', '1', 1),
(21, 'YAS-152', 'Power', '1', 1),
(22, 'YAS-203', 'Amp Assy', '3', 1),
(23, 'YAS-203', 'Digital', '3', 1),
(24, 'YAS-203', 'Power', '1', 1),
(25, 'YAS-306', 'Amp Assy', '3', 1),
(26, 'YAS-306', 'Digital', '3', 1),
(27, 'YAS-306', 'Power', '1', 1),
(28, 'YAS-706', 'Amp Assy', '3', 1),
(29, 'YAS-706', 'Digital', '3', 1),
(30, 'YAS-706', 'DAMP', '3', 1),
(31, 'YAS-706', 'Power', '1', 1),
(32, 'YSP-1400', 'Amp Assy', '3', 1),
(33, 'YSP-1400', 'Digital', '3', 1),
(34, 'YSP-1400', 'BT Card', '1', 1),
(35, 'YSP-1400', 'Power', '1', 1),
(36, 'YSP-1600', 'Amp Assy', '3', 1),
(37, 'YSP-1600', 'Main', '3', 1),
(38, 'YSP-1600', 'Input', '3', 1),
(39, 'YSP-1600', 'Operation', '0.25', 1),
(40, 'YSP-1600', 'Power', '1', 1),
(41, 'YSP-2500', 'Amp Assy', '3', 1),
(42, 'YSP-2500', 'Digital', '3', 1),
(43, 'YSP-2500', 'FL', '1', 1),
(44, 'YSP-2500', 'Beam', '1', 1),
(45, 'YSP-2500', 'Power', '1', 1),
(46, 'YSP-2700', 'Amp Assy', '3', 1),
(47, 'YSP-2700', 'Digital', '3', 1),
(48, 'YSP-2700', 'FL', '1', 1),
(49, 'YSP-2700', 'Beam', '1', 1),
(50, 'YSP-2700', 'Power', '1', 1),
(51, 'YSP-5600', 'Amp Assy', '3', 1),
(52, 'YSP-5600', 'Digital', '3', 1),
(53, 'YSP-5600', 'HDMI', '3', 1),
(54, 'YSP-5600', 'DAMP', '3', 1),
(55, 'YSP-5600', 'Input', '3', 1),
(56, 'YSP-5600', 'Power', '3', 1),
(57, 'SWK-16', 'Main', '3', 1),
(58, 'YRS-1500 / YRS-2500', 'Amp Assy', '3', 1),
(59, 'YRS-1500 / YRS-2500', 'Digital', '3', 1),
(60, 'YRS-1500 / YRS-2500', 'DAMP', '3', 1),
(61, 'YRS-1500 / YRS-2500', 'Beam', '1', 1),
(62, 'YRS-1500 / YRS-2500', 'Power', '1', 1),
(63, 'NS-SW040', 'Main', '1', 1),
(64, 'NS-SW050', 'Main', '3', 1),
(65, 'NS-SW100', 'Main', '3', 1),
(66, 'NS-SW200', 'Main', '3', 1),
(67, 'NS-SW210', 'Main', '1', 1),
(68, 'NS-SW300', 'Main', '3', 1),
(69, 'NS-SW500', 'Main', '3', 1),
(70, 'NS-SW901', 'Main', '3', 1),
(71, 'NS-SW1000', 'Amp Assy', '3', 1),
(72, 'NS-SW1000', 'Main', '3', 1),
(73, 'NS-SW1000', 'Digital', '3', 1),
(74, 'NS-WSW120', 'Amp Assy', '3', 1),
(75, 'NS-WSW120', 'Main', '3', 1),
(76, 'NS-WSW120', 'DAC', '1', 1),
(77, 'NS-WSW121', 'Amp Assy', '3', 1),
(78, 'NS-WSW121', 'Main', '3', 1),
(79, 'NS-WSW121', 'DAC', '1', 1),
(80, 'NS-WSW41', 'Amp Assy', '3', 1),
(81, 'NS-WSW41', 'Main', '3', 1),
(82, 'NS-WSW41', 'DAC', '1', 1),
(83, 'NS-WSW160', 'Amp Assy', '3', 1),
(84, 'NS-WSW160', 'Main', '3', 1),
(85, 'NS-WSW160', 'DSP', '1', 1),
(86, 'YST-FSW050', 'Main', '1', 1),
(87, 'YST-FSW100', 'Main', '1', 1),
(88, 'YST-FSW150', 'Main', '1', 1),
(89, 'YST-SW012', 'Main', '1', 1),
(90, 'YST-SW015', 'Main', '1', 1),
(91, 'YST-SW215', 'Main', '1', 1),
(92, 'YST-SW216', 'Main', '1', 1),
(93, 'YST-SW315', 'Main', '3', 1),
(94, 'YST-SW515', 'Main', '3', 1),
(95, 'YST-RSW300', 'Main', '3', 1),
(96, 'DBR10', 'Amp Assy', '3', 1),
(97, 'DBR10', 'AMPS', '3', 1),
(98, 'DBR10', 'DSP', '3', 1),
(99, 'DBR10', 'SUBL', '0.25', 1),
(100, 'DBR12', 'Amp Assy', '3', 1),
(101, 'DBR12', 'AMPS', '3', 1),
(102, 'DBR12', 'DSP', '3', 1),
(103, 'DBR12', 'SUBL', '0.25', 1),
(104, 'DBR15', 'Amp Assy', '3', 1),
(105, 'DBR15', 'AMPS', '3', 1),
(106, 'DBR15', 'DSP', '3', 1),
(107, 'DBR15', 'SUBL', '0.25', 1),
(108, 'DXS18', 'Amp Assy', '3', 1),
(109, 'DXS18', 'AMPS2', '3', 1),
(110, 'DXS18', 'DSP', '3', 1),
(111, 'DXS18', 'ACIN', '0.25', 1),
(112, 'DXS18', 'IN', '3', 1),
(113, 'DXS18', 'LED', '0.25', 1),
(114, 'DSR112', 'Amp Assy', '3', 1),
(115, 'DSR112', 'ACIN', '0.25', 1),
(116, 'DSR112', 'AMPS1', '3', 1),
(117, 'DSR112', 'DSP', '3', 1),
(118, 'DSR112', 'LED', '0.25', 1),
(119, 'DSR112', 'IN3', '3', 1),
(120, 'DSR115', 'Amp Assy', '3', 1),
(121, 'DSR115', 'ACIN', '0.25', 1),
(122, 'DSR115', 'AMPS1', '3', 1),
(123, 'DSR115', 'DSP', '3', 1),
(124, 'DSR115', 'LED', '0.25', 1),
(125, 'DSR115', 'IN2', '3', 1),
(126, 'DSR118W', 'Amp Assy', '3', 1),
(127, 'DSR118W', 'AMPS2', '3', 1),
(128, 'DSR118W', 'ASP', '3', 1),
(129, 'DSR118W', 'LED', '0.25', 1),
(130, 'DSR118W', 'IN4', '3', 1),
(131, 'DSR215', 'Amp Assy', '3', 1),
(132, 'DSR215', 'ACIN', '0.25', 1),
(133, 'DSR215', 'AMPS1', '3', 1),
(134, 'DSR215', 'DSP', '3', 1),
(135, 'DSR215', 'LED', '0.25', 1),
(136, 'DSR215', 'IN1', '3', 1),
(137, 'HS5', 'H5', '3', 1),
(138, 'HS7', 'H7', '3', 1),
(139, 'HS8', 'H8', '3', 1),
(140, 'HS8S', 'Main', '3', 1),
(141, 'NX-N500', 'Amp Assy', '3', 1),
(142, 'NX-N500', 'Main', '3', 1),
(143, 'NX-N500', 'Power', '1', 1),
(144, 'DKV & CC 2016', 'CC', '3', 1),
(145, 'DKV & CC 2016', 'CCJK', '3', 1),
(146, 'DKV & CC 2016', 'DM', '3', 1),
(147, 'DKV & CC 2016', 'SBC', '3', 1),
(148, 'DKV & CC 2016', 'HP', '3', 1),
(149, 'SW BOX', 'Digital AM', '3', 1),
(150, 'SW BOX', 'Digital UH', '3', 1),
(151, 'SW BOX', 'Digital MA', '3', 1),
(152, 'SW BOX', 'Digital DM', '3', 1),
(153, 'SW BOX', 'Digital PN', '3', 1),
(154, 'GA15II', 'Main', '1', 1),
(155, 'TRBX-300', 'Main', '3', 1),
(156, 'TRBX-500', 'Main', '3', 1),
(157, 'BB-700', 'Main', '3', 1),
(158, 'AMP-AH', 'Main', '3', 1),
(159, 'Model C', 'Amp Assy', '3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Super Administrator'),
(2, 'Administrator'),
(3, 'Guest'),
(4, 'Admin FA'),
(5, 'Admin PCB');

-- --------------------------------------------------------

--
-- Table structure for table `role_action`
--

CREATE TABLE `role_action` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_action`
--

INSERT INTO `role_action` (`id`, `role_id`, `action_id`) VALUES
(241, 4, 12),
(242, 4, 13),
(243, 4, 34),
(244, 4, 14),
(245, 4, 15),
(246, 4, 16),
(247, 4, 17),
(248, 4, 35),
(249, 4, 41),
(250, 4, 36),
(251, 4, 37),
(252, 4, 38),
(253, 4, 39),
(254, 4, 42),
(255, 4, 43),
(256, 5, 12),
(257, 5, 13),
(258, 5, 34),
(259, 5, 14),
(260, 5, 15),
(261, 5, 16),
(262, 5, 17),
(263, 5, 35),
(264, 5, 41),
(265, 5, 36),
(266, 5, 37),
(267, 5, 38),
(268, 5, 39),
(269, 5, 42),
(270, 5, 43),
(289, 1, 12),
(290, 1, 13),
(291, 1, 14),
(292, 1, 15),
(293, 1, 17),
(294, 1, 18),
(295, 1, 19),
(296, 1, 20),
(297, 1, 21),
(298, 1, 22),
(299, 1, 23),
(300, 1, 24),
(301, 1, 25),
(302, 1, 26),
(303, 1, 27),
(304, 1, 28),
(305, 1, 29),
(306, 1, 30),
(307, 1, 31),
(308, 1, 32),
(309, 1, 33),
(310, 1, 35),
(311, 1, 41),
(312, 1, 36),
(313, 1, 37),
(314, 1, 38),
(315, 1, 39),
(316, 1, 40),
(317, 1, 42),
(318, 1, 43),
(319, 1, 44),
(320, 1, 45),
(321, 1, 46),
(340, 3, 12),
(341, 3, 13),
(342, 3, 14),
(343, 3, 15),
(344, 3, 16),
(345, 3, 17),
(346, 3, 35),
(347, 3, 36),
(348, 3, 42),
(349, 3, 43),
(350, 2, 12),
(351, 2, 13),
(352, 2, 14),
(353, 2, 15),
(354, 2, 16),
(355, 2, 17),
(356, 2, 35),
(357, 2, 41),
(358, 2, 36),
(359, 2, 37),
(360, 2, 39),
(361, 2, 40),
(362, 2, 42),
(363, 2, 43),
(364, 2, 44),
(365, 2, 45),
(366, 2, 46);

-- --------------------------------------------------------

--
-- Table structure for table `role_menu`
--

CREATE TABLE `role_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_menu`
--

INSERT INTO `role_menu` (`id`, `role_id`, `menu_id`) VALUES
(100, 4, 1),
(101, 4, 6),
(102, 4, 7),
(103, 5, 1),
(104, 5, 6),
(105, 5, 7),
(109, 1, 1),
(110, 1, 2),
(111, 1, 3),
(112, 1, 4),
(113, 1, 5),
(114, 1, 6),
(115, 1, 7),
(119, 3, 1),
(120, 3, 6),
(121, 3, 7),
(122, 2, 1),
(123, 2, 6),
(124, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `section_count`
--

CREATE TABLE `section_count` (
  `count_id` int(11) NOT NULL,
  `section` varchar(10) NOT NULL,
  `total_count` int(11) DEFAULT '0',
  `flag` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section_count`
--

INSERT INTO `section_count` (`count_id`, `section`, `total_count`, `flag`) VALUES
(1, 'PCB', 2, 1),
(2, 'FA', 730, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `role_id` int(11) NOT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `role_id`, `photo_url`, `last_login`, `last_logout`) VALUES
(1, 'superadmin', 'a29664ed0b85415f256bfc26ec82abae', 'Superadmin', 1, 'ID6jM8Az7Yh_R6LR44Ezh02VECKTQ_Ya.png', '2016-12-15 14:41:04', '2016-12-15 14:41:29'),
(2, 'guest', '084e0343a0486ff05530df6c705c8bb4', 'Guest', 3, 'default.png', '2016-12-15 14:44:58', '2016-12-15 14:45:42'),
(3, 'adminfa', '2ff95f952f6c589296399246c47280df', 'Admin FA', 4, 'default.png', '2017-01-12 13:59:36', '2017-01-12 10:57:07'),
(4, 'adminpcb', '0c300376afebeeb57d7291d64e92b088', 'Admin PCB', 5, 'default.png', '2016-12-14 09:16:54', '2016-12-14 09:52:58'),
(5, 'admin', '0192023a7bbd73250516f069df18b500', 'Administrator', 2, 'default.png', '2017-01-12 10:57:12', '2017-01-12 10:15:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action`
--
ALTER TABLE `action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_repair`
--
ALTER TABLE `data_repair`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `repair_time_id` (`repair_time_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `repair_status`
--
ALTER TABLE `repair_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repair_time`
--
ALTER TABLE `repair_time`
  ADD PRIMARY KEY (`id_time`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_action`
--
ALTER TABLE `role_action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `action_id` (`action_id`);

--
-- Indexes for table `role_menu`
--
ALTER TABLE `role_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `section_count`
--
ALTER TABLE `section_count`
  ADD PRIMARY KEY (`count_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action`
--
ALTER TABLE `action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `data_repair`
--
ALTER TABLE `data_repair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=632;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `repair_status`
--
ALTER TABLE `repair_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `repair_time`
--
ALTER TABLE `repair_time`
  MODIFY `id_time` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `role_action`
--
ALTER TABLE `role_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;
--
-- AUTO_INCREMENT for table `role_menu`
--
ALTER TABLE `role_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `section_count`
--
ALTER TABLE `section_count`
  MODIFY `count_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `menu` (`id`);

--
-- Constraints for table `role_action`
--
ALTER TABLE `role_action`
  ADD CONSTRAINT `role_action_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `role_action_ibfk_2` FOREIGN KEY (`action_id`) REFERENCES `action` (`id`);

--
-- Constraints for table `role_menu`
--
ALTER TABLE `role_menu`
  ADD CONSTRAINT `role_menu_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `role_menu_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
