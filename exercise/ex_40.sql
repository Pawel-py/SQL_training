DROP TABLE IF EXISTS player;


CREATE TABLE player(
	player_id			INTEGER NOT NULL,
	first_name			TEXT NOT NULL,
	last_name			TEXT NOT NULL,
	age					INTEGER NOT NULL,
	number				INTEGER NOT NULL,
	position			TEXT NOT NULL,
	PRIMARY KEY(player_id)
);
	