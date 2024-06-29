DROP TABLE IF EXISTS game_player;

CREATE TABLE game_player(
	game_id			INTEGER NOT NULL,
	player_id		INTEGER NOT NULL,
	rating			INTEGER CHECK(rating > 0 and rating <= 10),
	PRIMARY KEY (game_id, player_id)
);

INSERT INTO player (player_id, first_name, last_name, age, number, position)
VALUES (1, 'Manuel', 'Neuer', 35, 1, 'goalkeeper');

INSERT INTO player (player_id, first_name, last_name, age, number, position)
VALUES (2, 'Joshua', 'Kimmich', 26, 6, 'midfielder');

INSERT INTO player (player_id, first_name, last_name, age, number, position)
VALUES (3, 'Robert', 'Lewandowski', 33, 9, 'forward');

