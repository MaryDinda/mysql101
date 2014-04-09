use rockstarday2;
show tables;

select * from Individual;

select * 
from Individual
where DeceasedDate is not null

SELECT * FROM Individual;

SHOW COLUMNS FROM Band;
SELECT ID, name, Genre from Band;

SELECT * FROM Individual WHERE LastName = 'Jennings'
SELECT ID, LASTNAME FROM Individual WHERE DeceasedDate is not null;
SELECT ID, LastName, BirthDate FROM Individual WHERE Year(BirthDate) > 1940;
SELECT * FROM Individual WHERE ID IN (1,3,5,7,19);

