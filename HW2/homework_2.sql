--Создать таблицу employees

create table employee(
	id serial primary key,
	employee_name varchar(50) not null
    );
    
select * from employee;

--Íàïîëíèòü òàáëèöó employee 70 ñòðîêàìè

insert into employee(employee_name)
values ('Brut'),
	   ('Vadim'),
	   ('Vitalik'),
	   ('Ilya'),
	   ('Bulat'),
	   ('Asket'),
	   ('Anna'),
	   ('Olga'),
	   ('Dima'),
	   ('Yura'),
	   ('Umalat'),
	   ('Svetlana'),
	   ('Vladislav'),
	   ('Ignat'),
	   ('Stanislav'),
	   ('Polina'),
	   ('Ekaterina'),
	   ('Edik'),
	   ('Zak'),
	   ('Rurik'),
	   ('Eva'),
	   ('Georgiy'),
	   ('Kirill'),
	   ('Tatyana'),
	   ('Victor'),
	   ('Damir'),
	   ('Anton'),
	   ('Lolita'),
	   ('Alla'),
	   ('Olesya'),
	   ('Yana'),
	   ('Andrey'),
	   ('Sonya'),
	   ('Marina'),
	   ('Karina'),
	   ('Kseniya'),
	   ('Aleksandr'),
	   ('Nataliya'),
	   ('Timur'),
	   ('Rahim'),
	   ('David'),
	   ('Ibragim'),
	   ('Ursula'),
	   ('Violeta'),
	   ('Victoria'),
	   ('Valentin'),
	   ('Artem'),
	   ('Darya'),
	   ('Gleb'),
	   ('Zoya'),
	   ('Elena'),
	   ('Liza'),
	   ('Mark'),
	   ('Taras'),
	   ('Dina'),
	   ('Zahar'),
	   ('Egor'),
	   ('Maksim'),
	   ('Miron'),
	   ('Leonid'),
	   ('Luiza'),
	   ('Sabina'),
	   ('Raisa'),
	   ('Platon'),
	   ('Renat'),
	   ('Pavel'),
	   ('Petr'),
	   ('Nikita'),
	   ('Oliver'),
	   ('Lina');
	  
--Ñîçäàòü òàáëèöó salary
	   
select * from salary;

create table salary(
	id serial primary key,
	monthly_salary int not null
    );

--Íàïîëíèòü òàáëèöó salary 15 ñòðîêàìè
   
insert into salary(id, monthly_salary)
values (default, 1000),
       (default, 1100),
       (default, 1200),
       (default, 1300),
       (default, 1400),
       (default, 1500),
       (default, 1600),
       (default, 1700),
       (default, 1800),
       (default, 1900),
       (default, 2000),
       (default, 2100),
       (default, 2200),
       (default, 2300),
       (default, 2400);
    

--Ñîçäàòü òàáëèöó employee_salary
      
drop table employee_salary;

select * from employee_salary;

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null);

--Íàïîëíèòü òàáëèöó employee_salary 40 ñòðîêàìè

insert into employee_salary(employee_id, salary_id)
values (1, 40),
	   (2, 39),
	   (3, 38),
	   (4, 37),
	   (5, 36),
	   (6, 35),
	   (7, 34),
	   (8, 33),
	   (9, 32),
	   (10, 31),
	   (11, 30),
	   (12, 29),
	   (13, 28),
	   (14, 27),
	   (15, 26),
	   (16, 25),
	   (17, 24),
	   (18, 23),
	   (19, 22),
	   (20, 21),
	   (21, 20),
	   (22, 19),
	   (23, 18),
	   (24, 17),
	   (25, 16),
	   (26, 15),
	   (27, 14),
	   (28, 13),
	   (29, 12),
	   (30, 11),
	   (88, 10),
	   (77, 9),
	   (50, 8),
	   (96, 7),
	   (101, 6),
	   (999, 5),
	   (150, 4),
	   (66, 3),
	   (85, 2),
	   (57, 1);
	   
-- Ñîçäàòü òàáëèöó roles
	  
create table roles(
	id serial primary key,
	role_name int not null unique
    );
   

--Ïîìåíÿòü òèï ñòîëáà role_name ñ int íà varchar(30)
drop table roles;

alter table roles
alter role_name type varchar(30);

