CREATE TABLE restaurant(
	camis integer not null,
	dba varchar(128),
	boro varchar(128),
	building varchar(128),
	street varchar(128),
	zipcode varchar(128),
	phone varchar(128),
	cuisine_description varchar(256),
	grade varchar(64),
	line_no integer,
	load_timestamp timestamp
);

CREATE UNIQUE INDEX i_restaurant_pk ON restaurant(camis);
CREATE INDEX i_restaurant_search ON restaurant(cuisine_description, grade);
