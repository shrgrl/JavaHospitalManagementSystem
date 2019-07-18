CREATE DATABASE  IF NOT EXISTS `hospital_management` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hospital_management`;



--
--  `admitpatient_room` 
--

DROP TABLE IF EXISTS `admitpatient_room`;

CREATE TABLE `admitpatient_room` (
  `AdmitID` int(11) NOT NULL AUTO_INCREMENT,
  `PatientID` int(11) NOT NULL,
  `Disease` varchar(45) NOT NULL,
  `AdmitDate` varchar(45) NOT NULL,
  `RoomNo` int(11) DEFAULT NULL,
  `DoctorID` int(11) NOT NULL,
  `AP_Remarks` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AdmitID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


--
-- Dumping data for table `admitpatient_room`
--

LOCK TABLES `admitpatient_room` WRITE;

INSERT INTO `admitpatient_room` VALUES (1,1,'Hadr Problem','01/01/2015',1,1,'djfgsdkhgfhk');

UNLOCK TABLES;

--
-- Table structure for table `admitpatient_ward`
--

DROP TABLE IF EXISTS `admitpatient_ward`;

CREATE TABLE `admitpatient_ward` (
  `AdmitID` int(11) NOT NULL AUTO_INCREMENT,
  `PatientID` int(11) NOT NULL,
  `Disease` varchar(45) NOT NULL,
  `AdmitDate` varchar(45) NOT NULL,
  `Wardname` varchar(45) NOT NULL,
  `DoctorID` int(11) NOT NULL,
  `AP_Remarks` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AdmitID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


--
-- Dumping data for table `admitpatient_ward`
--

LOCK TABLES `admitpatient_ward` WRITE;

INSERT INTO `admitpatient_ward` VALUES (1,1,'ghfg','01/01/2015','Hard',1,'gfhgfhgfhgfh');

UNLOCK TABLES;

--
-- Table structure for table `bill_room`
--

DROP TABLE IF EXISTS `bill_room`;

CREATE TABLE `bill_room` (
  `BillNo` int(11) NOT NULL AUTO_INCREMENT,
  `DischargeID` int(11) NOT NULL,
  `BillingDate` varchar(45) NOT NULL,
  `RoomCharges` int(11) DEFAULT NULL,
  `ServiceCharges` int(11) DEFAULT NULL,
  `PaymentMode` varchar(45) DEFAULT NULL,
  `PaymentModeDetails` varchar(45) DEFAULT NULL,
  `ChargesPaid` int(11) DEFAULT NULL,
  `DueCharges` int(11) DEFAULT NULL,
  `TotalCharges` int(11) NOT NULL,
  `NoOfDays` int(11) DEFAULT NULL,
  `TotalRoomCharges` int(11) DEFAULT NULL,
  PRIMARY KEY (`BillNo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


--
-- Dumping data for table `bill_room`
--

LOCK TABLES `bill_room` WRITE;

INSERT INTO `bill_room` VALUES (2,3,'01/01/2015',250,500,'by Cash','jgfgj',1500,0,1500,4,1000);

UNLOCK TABLES;

--
-- Table structure for table `bill_ward`
--

DROP TABLE IF EXISTS `bill_ward`;

