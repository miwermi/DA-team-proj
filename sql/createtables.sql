CREATE TABLE mechanics (
    object_id INT NOT NULL,
	game_name VARCHAR NOT NULL,
	mech_1 VARCHAR NOT NULL,
	mech_2 VARCHAR NOT NULL,
	mech_3 VARCHAR NOT NULL,
	mech_4 VARCHAR NOT NULL,
	mech_5 VARCHAR NOT NULL,
	mech_6 VARCHAR NOT NULL,
    PRIMARY KEY (object_id),
    UNIQUE (object_id)
);

CREATE TABLE categories (
    object_id INT NOT NULL,
    game_name VARCHAR NOT NULL,
	category_1 VARCHAR NOT NULL,
	category_2 VARCHAR NOT NULL,
	category_3 VARCHAR NOT NULL,
	category_4 VARCHAR NOT NULL,
	category_5 VARCHAR NOT NULL,
	category_6 VARCHAR NOT NULL,
    PRIMARY KEY (object_id),
    UNIQUE (object_id)
);

CREATE TABLE details (
	object_id INT NOT NULL,
    game_name VARCHAR NOT NULL,
	year_published INT NOT NULL,
	min_players INT NOT NULL,
	max_players INT NOT NULL,
	min_playtime INT NOT NULL,
	max_playtime INT NOT NULL,
	PRIMARY KEY (object_id),
    UNIQUE (object_id)
);

CREATE TABLE ratings (
	object_id INT NOT NULL,
    game_name VARCHAR NOT NULL,
	total_votes INT NOT NULL,
	users_rated INT NOT NULL,
	PRIMARY KEY (object_id),
    UNIQUE (object_id)
);
