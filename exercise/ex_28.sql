DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS photo;

CREATE TABLE user(
	user_id			INTEGER,
	first_name		TEXT NOT NULL,
	last_name		TEXT NOT NULL,
	gender 			TEXT,
	birth_date 		TEXT,
	PRIMARY KEY (user_id)
);

CREATE TABLE photo(
	photo_id 		INTEGER,
	user_id			INTEGER UNIQUE,
	description		TEXT,
	privacy			TEXT NOT NULL,
	upload_date		TEXT NOT NULL,
	image_path 		TEXT NOT NULL,
	PRIMARY KEY (photo_id),
	FOREIGN KEY (user_id) REFERENCES user (user_id)
);
