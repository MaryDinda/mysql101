Use ROCKSTARDAY2;

CREATE TABLE inventory (quantity INT, price INT);

INSERT INTO inventory VALUES (5, 50);

CREATE VIEW v AS SELECT quantity, price, quantity * price AS value FROM inventory;

SELECT * FROM v;