DROP TABLE IF EXISTS company;  

CREATE TABLE company (
	company_name 		TEXT,
	stock_exchange		TEXT,
	price				REAL,
	PRIMARY KEY (company_name, stock_exchange)
);

INSERT INTO company (company_name, stock_exchange, price) 
VALUES ('CD Projekt', 'WSE', 250);
INSERT INTO company (company_name, stock_exchange, price) 
VALUES ('Playway', 'WSE', 600);
INSERT INTO company (company_name, stock_exchange, price) 
VALUES ('Ten Square Games', 'WSE', 550);


SELECT ROWID, * FROM company; 

EXPLAIN QUERY PLAN -- Search, not scan! 
SELECT * 
FROM company
WHERE company_name == 'Playway';

EXPLAIN QUERY PLAN -- Scan, not search!
SELECT *
FROM company
WHERE stock_exchange == 'WSE';

EXPLAIN QUERY PLAN
Select *
FROM company 
WHERE ROWID == 2;
