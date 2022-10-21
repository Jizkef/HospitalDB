select patient_surname
from diagnosis
left join patient using(patient_id)
where diagnosis_type = 'воспаление легких'
