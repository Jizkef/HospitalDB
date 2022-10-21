create table hospital
(
	hospital_id int generated always as identity not null,
	hospital_title varchar,
	address text,
	count_seats int,
	
	constraint pk_hospital_hospital_id primary key(hospital_id)
);

INSERT INTO hospital(hospital_title)
VALUES
('Горбольница №3'),
('Областная клиническая больница'),
('Детская городская больница №2'),
('Горбольница №2'),
('Областная клиническая больница'),
('Детская городская больница №1'),
('Горбольница №1'),
('Областная клиническая больница'),
('Детская городская больница №3'),
('Горбольница №5');