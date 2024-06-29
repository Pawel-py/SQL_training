DROP TABLE IF EXISTS customer;
 
CREATE TABLE customer(
	customer_id 			INTEGER,
	first_name				TEXT,
	last_name				TEXT,
	phone					TEXT,
	email 					TEXT,
	city					TEXT,
	discount 				REAL DEFAULT(0),
	created_at				TEXT DEFAULT(datetime('now')),
	PRIMARY KEY (customer_id)
);

INSERT INTO customer (first_name, last_name, email) 
VALUES ('John', 'Snow', 'john.snow@esmartdata.org');

SELECT * FROM customer;