create table doctor
(
	doctor_id int generated always as identity not null,
	hospital_id int,
	doctor_surname varchar,
	specialization varchar,
	
	constraint pk_doctor_doctor_id primary key(doctor_id),
	constraint fk_doctor_hospital_id foreign key(hospital_id) references hospital(hospital_id)
);

INSERT INTO doctor (hospital_id, doctor_surname, specialization)
VALUES
(1, 'Петров',    'Хирург'),
(1, 'Петрова',   'Педиатр'),
(1, 'Иванов',    'Хирург'),
(2, 'Попов',     'Педиатр'),
(2, 'Зыков',     'Терапевт'),
(3, 'Лачкова',   'Уролог'),
(3, 'Иванчук',   'Хирург'),
(6, 'Зыков',     'Педиатр'),
(8, 'Васильева', 'Уролог'),
(8, 'Смирнова',  'Терапевт');
