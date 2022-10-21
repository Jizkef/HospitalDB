create table hospital_lab
(
	hospital_id int,
	lab_id int,
	
	constraint fk_hospital_lab_hospital_id foreign key(hospital_id) references hospital(hospital_id),
	constraint fk_hospital_lab_lab_id foreign key(lab_id) references lab(lab_id)
);

INSERT INTO hospital_lab(hospital_id, lab_id)
VALUES
	(1, 2),
    (1, 3),
    (1, 6),
    (2, 1),
    (2, 5),
    (5, 8),
    (5, 1),
    (8, 3),
    (8, 7),
    (9, 4);