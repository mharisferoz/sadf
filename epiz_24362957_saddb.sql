
CREATE TABLE IF NOT EXISTS `application` (
  `idapplication` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `logo` varchar(1000) NOT NULL,
  `sc1` varchar(1000) NOT NULL,
  `sc2` varchar(1000) NOT NULL,
  `sc3` varchar(1000) NOT NULL,
  `category` varchar(1000) NOT NULL,
  `web` varchar(1000) NOT NULL,
  `iduser` int(11) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `uniqueKey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idapplication`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;



INSERT INTO `application` (`idapplication`, `name`, `description`, `logo`, `sc1`, `sc2`, `sc3`, `category`, `web`, `iduser`, `date`, `uniqueKey`) VALUES
(11, 'Mob App', 'like fb app', '', '', '', '', '', '', 1, '09-06-2019', '5cfcc91482fae'),
(12, 'FBLike', 'Fb like mobile Applicaion', '', '', '', '', '', '', 3, '16-10-2019', '5da6d436e157a'),
(13, 'Whatsapp Like', 'Whatsapp like mobile application', '', '', '', '', '', '', 3, '16-10-2019', '5da6f54783388'),
(14, 'instagram oikee', 'instragram like apps', '', '', '', '', '', '', 3, '16-10-2019', '5da6f6f13236e'),
(15, 'Alphapeeler', 'Alphapeeler', '', '', '', '', '', '', 1, '16-10-2019', '5da6f902ac307'),
(17, 'Haris', 'sdad sadasd sdsd asd dsd sdas dd as das sd as', '6098png', '33025png', '6274png', '85267png', 'Education', 'https://fb.com', 1, '22-11-2019', '5dd8705d4a612');


CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `active` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;



INSERT INTO `user` (`iduser`, `name`, `email`, `mobile`, `address`, `active`, `username`, `password`, `dob`, `image`) VALUES
(1, 'haris', 'harisferoz@gmail.com', '03145256325', 'test', '1', 'haris1', '123456', '1990-05-25', ''),
(3, 'haris', 'mharisferoz@gmail.com', '034552563', 'safora', '1', 'haris', '123456', '1990-05-25', 'dffdfdffsdfdf.jpg'),
(4, 'zxczcx', 'xc@sada.com', '5555', '4asdsds', '1', 'jjj', '123', '2019-04-20', ''),
(5, 'abcd', 'haris23ka4@gmail.com', '562445', 'jjj', '1', 'haris23ka4', '123456', '2001-06-18', '');


CREATE TABLE IF NOT EXISTS `versions` (
  `idversions` int(11) NOT NULL AUTO_INCREMENT,
  `versionname` varchar(45) DEFAULT NULL,
  `short` varchar(10000) NOT NULL,
  `version` varchar(45) DEFAULT NULL,
  `idapplication` int(11) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `file` varchar(1000) NOT NULL,
  PRIMARY KEY (`idversions`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;



INSERT INTO `versions` (`idversions`, `versionname`, `short`, `version`, `idapplication`, `iduser`, `file`) VALUES
(8, 'Mob App 4', '', '0.0.4', 11, 1, ''),
(11, 'FBLike', '', '0.0.1', 12, 3, ''),
(12, 'Whatsapp Like.apk', '', '0.0.1', 13, 3, ''),
(13, 'instagram oikee.apk', '', '0.0.1', 14, 3, ''),
(17, '', 'testing 2', '1.0.4', 15, 1, '47327.apk');
COMMIT;