CREATE TABLE `bill_ward` (
  `BillNo` int(11) NOT NULL AUTO_INCREMENT,
  `DischargeID` int(11) DEFAULT NULL,
  `BillingDate` varchar(45) DEFAULT NULL,
  `BedCharges` varchar(45) DEFAULT NULL,
  `ServiceCharges` int(11) DEFAULT NULL,
  `PaymentMode` varchar(45) DEFAULT NULL,
  `PaymentModeDetails` varchar(45) DEFAULT NULL,
  `ChargesPaid` int(11) DEFAULT NULL,
  `DueCharges` int(11) DEFAULT NULL,
  `TotalCharges` int(11) DEFAULT NULL,
  `NoOfDays` int(11) DEFAULT NULL,
  `TotalBedCharges` int(11) DEFAULT NULL,
  PRIMARY KEY (`BillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Dumping data for table `bill_ward`
--

LOCK TABLES `bill_ward` WRITE;

UNLOCK TABLES;

--
-- Table structure for table `dischargepatient_room`
--

DROP TABLE IF EXISTS `dischargepatient_room`;

CREATE TABLE `dischargepatient_room` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdmitID` int(11) NOT NULL,
  `DischargeDate` varchar(45) NOT NULL,
  `DP_Remarks` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


--
-- Dumping data for table `dischargepatient_room`
--

LOCK TABLES `dischargepatient_room` WRITE;

INSERT INTO `dischargepatient_room` VALUES (3,1,'01/01/2015','gdfgfdg');

UNLOCK TABLES;

--
-- Table structure for table `dischargepatient_ward`
--

DROP TABLE IF EXISTS `dischargepatient_ward`;

CREATE TABLE `dischargepatient_ward` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdmitID` int(11) NOT NULL,
  `DischargeDate` varchar(45) NOT NULL,
  `DP_Remarks` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


--
-- Dumping data for table `dischargepatient_ward`
--

LOCK TABLES `dischargepatient_ward` WRITE;

INSERT INTO `dischargepatient_ward` VALUES (2,1,'01/01/2015','gfhgfhgfhgfh');

UNLOCK TABLES;

--
-- Table structure for table `doctor_table`
--

DROP TABLE IF EXISTS `doctor_table`;

CREATE TABLE `doctor_table` (
  `DoctorID` int(11) NOT NULL,
  `Doctorname` varchar(25) NOT NULL,
  `FatherName` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `ContactNo` varchar(15) NOT NULL,
  `Qualifications` varchar(45) NOT NULL,
  `Specialization` varchar(45) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `BloodGroup` varchar(4) NOT NULL,
  `DateOfJoining` varchar(12) NOT NULL,
  `Address` varchar(200) NOT NULL,
  PRIMARY KEY (`DoctorID`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `ContactNo_UNIQUE` (`ContactNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Dumping data for table `doctor_table`
--

LOCK TABLES `doctor_table` WRITE;

INSERT INTO `doctor_table` VALUES (1,'Suja','asad','fbh@kgjj.com','01224','M.B.B.s','Hard','M','B+','01/01/1988','Dhaka');

UNLOCK TABLES;

--
-- Table structure for table `login_table`
--

DROP TABLE IF EXISTS `login_table`;

CREATE TABLE `login_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(25) NOT NULL,
  `user_Password` varchar(15) NOT NULL,
  `nameofuser` varchar(45) NOT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `ContactNo` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UserName_UNIQUE` (`UserName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


--
-- Dumping data for table `login_table`
--

LOCK TABLES `login_table` WRITE;

INSERT INTO `login_table` VALUES (6,'mon','312','Morshedul','mon@gail.com','01913673057');

UNLOCK TABLES;

--
-- Table structure for table `patientregistration`
--

DROP TABLE IF EXISTS `patientregistration`;

CREATE TABLE `patientregistration` (
  `PatientID` int(11) NOT NULL,
  `Patientname` varchar(25) NOT NULL,
  `FatherName` varchar(25) NOT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `ContactNo` varchar(15) NOT NULL,
  `Age` int(11) NOT NULL,
  `Remarks` varchar(45) DEFAULT NULL,
  `Gen` varchar(8) NOT NULL,
  `BG` varchar(5) DEFAULT NULL,
  `Address` varchar(105) DEFAULT NULL,
  PRIMARY KEY (`PatientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Dumping data for table `patientregistration`
--

LOCK TABLES `patientregistration` WRITE;

INSERT INTO `patientregistration` VALUES (1,'jgkf','ljdfgj','jfdhj@fjg.jgg','054542',125,'dfghkdff','M','A+','fdgfdgfd');

UNLOCK TABLES;

--
-- Table structure for table `room_table`
--

DROP TABLE IF EXISTS `room_table`;

CREATE TABLE `room_table` (
  `RoomNo` int(11) NOT NULL,
  `RoomType` varchar(15) NOT NULL,
  `RoomCharges` int(11) NOT NULL,
  `RoomStatus` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`RoomNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Dumping data for table `room_table`
--

LOCK TABLES `room_table` WRITE;

INSERT INTO `room_table` VALUES (1,'Deluxe',250,'Vacant'),(2,'General',300,'Vacant');

UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;

CREATE TABLE `services` (
  `ServiceName` varchar(100) NOT NULL,
  `ServiceDate` varchar(45) NOT NULL,
  `PatientID` int(11) DEFAULT NULL,
  `ServiceCharges` int(11) NOT NULL,
  `ServiceID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ServiceID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;

INSERT INTO `services` VALUES ('Hard Chekap','01/02/2015',1,500,3);

UNLOCK TABLES;

--
-- Table structure for table `ward_table`
--

DROP TABLE IF EXISTS `ward_table`;

CREATE TABLE `ward_table` (
  `serialNo` int(11) NOT NULL AUTO_INCREMENT,
  `Wardname` varchar(45) NOT NULL,
  `wardType` varchar(45) NOT NULL,
  `NoOfBeds` int(11) NOT NULL,
  `Charges` int(11) NOT NULL,
  PRIMARY KEY (`serialNo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


--
-- Dumping data for table `ward_table`
--

LOCK TABLES `ward_table` WRITE;

INSERT INTO `ward_table` VALUES (5,'Hard','General',40,300);

UNLOCK TABLES;

--
-- Table structure for table `wardboy_nurse_tbl`
--

DROP TABLE IF EXISTS `wardboy_nurse_tbl`;

CREATE TABLE `wardboy_nurse_tbl` (
  `ID` int(11) NOT NULL,
  `W_N_name` varchar(25) NOT NULL,
  `Category` varchar(25) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `ContactNo` varchar(15) DEFAULT NULL,
  `Qualifications` varchar(45) DEFAULT NULL,
  `BloodGroup` varchar(5) DEFAULT NULL,
  `DateOfJoining` varchar(45) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Dumping data for table `wardboy_nurse_tbl`
--

LOCK TABLES `wardboy_nurse_tbl` WRITE;

INSERT INTO `wardboy_nurse_tbl` VALUES (1,'Mon','Wardboy','dfkshdfj@hfg.asd','01254','S.S.C','A-','01/01/2015','Dhaka'),(2,'Mone','Nurse','dhfdjh@jhgl.com','012354','H.S.C','B+','01/01/2000','Kholna');

UNLOCK TABLES;



