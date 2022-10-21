select patient_surname
from analysis
left join patient using(patient_id)
where appointed_date = birthday