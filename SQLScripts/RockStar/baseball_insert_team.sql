USE baseball;

DROP PROCEDURE IF EXISTS baseball.usp_insert_team;

DELIMITER $$

CREATE PROCEDURE baseball.usp_insert_team(
IN p_teamname varchar(75)
, IN p_abbreviation char(3)
, IN p_league enum('AL', 'NL')
, IN p_divisionname enum ('AL EAST', 'AK CEBTRAK', 'AL WEST', 'NL EAST', 'NL CENTRAL', 'NL WEST')
, OUT p_teamid INT
)
BEGIN

/*
The logic goes in between the BEGIN and END
The logic below takes the parameters from the procedure
And inserts a row into the team table.
*/
INSERT INTO baseball.team
(
TeamName,
ABBR,
League,
DivisionName
)
VALUES
(
p_teamname
, p_abbreviation
, p_league
, p_divisionname
);

SET p_teamid = LAST_INSERT_ID();

END$$
DELIMITER ;

