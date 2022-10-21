create table staff
(
	staff_id int generated always as identity not null,
	ward_id int,
	staff_surname varchar,
	position varchar, --- указать ограничение ниже
	shift varchar, --- указать ограничение ниже
	salary int, --- указать ограничение ниже
	
	constraint pk_staff_staff_id primary key(staff_id),
	constraint fk_staff_ward_id foreign key(ward_id) references ward(ward_id),
	constraint chk_staff_position check (position in ('медсестра', 'няня', 'сиделка', 'санитар')),
	constraint chk_staff_shift check (shift in ('утренняя', 'вечерняя', 'ночная')),
	constraint chk_staff_salary check (salary > 1000 and salary < 10000)
);

INSERT INTO staff(ward_id, staff_surname, position, shift, salary)
VALUES
(1, 'Попов',     'санитар',   'утренняя', 2000),
(2, 'Попова',    'няня',      'вечерняя', 4000),
(3, 'Низовцева', 'медсестра', 'утренняя', 3000),
(4, 'Соколова',  'няня',      'ночная',   6000),
(4, 'Иванова',   'няня',      'утренняя', 7000),
(3, 'Кузнецова', 'медсестра', 'ночная',   4000),
(2, 'Петров',    'санитар',   'вечерняя', 8000),
(1, 'Васильев',  'няня',      'утренняя', 5000),
(4, 'Михайлов',  'сиделка',   'ночная',   6000);