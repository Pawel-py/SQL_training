CREATE TABLE company(
	company_id			INTEGER,
	company_name 		TEXT,
	stock_exchange		TEXT,
	price				REAL,
	PRIMARY KEY (company_id)
);

DROP TABLE IF EXISTS company;