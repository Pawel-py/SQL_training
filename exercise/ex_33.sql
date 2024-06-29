DROP TABLE IF EXISTS car;

CREATE TABLE car (
        car_id     INTEGER,
        brand      TEXT    NOT NULL,
        model      TEXT    NOT NULL,
        year       TEXT    NOT NULL,
        horsepower INTEGER CHECK (horsepower > 0),
        PRIMARY KEY (car_id)
);


INSERT INTO car (car_id, brand, model, year, horsepower)
VALUES (1, 'Mazda', 'CX-5', 2020, 165);

INSERT INTO car (car_id, brand, model, year, horsepower)
VALUES (2, 'Mazda', 'CX-30', 2020, 122);

INSERT INTO car (car_id, brand, model, year, horsepower)
VALUES (3, 'Volvo', 'XC 60', 2022, 211);

SELECT * 
FROM car
ORDER BY horsepower DESC;