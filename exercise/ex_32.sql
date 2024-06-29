DROP TABLE IF EXISTS car;

CREATE TABLE car (
        car_id    INTEGER,
        brand     TEXT    NOT NULL,
        model     TEXT    NOT NULL,
        year      TEXT    NOT NULL,
        PRIMARY KEY (car_id)
);

ALTER TABLE car ADD COLUMN country TEXT DEFAULT 'USA';

ALTER TABLE car ADD COLUMN horsepower INTEGER CHECK (horsepower > 0);

ALTER TABLE car RENAME COLUMN brand TO car_brand; 

ALTER TABLE car RENAME TO vehicle;