DROP TABLE IF EXISTS staff;

CREATE TABLE staff (
	staff_id 		INTEGER,
	first_name		TEXT,
	last_name		TEXT,
	email 			TEXT UNIQUE,
	country 		TEXT DEFAULT('USA'),
	phone 			TEXT UNIQUE,
	PRIMARY KEY(staff_id)
);