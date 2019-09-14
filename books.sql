CREATE TABLE `author` (
  `AuthorID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Surname` varchar(30) NOT NULL,
  `Nationality` varchar(30) NOT NULL,
  `BirthYear` int(4) unsigned NOT NULL,
  `DeathYear` int(4) unsigned,
  PRIMARY KEY (`AuthorID`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;

CREATE TABLE `book` (
  `BookID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BookTitle` varchar(255) NOT NULL,
  `OriginalTitle` varchar(255) DEFAULT NULL,
  `YearOfPublication` int(4) NOT NULL DEFAULT '0',
  `Genre` varchar(30) NOT NULL,
  `MillionsSold` int(10) unsigned NOT NULL,
  `LanguageWritten` varchar(30) NOT NULL,
  `CoverImagePath` varchar(255) NOT NULL,
  `AuthorID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`BookID`),
  KEY `fk_authorID` (`AuthorID`),
  KEY `indenxx` (`BookTitle`),
  CONSTRAINT `fk_author` FOREIGN KEY (`AuthorID`) REFERENCES `author` (`AuthorID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
