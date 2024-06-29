    CREATE TABLE customer (
        customer_id INTEGER,
        first_name  TEXT    NOT NULL,
        last_name   TEXT    NOT NULL,
        phone       TEXT,
        street      TEXT    NOT NULL,
        city        TEXT    NOT NULL,
        state       TEXT    NOT NULL,
        zip_code    TEXT    NOT NULL,
        PRIMARY KEY (customer_id)
    );
     
    INSERT INTO customer (
      first_name, last_name, phone, street, 
      city, state, zip_code
    ) 
    VALUES 
      (
        'Debra', 'Burks', NULL, '9273 Thorne Ave.', 
        'Orchard Park', 'NY', 14127
      );
    INSERT INTO customer (
      first_name, last_name, phone, street, 
      city, state, zip_code
    ) 
    VALUES 
      (
        'Kasha', 'Todd', NULL, '910 Vine Street', 
        'Campbell', 'CA', 95008
      );
    INSERT INTO customer (
      first_name, last_name, phone, street, 
      city, state, zip_code
    ) 
    VALUES 
      (
        'Tameka', 'Fisher', NULL, '769C Honey Creek St.', 
        'Redondo Beach', 'CA', 90278
      );
    INSERT INTO customer (
      first_name, last_name, phone, street, 
      city, state, zip_code
    ) 
    VALUES 
      (
        'Daryl', 'Spence', NULL, '988 Pearl Lane', 
        'Uniondale', 'NY', 11553
      );
    INSERT INTO customer (
      first_name, last_name, phone, street, 
      city, state, zip_code
    ) 
    VALUES 
      (
        'Charolette', 'Rice', '(916) 381-6003', 
        '107 River Dr.', 'Sacramento', 'CA', 
        95820
      );
    INSERT INTO customer (
      first_name, last_name, phone, street, 
      city, state, zip_code
    ) 
    VALUES 
      (
        'Lyndsey', 'Bean', NULL, '769 West Road', 
        'Fairport', 'NY', 14450
      );
    INSERT INTO customer (
      first_name, last_name, phone, street, 
      city, state, zip_code
    ) 
    VALUES 
      (
        'Latasha', 'Hays', '(716) 986-3359', 
        '7014 Manor Station Rd.', 'Buffalo', 
        'NY', 14215
      );
    INSERT INTO customer (
      first_name, last_name, phone, street, 
      city, state, zip_code
    ) 
    VALUES 
      (
        'Daryl', 'Duncan', NULL, '15 Brown St.', 
        'Jackson Heights', 'NY', 11372
      );

	  
CREATE INDEX idx_first_name_last_name ON customer(first_name, last_name);	  
	  
EXPLAIN QUERY PLAN 
SELECT * 
FROM customer
WHERE first_name == 'Daryl' AND last_name == 'Spence';

EXPLAIN QUERY PLAN 
SELECT * 
FROM customer
WHERE first_name == 'Daryl';

EXPLAIN QUERY PLAN
SELECT *
FROM customer
WHERE last_name == 'Spence';