--Íàïîëíèòü òàáëèöó roles 20 ñòðîêàìè

insert into roles(role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');

--Ñîçäàòü òàáëèöó roles_employee
	  
select * from roles_employee;
	  
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employee (id),
	foreign key (role_id)
		references roles (id)
	);

--Íàïîëíèòü òàáëèöó roles_employee 40 ñòðîêàìè

insert into roles_employee(employee_id, role_id)
values (7, 2),
	   (20, 4),
	   (3, 9),
	   (5, 13),
	   (23, 4),
	   (11, 2),
	   (10, 9),
	   (22, 13),
	   (21, 3),
	   (34, 4),
	   (6, 7),
	   (40, 5),
	   (55, 8),
	   (66, 10),
	   (45, 1),
	   (61, 3),
	   (14, 18),
	   (69, 15),
	   (58, 11),
	   (54, 7),
	   (39, 4),
	   (19, 2),
	   (8, 8),
	   (17, 10),
	   (52, 9),
	   (36, 11),
	   (41, 14),
	   (48, 15),
	   (2, 18),
	   (1, 7),
	   (51, 17),
	   (42, 16),
	   (62, 13),
	   (56, 12),
	   (9, 6),
	   (24, 5),
	   (38, 2),
	   (15, 7),
	   (50, 11),
	   (12, 19);
	  
	   drop table roles_salary;
	  
	  select * from roles_salary;
	  
	  create table roles_salary(
	  		id serial primary key,
	  		role_id int not null unique,
	  		salary_id int not null unique,
	  		foreign key (role_id)
	  			references roles(id),
	  		foreign key (salary_id)
	  			references salary(id));
	  
	  insert into roles_salary (role_id, salary_id)
	  values (1, 1),
	  		 (2, 2),
	  		 (3, 3),
	  		 (4, 4),
	  		 (5, 5),
	  		 (6, 6),
	  		 (7, 7),
	  		 (8, 8),
	  		 (9, 9),
	  		 (10, 10),
	  		 (11, 11),
	  		 (12, 12),
	  		 (13, 13),
	  		 (14, 14),
	  		 (15, 15),
	  		 (16, 16),
	  		 (17, 17),
	  		 (18, 18),
	  		 (19, 19),
	  		 (20, 20);
	  
	  
	  
--Âûâåñòè âñåõ ðàáîòíèêîâ ÷üè çàðïëàòû åñòü â áàçå, âìåñòå ñ çàðïëàòàìè	  
	  
select employee.employee_name, salary.monthly_salary  from employee
join employee_salary on employee.id = employee_salary.employee_id 
join salary on employee_salary.salary_id  = salary.id;

--Âûâåñòè âñåõ ðàáîòíèêîâ ó êîòîðûõ ÇÏ ìåíüøå 2000

select employee.employee_name, salary.monthly_salary  from employee
join employee_salary on employee.id = employee_salary.employee_id 
join salary on employee_salary.salary_id  = salary.id
where monthly_salary < 2000;

--Âûâåñòè âñå çàðïëàòíûå ïîçèöèè, íî ðàáîòíèê ïî íèì íå íàçíà÷åí. (ÇÏ åñòü, íî íå ïîíÿòíî êòî å¸ ïîëó÷àåò.)

select * from employee join employee_salary
on employee.id  = employee_salary.employee_id
right join salary
on employee_salary.salary_id = salary.id
where employee_name is null;

--Âûâåñòè âñå çàðïëàòíûå ïîçèöèè  ìåíüøå 2000 íî ðàáîòíèê ïî íèì íå íàçíà÷åí. (ÇÏ åñòü, íî íå ïîíÿòíî êòî å¸ ïîëó÷àåò.)

select * from employee join employee_salary
on employee.id  = employee_salary.employee_id
right join salary
on employee_salary.salary_id = salary.id
where employee_name is null and monthly_salary < 2000;

--Íàéòè âñåõ ðàáîòíèêîâ êîìó íå íà÷èñëåíà ÇÏ

select * from employee
left join employee_salary
on employee.id = employee_salary.employee_id
where salary_id is null;

--Âûâåñòè âñåõ ðàáîòíèêîâ ñ íàçâàíèÿìè èõ äîëæíîñòè

