DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS product;

CREATE TABLE category(
	category_id 		INTEGER,
	category_name		TEXT NOT NULL,
	PRIMARY KEY (category_id)
);

CREATE TABLE product(
	product_id 			INTEGER,
	product_name		TEXT NOT NULL,
	list_price			REAL NOT NULL,
	category_id			INTEGER NOT NULL,
	PRIMARY KEY (product_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id) ON DELETE CASCADE
);

--- second version

CREATE TABLE product(
	product_id 			INTEGER,
	product_name		TEXT NOT NULL,
	list_price			REAL NOT NULL,
	category_id			INTEGER NOT NULL,
	PRIMARY KEY (product_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id) ON UPDATE CASCADE
);