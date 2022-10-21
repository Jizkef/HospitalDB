create table ward
(
	ward_id int generated always as identity not null,
	ward_name varchar,
	hospital_id int,
	
	constraint pk_ward_ward_id primary key(ward_id),
	constraint fk_ward_hospital_id foreign key(hospital_id) references hospital(hospital_id)
);


insert into ward(ward_name, hospital_id)
values
('Эконом плюс', 1),
('Комфорт', 9),
('Комфорт плюс', 7),
('Роскошь', 10);