select employee.employee_name, roles.role_name from employee
join roles_employee on roles_employee.employee_id = employee.id 
join roles on roles_employee.role_id = roles.id;

--Âûâåñòè èìåíà è äîëæíîñòü òîëüêî Java ðàçðàáîò÷èêîâ

select employee.employee_name, roles.role_name from employee
join roles_employee on roles_employee.employee_id = employee.id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Java%';

--Âûâåñòè èìåíà è äîëæíîñòü òîëüêî Python ðàçðàáîò÷èêîâ

select employee.employee_name, roles.role_name from employee
join roles_employee on roles_employee.employee_id = employee.id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Python%';

--Âûâåñòè èìåíà è äîëæíîñòü âñåõ QA èíæåíåðîâ

select employee.employee_name, roles.role_name from employee
join roles_employee on roles_employee.employee_id = employee.id 
join roles on roles_employee.role_id = roles.id
where role_name like '%QA%';

--Âûâåñòè èìåíà è äîëæíîñòü ðó÷íûõ QA èíæåíåðîâ

select employee.employee_name, roles.role_name from employee
join roles_employee on roles_employee.employee_id = employee.id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Manual QA%';

--Âûâåñòè èìåíà è äîëæíîñòü àâòîìàòèçàòîðîâ QA

select employee.employee_name, roles.role_name from employee
join roles_employee on roles_employee.employee_id = employee.id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Automation QA%';

--Âûâåñòè èìåíà è çàðïëàòû Junior ñïåöèàëèñòîâ

select employee.employee_name, roles.role_name, salary.monthly_salary  from employee
join employee_salary on employee.id = employee_salary.employee_id 
join salary on employee_salary.salary_id  = salary.id
join roles_employee on roles_employee.employee_id = employee.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Junior%';

--Âûâåñòè èìåíà è çàðïëàòû Middle ñïåöèàëèñòîâ

select employee.employee_name, roles.role_name, salary.monthly_salary  from employee
join employee_salary on employee.id = employee_salary.employee_id 
join salary on employee_salary.salary_id  = salary.id
join roles_employee on roles_employee.employee_id = employee.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Middle%';

--Âûâåñòè èìåíà è çàðïëàòû Senior ñïåöèàëèñòîâ

select employee.employee_name, roles.role_name, salary.monthly_salary  from employee
join employee_salary on employee.id = employee_salary.employee_id 
join salary on employee_salary.salary_id  = salary.id
join roles_employee on roles_employee.employee_id = employee.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Senior%';

--Âûâåñòè çàðïëàòû Java ðàçðàáîò÷èêîâ

select roles.role_name, salary.monthly_salary from roles
join roles_salary on roles.id = roles_salary.role_id 
join salary on roles_salary.salary_id  = salary.id
where role_name like '%Java%';

--Âûâåñòè çàðïëàòû Python ðàçðàáîò÷èêîâ

select roles.role_name, salary.monthly_salary from roles
join roles_salary on roles.id = roles_salary.role_id 
join salary on roles_salary.salary_id  = salary.id
where role_name like '%Python%';

--Âûâåñòè èìåíà è çàðïëàòû Junior Python ðàçðàáîò÷èêîâ

select employee.employee_name, roles.role_name, salary.monthly_salary from employee
join roles_employee on roles_employee.employee_id = employee.id
join roles on roles_employee.role_id = roles.id
join roles_salary on roles.id = roles_salary.role_id 
join salary on roles_salary.salary_id  = salary.id
where role_name like '%Junior Python%';

--Âûâåñòè èìåíà è çàðïëàòû Middle JS ðàçðàáîò÷èêîâ

select employee.employee_name, roles.role_name, salary.monthly_salary from employee
join roles_employee on roles_employee.employee_id = employee.id
join roles on roles_employee.role_id = roles.id
join roles_salary on roles.id = roles_salary.role_id 
join salary on roles_salary.salary_id  = salary.id
where role_name like '%Middle Java%';

--Âûâåñòè èìåíà è çàðïëàòû Senior Java ðàçðàáîò÷èêîâ

select employee.employee_name, roles.role_name, salary.monthly_salary from employee
join roles_employee on roles_employee.employee_id = employee.id
join roles on roles_employee.role_id = roles.id
join roles_salary on roles.id = roles_salary.role_id 
join salary on roles_salary.salary_id  = salary.id
where role_name like '%Senior Java%';

