DROP TABLE IF EXISTS producer;
DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS customer_movie;
DROP TABLE IF EXISTS movie_rating_logs;


CREATE TABLE producer(
	producer_id 		INTEGER,
	company_name		TEXT NOT NULL,
	country 			TEXT NOT NULL,
	PRIMARY KEY (producer_id)
);

CREATE TABLE movie(
	movie_id			INTEGER,
	producer_id 		INTEGER NOT NULL,
	title 				TEXT NOT NULL,
	duration 			INTEGER NOT NULL,
	rating				INTEGER NOT NULL,
	PRIMARY KEY (movie_id)
	FOREIGN KEY (producer_id) REFERENCES producer (producer_id)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE customer(
	customer_id			INTEGER,
	first_name			TEXT NOT NULL,
	last_name			TEXT NOT NULL,
	email				TEXT NOT NULL,
	PRIMARY KEY (customer_id)
);
	
CREATE TABLE customer_movie(
	movie_id			INTEGER NOT NULL,
	customer_id			INTEGER NOT NULL, 
	data_rented			TEXT NOT NULL,
	due_date			TEXT NOT NULL,
	PRIMARY KEY (movie_id, customer_id),
	FOREIGN KEY (movie_id) REFERENCES movie (movie_id)
	ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
	ON DELETE CASCADE ON UPDATE CASCADE
	);

CREATE TABLE movie_rating_logs(
		id					INTEGER,
		movie_id			INTEGER NOT NULL,
		old_rating			INTEGER NOT NULL,
		new_rating			INTEGER NOT NULL,
		action_type			TEXT NOT NULL,
		created_at			TEXT NOT NULL,
		PRIMARY KEY (id)
);


----------------------------------------------------------------------------------

	
INSERT INTO producer(producer_id , company_name, country)
VALUES (101, 'The Walt Disney Studios', 'United States');

INSERT INTO producer(producer_id , company_name, country)
VALUES (102, 'Warner Bros.', 'United States');

INSERT INTO producer(producer_id , company_name, country)
VALUES (103, 'BBC Films', 'United Kingdom');

----------------------------------------------------------------

INSERT INTO movie(movie_id, producer_id, title, duration, rating)
VALUES (1, 101, 'The Lion King', 118, 7);

INSERT INTO movie(movie_id, producer_id, title, duration, rating)
VALUES (2, 101, 'Captain Marvel', 124, 7);

INSERT INTO movie(movie_id, producer_id, title, duration, rating)
VALUES (3, 102, 'Sherlock Holmes', 129, 8);

INSERT INTO movie(movie_id, producer_id, title, duration, rating)
VALUES (4, 102, 'Cats & Dogs', 83, 6);

INSERT INTO movie(movie_id, producer_id, title, duration, rating)
VALUES (5, 103, 'Saving Mr. Banks', 125, 7);

---------------------------------------------------------------

INSERT INTO customer(customer_id, first_name, last_name, email)
VALUES (1, 'John', 'Smith', 'john.smith@esmartdata.org');

INSERT INTO customer(customer_id, first_name, last_name, email)
VALUES (2, 'Mike', 'Smith', 'mike.smith@esmartdata.org');

INSERT INTO customer(customer_id, first_name, last_name, email)
VALUES (3, 'Mike', 'Doe', 'mike.doe@esmartdata.org');

----------------------------------------------------------------

INSERT INTO customer_movie(movie_id, customer_id, data_rented, due_date)
VALUES (4, 3, '2021-02-10', '2021-02-28');

INSERT INTO customer_movie(movie_id, customer_id, data_rented, due_date)
VALUES (1, 2, '2021-02-11', '2021-02-28');

INSERT INTO customer_movie(movie_id, customer_id, data_rented, due_date)
VALUES (4, 1, '2021-02-13', '2021-02-28');

INSERT INTO customer_movie(movie_id, customer_id, data_rented, due_date)
VALUES (3, 2, '2021-02-17', '2021-02-28');

-----------------------------------------------------------------

UPDATE producer
SET producer_id = 100
WHERE producer_id == 101;

UPDATE movie
SET rating = 8
WHERE movie_id == 2;

SELECT *
FROM movie;

UPDATE customer_movie
SET due_date = '2021-03-31';

SELECT *
FROM customer_movie;

DELETE FROM movie
WHERE movie_id IN (3,5);

SELECT * 
FROM movie;

SELECT *
FROM producer;

DELETE FROM producer
WHERE producer_id == 102;

----------------------------------------------------------

SELECT t1.movie_id,
		t1.due_date,
		t2.title,
		t2.rating
FROM customer_movie AS t1
LEFT JOIN movie AS t2 ON t1.movie_id = t2.movie_id;
---------------------------------------------------------

CREATE VIEW movie_details_v AS
SELECT t1.movie_id,
		t1.due_date,
		t2.title,
		t2.rating,
		t3.company_name
FROM customer_movie AS t1
LEFT JOIN movie AS t2 ON t1.movie_id = t2.movie_id
LEFT JOIN producer AS t3 ON t2.producer_id = t3.producer_id; -- new view

SELECT * 
FROM movie_details_v
WHERE rating >= 7;

DROP VIEW IF EXISTS movie_details_v;
----------------------------------------------------------

CREATE TRIGGER update_movie_rating AFTER UPDATE
ON movie WHEN OLD.rating != NEW.rating
BEGIN 
	INSERT INTO movie_rating_logs (movie_id, old_rating, new_rating, action_type, created_at)
	VALUES (OLD.movie_id, OLD.rating, NEW.rating, 'UPDATE', datetime('now'));
END; -- new TRIGGER !

-----------------------------------------------------------

UPDATE movie 
SET rating = 8
WHERE movie_id == 1;

UPDATE movie
SET rating = 9
WHERE movie_id == 2;

SELECT *
FROM movie_rating_logs; -- look here !

DROP TRIGGER IF EXISTS update_movie_rating;

-------------------------------------------------
