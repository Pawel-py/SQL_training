DROP TABLE IF EXISTS customer;

CREATE TABLE customer(
	customer_id 		INTEGER,
	first_name			TEXT,
	last_name			TEXT,
	phone 				TEXT UNIQUE,
	email				TEXT UNIQUE,
	discount			REAL DEFAULT (0),
	id_card				TEXT UNIQUE,
	PRIMARY KEY (customer_id)
	);
