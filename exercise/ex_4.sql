CREATE TEMP TABLE user (     -- TEMPORARY/temp.user
	user_id 		INTEGER,
	first_name 		TEXT,
	last_name		TEXT,
	email			TEXT,
	PRIMARY KEY (user_id)
);

DROP TABLE IF EXISTS user; 