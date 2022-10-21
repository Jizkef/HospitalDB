create table patient
(
	patient_id int generated always as identity not null,
	patient_surname varchar,
	birthday date, --- указать ограничение ниже,
	sex varchar, --- указать ограничение ниже,
	
	constraint pk_patient_patient_id primary key(patient_id),
	constraint chk_patient_birthday check (birthday > '1900-01-01'),
	constraint chk_patient_sex check (sex in ('мужской', 'женский'))
);

INSERT INTO patient (patient_surname, birthday, sex)
VALUES
('Смирнов',   '1956-03-12', 'мужской'),
('Соколова',  '1999-09-21', 'женский'),
('Новиков',   '1967-01-23', 'мужской'),
('Семенов',   '2006-05-17', 'мужской'),
('Петрова',   '1988-04-11', 'женский'),
('Васильев',  '1990-04-11', 'мужской'),
('Новикова',  '2002-12-18', 'женский'),
('Григорьев', '1963-11-02', 'мужской'),
('Иванов',    '2007-09-22', 'мужской'),
('Носова',    '2001-05-09', 'женский');