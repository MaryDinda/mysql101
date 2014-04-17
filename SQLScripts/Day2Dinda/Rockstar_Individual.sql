CREATE Database RockStar;
CREATE TABLE Individual

USE RockStar;
SHOW COLUMNS FROM Individual;
describe Individual;
SELECT * FROM Individual;
CREATE TABLE Band
(ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
, Name VarChar(25) NOT null
, YearFormed Year(4) NOT null
, IsTogether boolean NOT null
, MusicGenre enum('Rock', 'Blues', 'Pop', 'Hip-Hop') NOT null);
SHOW COLUMNS FROM Band;
INSERT INTO Band
(ID, Name, YearFormed, IsTogether, MusicGenre) VALUES (Null, 'The Beatles', '1960', '0', 'Rock');
INSERT INTO Band
(ID, Name, YearFormed, IsTogether, MusicGenre) VALUES (Null, 'Rolling Stones', '1962', '1', 'Rock');
SELECT * FROM Band;
INSERT INTO Band
(ID, Name, YearFormed, IsTogether, MusicGenre) VALUES (Null, 'The Band', '1958', '0', 'Rock');
CREATE TABLE Automobile (
ID INT NOT null
, NAME VARCHAR(25) NOT null
, PRIMARY KEY (ID)
) ENGINE=INNODB;
CREATE TABLE Engine
(ID INT NOT null
, AutomobileID INT NOT null
, EngineSize DECIMAL (2,1) NOT null
, INDEX AutomobileID_idx (AutomobileID),
FOREIGN KEY (AutomobileID) REFERENCES Automobile(ID)
ON DELETE cascade
) ENGINE=INNODB;
ALTER TABLE Band
ENGINE=INNODB;
CREATE TABLE Album (
ID INT unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY
, Name VarChar(50) NOT null
, AlbumYear Year(4) NOT null
, BandID INT UNSIGNED NOT null
, INDEX BandID_idx (BandID),
FOREIGN KEY (BandID) REFERENCES Band(ID) 
ON UPDATE cascade ON DELETE CASCADE
) ENGINE=INNODB;

