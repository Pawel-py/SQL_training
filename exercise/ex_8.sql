    CREATE TABLE producer (
        producer_id  INTEGER,
        company_name TEXT    NOT NULL,
        country      TEXT    NOT NULL,
        PRIMARY KEY (producer_id)
    );
     
    CREATE TABLE movie (
        movie_id    INTEGER,
        producer_id INTEGER NOT NULL,
        title       TEXT    NOT NULL,
        duration    INTEGER NOT NULL,
        rating      INTEGER NOT NULL,
        PRIMARY KEY (movie_id),
        FOREIGN KEY (producer_id) 
        REFERENCES producer (producer_id) 
        ON DELETE CASCADE ON UPDATE CASCADE
    );
     
    INSERT INTO producer (producer_id, company_name, country) 
    VALUES (101, 'The Walt Disney Studios', 'United States');
    INSERT INTO producer (producer_id, company_name, country) 
    VALUES (102, 'Warner Bros.', 'United States');
    INSERT INTO producer (producer_id, company_name, country) 
    VALUES (103, 'BBC Films', 'United Kingdom');
     
    INSERT INTO movie (movie_id, producer_id, title, duration, rating) 
    VALUES (1, 101, 'The Lion King', 118, 7);
    INSERT INTO movie (movie_id, producer_id, title, duration, rating) 
    VALUES (2, 101, 'Captain Marvel', 124, 7);
    INSERT INTO movie (movie_id, producer_id, title, duration, rating) 
    VALUES (3, 102, 'Sherlock Holmes', 129, 8);
    INSERT INTO movie (movie_id, producer_id, title, duration, rating) 
    VALUES (4, 102, 'Cats & Dogs', 83, 6);
    INSERT INTO movie (movie_id, producer_id, title, duration, rating) 
	VALUES (5, 103, 'Saving Mr. Banks', 125, 7);
----

CREATE INDEX idx_title ON movie(title);
	
EXPLAIN QUERY PLAN 
SELECT * 
FROM movie
WHERE title = 'Sherlock Holmes';

DROP INDEX idx_title;