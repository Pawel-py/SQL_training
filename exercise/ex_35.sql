DROP TABLE IF EXISTS car;


CREATE TABLE car (
        car_id     INTEGER,
        brand      TEXT    NOT NULL,
        model      TEXT    NOT NULL,
        year       TEXT    NOT NULL DEFAULT 2020,
        horsepower INTEGER CHECK (horsepower > 0),
        PRIMARY KEY (car_id)
);


INSERT INTO car(brand, model, horsepower)
VALUES ('Mazda', 'CX-5', 165);

INSERT INTO car(brand, model, year, horsepower)
VALUES ('Volvo', 'XC-60', 2021, 211);

SELECT *
FROM car;