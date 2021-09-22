

 

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Name`, `Email`, `Password`, `Created_at`) VALUES
('Dukul Howlader', 'dukul@gmail.com', 'ASDasd12', '2021-01-13 08:04:08'),
('Abdullah Riyad', 'riyad@gmail.com', 'ASDasd12', '2021-01-13 08:04:08'),
('Shaifur Rahman Shawon', 'shawon@gmail.com', 'ASDasd12', '2021-01-13 08:04:08'),
('Sakib Shahariar', 'sakib@gmail.com', 'ASDasd12', '2021-01-13 08:04:08');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `Name` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Contact` bigint(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `About` varchar(1000) NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`Name`, `Type`, `Contact`, `Email`, `Password`, `About`, `Created_at`) VALUES
('Anas Sarder', 'Client', 1986812256, 'anassarder@gmail.com', 'AnasSarder08', '', '2021-01-05 19:58:48'),
('Mohammad Shafiqul Islam', 'Client', 0, 'mdshafiqul.islam@northsouth.edu', 'Shuvo1234', '', '2021-01-06 09:12:30'),
('Dukul Howlader Mohin', 'Client', 0, 'dukul.howlader300@gmail.com', 'ASDasd12', '', '2021-01-06 09:35:09'),
('Zayan Howlader', 'Client', 0, 'zayanh@gmail.com', 'ASDasd12', '', '2021-01-13 07:34:33'),
('Dukul Howlader Mohin', 'Client', 1986812256, 'dukul.howlader@northsouth.edu', 'ASDasd12', 'Hello friends', '2021-01-13 09:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Subject` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Query` varchar(1000) NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Photographer_Name` varchar(100) NOT NULL,
  `Registered_Email` varchar(100) NOT NULL,
  `Feedback` varchar(1000) NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Rating` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Photographer_Name`, `Registered_Email`, `Feedback`, `Created_at`, `Rating`) VALUES
('Nahiyan Saiyara Tahira', 'anassarder@gmail.com', 'She is a nice photographer', '2021-01-05 20:22:39', 4);

-- --------------------------------------------------------

--
-- Table structure for table `newsteller`
--

CREATE TABLE `newsteller` (
  `Email` varchar(100) NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newsteller`
--

INSERT INTO `newsteller` (`Email`, `Created_at`) VALUES
('nahiyan.tahira30@gmail.com', '2021-01-05 19:20:56'),
('dukul.howlader30@gmail.com', '2021-01-05 19:49:23');

-- --------------------------------------------------------

--
-- Table structure for table `photographer`
--

CREATE TABLE `photographer` (
  `Name` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Contact` bigint(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Pricing1` varchar(300) NOT NULL,
  `Pricing2` varchar(300) NOT NULL,
  `Pricing3` varchar(300) NOT NULL,
  `Pricing4` varchar(300) NOT NULL,
  `Day1` varchar(300) NOT NULL,
  `Day2` varchar(300) NOT NULL,
  `Day3` varchar(300) NOT NULL,
  `Day4` varchar(300) NOT NULL,
  `Day5` varchar(300) NOT NULL,
  `Day6` varchar(300) NOT NULL,
  `Day7` varchar(300) NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photographer`
--

INSERT INTO `photographer` (`Name`, `Type`, `Password`, `Contact`, `Email`, `Pricing1`, `Pricing2`, `Pricing3`, `Pricing4`, `Day1`, `Day2`, `Day3`, `Day4`, `Day5`, `Day6`, `Day7`, `Created_at`) VALUES
('Nahiyan Saiyara Tahira', 'Photographer', '30306090150Tahira', 1986812256, 'nahiyan.tahira30@gmail.com', 'For weeding- 15000 BDT', '', '', '', '', '', '', '', '', '', '', '2021-01-05 19:33:52'),
('Abdullah Riyad', 'Photographer', 'ASDasd12', 1986812256, 'riyad420@gmail.com', 'For weeding- 15000 BDT', 'For Haldi Night- 12000 BDT', 'For Weeding and Haldi- 25000 BDT', 'For All - 35000 BDT', 'Saturday', 'Sunday', 'Monday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', '2021-01-12 15:36:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_images`
--

CREATE TABLE `tbl_images` (
  `id` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `name` longblob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Created_at`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`Created_at`);

--
-- Indexes for table `newsteller`
--
ALTER TABLE `newsteller`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `photographer`
--
ALTER TABLE `photographer`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
