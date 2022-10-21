create table doctor_patient
(
	doctor_id int,
	patient_id int,
	
	constraint fk_doctor_patient_doctor_id foreign key(doctor_id) references doctor(doctor_id),
	constraint fk_doctor_patient_patient_id foreign key(patient_id) references patient(patient_id)
);

INSERT INTO doctor_patient
VALUES
	(1, 4),
    (1, 6),
    (1, 3),
    (2, 1),
    (2, 2),
    (4, 8),
    (4, 9),
    (6, 3),
    (6, 2),
    (6, 1);