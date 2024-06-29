DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS shop;
DROP TABLE IF EXISTS 'order';


CREATE TABLE customer (
	customer_id 		INTEGER,
	first_name			TEXT NOT NULL,
	last_name			TEXT NOT NULL,
	phone 				TEXT NOT NULL,
	email 				TEXT NOT NULL,
	PRIMARY KEY (customer_id)
);

CREATE TABLE shop (
	shop_id 			INTEGER,
	shop_name 			TEXT NOT NULL,
	city 				TEXT NOT NULL,
	street				TEXT NOT NULL,
	zip_code 			TEXT NOT NULL,
	PRIMARY KEY (shop_id)
);

CREATE TABLE 'order' (
	order_id 			INTEGER,
	customer_id			INTEGER NOT NULL,
	order_status		TEXT NOT NULL,
	order_date 			TEXT NOT NULL,
	shop_id				INTEGER NOT NULL,
	PRIMARY KEY (order_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id) 
	ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (shop_id) REFERENCES shop (shop_id)
	ON DELETE CASCADE ON UPDATE CASCADE
	); -- always CASCADE !
