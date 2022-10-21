create table ward_patient
(
	ward_id int,
	patient_id int,
	
	constraint fk_ward_patient_ward_id foreign key(ward_id) references ward(ward_id),
	constraint fk_ward_patient_patient_id foreign key(patient_id) references patient(patient_id)
);