create table lab
(
	lab_id int generated always as identity not null,
	lab_title varchar,
	lab_adress text,
	
	constraint pk_lab_lab_id primary key(lab_id)
);

INSERT INTO lab(lab_title)
VALUES
('СИТИЛАБ'),
('Открытая лаборатория'),
('Helix'),
('Гемотест'),
('Томская городская №1'),
('Централизованная'),
('Клинико-диагностическая'),
('Томская городская №2'),
('Томская городская №3'),
('Международная');
