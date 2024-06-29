DROP TABLE IF EXISTS driver;
DROP TABLE IF EXISTS car;

CREATE TABLE driver(
	driver_id  		INTEGER,
	country			TEXT NOT NULL,
	zip_code		TEXT NOT NULL,
	PRIMARY KEY (driver_id)
);

CREATE TABLE car(
	car_id 		INTEGER,
	brand 		TEXT NOT NULL,
	model 		TEXT NOT NULL,
	year		TEXT NOT NULL,
	driver_id	INTEGER NOT NULL,
	PRIMARY KEY (car_id),
	FOREIGN KEY (driver_id) REFERENCES driver (driver_id)
);