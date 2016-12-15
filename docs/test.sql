SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dosen
-- ----------------------------
DROP TABLE IF EXISTS `dosen`;
CREATE TABLE `dosen` (
  `iddosen` varchar(10) NOT NULL,
  `namadosen` varchar(20) NOT NULL,
  PRIMARY KEY (`iddosen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for matakuliah
-- ----------------------------
DROP TABLE IF EXISTS `matakuliah`;
CREATE TABLE `matakuliah` (
  `kodematakuliah` varchar(10) NOT NULL,
  `iddosen` varchar(10) NOT NULL,
  `namamatakuliah` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`kodematakuliah`),
  KEY `fk1` (`iddosen`),
  CONSTRAINT `fk1` FOREIGN KEY (`iddosen`) REFERENCES `dosen` (`iddosen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
