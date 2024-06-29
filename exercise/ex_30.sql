DROP TABLE IF EXISTS driver;
DROP TABLE IF EXISTS car;
DROP TABLE IF EXISTS car_accident;
DROP TABLE IF EXISTS accident;

CREATE TABLE driver(
	driver_id 		INTEGER,
	country 		TEXT NOT NULL,
	zip_code		TEXT NOT NULL,
	PRIMARY KEY (driver_id)
);

CREATE TABLE car(
	car_id			INTEGER,
	brand			TEXT NOT NULL,
	model			TEXT NOT NULL,
	year 			INTEGER NOT NULL,
	driver_id		INTEGER NOT NULL,
	PRIMARY KEY (car_id),
	FOREIGN KEY (driver_id) REFERENCES driver (driver_id)
);

CREATE TABLE car_accident(
	car_id			INTEGER NOT NULL,
	accident_id		INTEGER NOT NULL,
	compensation	REAL NOT NULL,
	PRIMARY KEY (car_id, accident_id),
	FOREIGN KEY (car_id) REFERENCES car (car_id),
	FOREIGN KEY (accident_id) REFERENCES accident(accident_id)
);

CREATE TABLE accident(
	accident_id 		INTEGER,
	accident_date 		TEXT,
	location			TEXT,
	PRIMARY KEY (accident_id)
);


	
	