DROP TABLE IF EXISTS producer;

CREATE TABLE producer(
	producer_id 		TEXT,
	company_name		TEXT NOT NULL,
	country 			TEXT NOT NULL,
	PRIMARY KEY (producer_id)
);

    INSERT INTO producer (producer_id, company_name, country) 
    VALUES ('101', 'The Walt Disney Studios', 'United States');
    INSERT INTO producer (producer_id, company_name, country) 
    VALUES (NULL, 'Warner Bros.', 'United States');
    INSERT INTO producer (producer_id, company_name, country) 
    VALUES ('103', 'BBC Films', 'United Kingdom');
	
SELECT * 
FROM producer;