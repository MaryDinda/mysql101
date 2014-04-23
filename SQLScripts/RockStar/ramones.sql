USE RockStarDay2;

CREATE TABLE RockStarDay2.Ramones (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LastName` varchar(50) NOT NULL,
  `FirstName` varchar(25) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `DateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DeceasedDate` date DEFAULT NULL, 
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB;



INSERT INTO RockStarDay2.Ramones
(LastName,
FirstName,
BirthDate,
DeceasedDate)
VALUES
('Ramone','Joey','1951-05-19','2001-04-15')
, ('Burke','Clem','1955-11-24',NULL)
, ('Ramone','Johnny','1948-10-08','2004-09-15')
, ('Ramone','Dee Dee','1951-09-18',NULL);

Select * From Ramones;

Insert Into Individual (LastName, FirstName, Birthdate, DeceasedDate)
Select LastName, FirstName, Birthdate, DeceasedDate
From Ramones
Order By DateAdded;

Select * From Individual;

Describe Individual;

Select ID, FIRSTNAME, LASTNAME FROM INDIVIDUAL;

SELECT MAX(ID) as LargestValue FROM INDIVIDUAL;

INSERT INTO Individual
(LastName,
FirstName,
BirthDate,
DeceasedDate)
VALUES
('Allman','Duane','1946-11-20','1971-10-29');

Select * From Individual;

Select last_insert_id();

SELECT * FROM individual
WHERE LastName = 'Ramone';

SELECT * FROM Individual
WHERE FirstName = 'Dee Dee';

DELETE FROM Individual 
WHERE ID = '52';

SELECT ID, FirstName, LastName
FROM individual
WHERE LastName IN ('Ramone', 'Jennings', 'Presley');

DELETE FROM Individual 
WHERE ID = '9';

SHOW TABLES FROM rockstarday2;

SHOW COLUMNS FROM individualband;

SHOW CREATE TABLE IndividualBand;

UPDATE Ramones
SET ID = null;

UPDATE Ramones
SET ID = '5';

UPDATE Ramones
SET ID = '5'
WHERE FirstName = 'Dee Dee';

SHOW CREATE TABLE Band;

ALTER TABLE Band 
ADD Era ENUM ('Classic', 'Modern');

SHOW COLUMNS FROM Band;

Set SQL_SAFE_UPDATES = 0;

UPDATE Band 
SET Era = 'Classic'
WHERE YearFormed <= '1970';

UPDATE Band 
SET Era = 'Modern'
WHERE YearFormed >= '1970';

SELECT Name, Genre FROM Band;

SELECT GENRE, NAME, LastName, FirstName, BirthDate FROM bandmembers;

SELECT NAME FROM bandmembers;

SELECT DISTINCT NAME, LastName FROM bandmembers;

SHOW CREATE VIEW bandmembers;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rockstarday2`.`bandmembers` AS select `b`.`Genre` AS `Genre`,`b`.`Name` AS `Name`,`i`.`LastName` AS `LastName`,`i`.`FirstName` AS `FirstName`,`i`.`BirthDate` AS `BirthDate` from ((`rockstarday2`.`band` `b` join `rockstarday2`.`individualband` `ib` on((`b`.`ID` = `ib`.`BandID`))) join `rockstarday2`.`individual` `i` on((`i`.`ID` = `ib`.`IndividualID`)));

DESCRIBE bandmembers;

SHOW FULL COLUMNS FROM bandmembers;

SELECT * FROM bandmembers;

SELECT lastname, firstname, CONCAT(firstname, ' ' , lastname) AS fullname 
FROM bandmembers;


SELECT lastname, firstname, YEAR(birthdate) as birthyear
FROM bandmembers;

SELECT 'A' < 'B';

SELECT 'BA' < 'C';

SELECT '2' > '1';

SELECT 3 = (2+1);

SELECT '3' = (2+1);

SELECT * FROM Individual WHERE BIRTHDATE IS NULL;

SELECT * FROM Individual WHERE Birthdate IS NOT NULL;

SELECT 'y' BETWEEN 'x' and 'z';

SELECT 'ABC' BETWEEN 'AAA' and 'BBB';

SELECT 7 BETWEEN 7 and 10;

SELECT 1. BETWEEN .5 and 10;

SELECT  * FROM Individual WHERE LASTNAME BETWEEN 'A' and 'Cobain' ORDER BY LASTNAME;