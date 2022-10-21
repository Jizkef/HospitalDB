create table diagnosis
(
	diagnosis_id int generated always as identity not null,
	patient_id int not null,
	diagnosis_type text,
	complication text,
	warning_information text,
	
	constraint pk_diagnosis_diagnosis_id primary key(diagnosis_id),
	constraint fk_diagnosis_patient_id foreign key(patient_id) references patient(patient_id)
);

insert into diagnosis(patient_id, diagnosis_type, complication, warning_information)
values
	(1, 'клинический', 'осложнение', 'Предупреждающая информация'),
    (2, 'судебно-медицинский', NULL, 'Предупреждающая информация'),
    (3, 'патолого-анатомический', NULL, NULL),
    (3, 'клинический', 'осложнение', 'Предупреждающая информация'),
    (5, 'судебно-медицинский', NULL, 'Предупреждающая информация'),
    (5, 'патолого-анатомический', NULL, 'Предупреждающая информация'),
    (5, 'клинический', 'осложнение', NULL),
    (7, 'санитарно-эпидемиологический', NULL, NULL),
    (7, 'патолого-анатомический', NULL, NULL),
    (9, 'клинический', 'осложнение', 'Предупреждающая информация'),
	(2, 'воспаление легких', 'осложнение', NULL),
	(5, 'воспаление легких', NULL, NULL);