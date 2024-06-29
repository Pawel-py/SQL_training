DROP TABLE IF EXISTS car;

CREATE TABLE car (
        car_id    INTEGER,
        brand     TEXT    NOT NULL,
        model     TEXT    NOT NULL,
        year      TEXT    NOT NULL,
        PRIMARY KEY (car_id)
);

ALTER TABLE car ADD COLUMN country TEXT;
