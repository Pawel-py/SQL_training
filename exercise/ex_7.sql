DROP TABLE IF EXISTS user;

CREATE TABLE user (
	user_id  		INTEGER,
	first_name		TEXT,
	last_name		TEXT,
	email			TEXT,
	PRIMARY KEY (user_id)
);

CREATE INDEX idx_email ON user(email);

DROP INDEX idx_email;