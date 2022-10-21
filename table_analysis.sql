create table analysis
(
	analysis_id int generated always as identity,
	patient_id int not null,
	lab_id int not null,
	analysis_type varchar,
	appointed_date date,
	appointed_time time,
	direction_num int,
	condition varchar,
	
	constraint pk_analysis_analysis_id primary key(analysis_id),
	constraint fk_analysis_patient_id foreign key(patient_id) references patient(patient_id),
	constraint fk_analysis_lab_id foreign key(lab_id) references lab(lab_id)
);

insert into analysis(patient_id, lab_id, analysis_type, appointed_date, condition)
VALUES
(1, 1, 'Анализ крови', '2021-01-23', 'Проверяется'),
(1, 1, 'Анализ крови', NULL,         'Завершен'),
(1, 2, 'Анализ крови', NULL,         NULL),
(2, 1, 'Анализ крови', '2020-09-21', NULL),
(2, 2, 'Анализ крови', NULL,         'Проверяется'),
(3, 3, 'Анализ крови', '2021-02-03', 'Завершен'),
(5, 4, 'Анализ крови', '2020-04-11', NULL),
(5, 4, 'Анализ крови', NULL,         'Завершен'),
(8, 6, 'Анализ крови', '2020-05-13', NULL),
(9, 4, 'Анализ крови', '2021-07-17', 'Проверяется');

