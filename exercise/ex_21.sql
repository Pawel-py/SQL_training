DROP TABLE IF EXISTS product;

CREATE TABLE product(
	product_id 		INTEGER,
	product_name 	TEXT NOT NULL,
	list_price		REAL NOT NULL,
	category_id		INTEGER NOT NULL,
	PRIMARY KEY (product_id)
);