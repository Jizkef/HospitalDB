create table accommodation
(
	hospital_id int,
	ward_id int,
	patient_id int,
	bed_num int,
	
	constraint fk_accommodation_hospital_id foreign key(hospital_id) references hospital(hospital_id),
	constraint fk_accommodation_ward_id foreign key(ward_id) references ward(ward_id),
	constraint fk_accommodation_patient_id foreign key(patient_id) references patient(patient_id)
);