DROP TABLE IF EXISTS game;

CREATE TABLE game(
	game_id				INTEGER NOT NULL,
	game_date			TEXT NOT NULL,
	stadium 			TEXT NOT NULL,
	opponent			TEXT NOT NULL,
	own_score			INTEGER NOT NULL,
	opponent_score		INTEGER NOT NULL,
	PRIMARY KEY(game_id)
);


	