USE RockStarDay2;

DROP FUNCTION IF EXISTS fnCelsiustoFahren;

CREATE FUNCTION fnCelsiustoFahren (celcius INT)
RETURNS INT deterministic
COMMENT 'Converts Celcius temperatures to Fahrenheit.'
deterministic
RETURN (1.8 * celcius) + 32;

SHOW CREATE FUNCTION fnCelsiustoFahren;


SELECT fnCelsiustoFahren(20);

DROP FUNCTION IF EXISTS fnCelsiustoFahren;

DROP FUNCTION IF EXISTS fnFahrentoCelsius;

CREATE FUNCTION fnFahrentoCelsius (Fahrenheit INT)
RETURNS INT deterministic
COMMENT 'Converts Fahrenheit temperatures to Celcius.'
deterministic
/*C = 5/9 (f-32) */
RETURN (5/9) * (fahrenheit-32);

SHOW CREATE FUNCTION fnFahrentoCelsius;


SELECT fnFahrentoCelsius(50) as celcius;