--Âûâåñòè çàðïëàòû Junior QA èíæåíåðîâ

select employee.employee_name, roles.role_name, salary.monthly_salary from employee
join roles_employee on roles_employee.employee_id = employee.id
join roles on roles_employee.role_id = roles.id
join roles_salary on roles.id = roles_salary.role_id 
join salary on roles_salary.salary_id  = salary.id
where role_name like 'Junior Manual QA engineer' or role_name like 'Junior Automation QA engineer';

--Âûâåñòè ñðåäíþþ çàðïëàòó âñåõ Junior ñïåöèàëèñòîâ

select AVG(monthly_salary) from roles
join roles_salary on roles.id = roles_salary.role_id 
join salary on roles_salary.salary_id  = salary.id
where role_name like '%Junior%';

--Âûâåñòè ñóììó çàðïëàò JS ðàçðàáîò÷èêîâ

select sum(monthly_salary) from roles
join roles_salary on roles.id = roles_salary.role_id 
join salary on roles_salary.salary_id  = salary.id
where role_name like '%Java%';

--Âûâåñòè ìèíèìàëüíóþ ÇÏ QA èíæåíåðîâ

select min(monthly_salary) from roles
join roles_salary on roles_salary.role_id = roles.id 
join salary on roles_salary.salary_id = salary.id
where role_name like '%QA engineer%';

--Âûâåñòè ìàêñèìàëüíóþ ÇÏ QA èíæåíåðîâ

select max(monthly_salary) from roles
join roles_salary on roles_salary.role_id = roles.id 
join salary on roles_salary.salary_id = salary.id
where role_name like '%QA engineer%';

--Âûâåñòè êîëè÷åñòâî QA èíæåíåðîâ

select count(role_name) from employee
join roles_employee on roles_employee.employee_id = employee.id 
join roles on roles_employee.role_id = roles.id
where role_name like '%QA engineer%';

--Âûâåñòè êîëè÷åñòâî Middle ñïåöèàëèñòîâ

select count(role_name) from employee
join roles_employee on roles_employee.employee_id = employee.id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Middle%';

--Âûâåñòè êîëè÷åñòâî ðàçðàáîò÷èêîâ

select count(role_name) from employee
join roles_employee on roles_employee.employee_id = employee.id 
join roles on roles_employee.role_id = roles.id
where role_name like '%developer%';

--Âûâåñòè ôîíä (ñóììó) çàðïëàòû ðàçðàáîò÷èêîâ

select sum(monthly_salary) from employee
join roles_employee on roles_employee.employee_id = employee.id
join roles on roles_employee.role_id = roles.id
join roles_salary on roles.id = roles_salary.role_id 
join salary on roles_salary.salary_id  = salary.id
where role_name like '%developer%';

--Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ

select employee.employee_name, roles.role_name, salary.monthly_salary  from employee
join roles_employee on roles_employee.employee_id = employee.id
join roles on roles_employee.role_id = roles.id
join roles_salary on roles.id = roles_salary.role_id 
join salary on roles_salary.salary_id  = salary.id
order by monthly_salary asc;

--Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ îò 1700 äî 2300

select employee.employee_name, roles.role_name, salary.monthly_salary  from employee
join roles_employee on roles_employee.employee_id = employee.id
join roles on roles_employee.role_id = roles.id
join roles_salary on roles.id = roles_salary.role_id 
join salary on roles_salary.salary_id  = salary.id
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

--Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ ìåíüøå 2300

select employee.employee_name, roles.role_name, salary.monthly_salary  from employee
join roles_employee on roles_employee.employee_id = employee.id
join roles on roles_employee.role_id = roles.id
join roles_salary on roles.id = roles_salary.role_id 
join salary on roles_salary.salary_id  = salary.id
where monthly_salary < 2300
order by monthly_salary asc;

--Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ ðàâíà 1100, 1500, 2000

select employee.employee_name, roles.role_name, salary.monthly_salary  from employee
join roles_employee on roles_employee.employee_id = employee.id
join roles on roles_employee.role_id = roles.id
join roles_salary on roles.id = roles_salary.role_id 
join salary on roles_salary.salary_id  = salary.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary asc;



