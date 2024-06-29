DROP TABLE IF EXISTS staff;

CREATE TABLE staff (
	staff_id 		INTEGER,
	first_name  	TEXT CHECK(length(first_name) > 0),
	last_name 		TEXT CHECK(length(last_name) > 0),
	email			TEXT UNIQUE,
	country			TEXT DEFAULT ('USA'),
	phone 			TEXT UNIQUE,
	PRIMARY KEY (staff_id)
);
