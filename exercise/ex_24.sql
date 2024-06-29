DROP TABLE IF EXISTS producer;

CREATE TABLE producer (
	producer_id 		TEXT NOT NULL,
	company_name		TEXT NOT NULL,
	country 			TEXT NOT NULL,
	PRIMARY KEY (producer_id)
);

    INSERT INTO producer (producer_id, company_name, country) 
	VALUES (NULL, 'Warner Bros.', 'United States'); -- ERROR (PRIMARY KEY)!