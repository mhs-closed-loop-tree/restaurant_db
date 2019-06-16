# generate the staging table

CREATE TABLE restaurant__staging(
	camis integer not null,
	dba varchar(128),
	boro varchar(128),
	building varchar(128),
	street varchar(128),
	zipcode varchar(128),
	phone varchar(128),
	cuisine_description varchar(256),
	inspection_date date,
	action varchar(256),
	violation_code varchar(64),
	violation_description varchar(1024),
	critical_flag varchar(64),
	score  varchar(64),
	grade varchar(64),
	grade_date date,
	record_date date,
	inspection_type varchar(64),
	line_no integer,
	load_timestamp timestamp
);
