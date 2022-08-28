SELECT * FROM categories;

SELECT * FROM details;

SELECT * FROM mechanics;

SELECT * FROM ratings;

SELECT details.object_id,
	details.game_name,
	details.year_published,
	details.min_players,
	details.max_players,
	details.min_playtime,
	details.max_playtime,
	categories.category_1,
	categories.category_2,
	categories.category_3,
	categories.category_4,
	categories.category_5,
	categories.category_6
INTO det_cat
FROM details
LEFT JOIN categories
ON details.object_id = categories.object_id;

SELECT det_cat.object_id,
	det_cat.game_name,
	det_cat.year_published,
	det_cat.min_players,
	det_cat.max_players,
	det_cat.min_playtime,
	det_cat.max_playtime,
	det_cat.category_1,
	det_cat.category_2,
	det_cat.category_3,
	det_cat.category_4,
	det_cat.category_5,
	det_cat.category_6,
	mechanics.mech_1,
	mechanics.mech_2,
	mechanics.mech_3,
	mechanics.mech_4,
	mechanics.mech_5,
	mechanics.mech_6
INTO det_cat_mech
FROM det_cat
LEFT JOIN mechanics
ON det_cat.object_id = mechanics.object_id;

SELECT det_cat_mech.object_id,
	det_cat_mech.game_name,
	det_cat_mech.year_published,
	det_cat_mech.min_players,
	det_cat_mech.max_players,
	det_cat_mech.min_playtime,
	det_cat_mech.max_playtime,
	det_cat_mech.category_1,
	det_cat_mech.category_2,
	det_cat_mech.category_3,
	det_cat_mech.category_4,
	det_cat_mech.category_5,
	det_cat_mech.category_6,
	det_cat_mech.mech_1,
	det_cat_mech.mech_2,
	det_cat_mech.mech_3,
	det_cat_mech.mech_4,
	det_cat_mech.mech_5,
	det_cat_mech.mech_6,
	ratings.total_votes,
	ratings.users_rated
INTO bg_fulldata
FROM det_cat_mech
LEFT JOIN ratings
ON det_cat_mech.object_id = ratings.object_id;

SELECT * FROM bg_fulldata;

