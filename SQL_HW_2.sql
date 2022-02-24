--1) Создать таблицу employees (id(serial, primary key); employees_name (varchar(50), not null))

create table employees(
id serial primary key,
employee_name varchar(50) not null
);
select * from employees;
--2) Наполнить таблицу employee 70 строками.

insert into employees(id, employee_name)
values (default, 'Glenn Mason'),
       (default, 'Rosa Hayes'),
       (default, 'Christine Rose'),
       (default, 'Raymond Brown'),
       (default, 'Marion Soto'),
       (default, 'Robin Williams'),
       (default, 'Ronald Watson'),
       (default, 'Marsha Taylor'),
       (default, 'Keith Reynolds'),
       (default, 'Jacqueline Wood'),
       (default, 'Mary Moody'),
       (default, 'Jennie Hardy'),
       (default, 'David Martinez'),
       (default, 'Jennifer Clark'),
       (default, 'Jennifer Rodriguez'),
       (default, 'Emily Wilson'),
       (default, 'Angela Harrington'),
       (default, 'Donna Caldwell'),
       (default, 'Andrew Morgan'),
       (default, 'Marilyn Black'),
       (default, 'Constance Howard'),
       (default, 'Arthur Patterson'),
       (default, 'James Jones'),
       (default, 'Beverly Murphy'),
       (default, 'Amy Carroll'),
       (default, 'Charlotte Lee'),
       (default, 'Teresa Lue'),
       (default, 'John Carr'),
       (default, 'Sarah Nguyen'),
       (default, 'Michael Jimenez'),
       (default, 'Jesse Goodwin'),
       (default, 'Christine Smith'),
       (default, 'Jeff Thompson'),
       (default, 'Corey Ball'),
       (default, 'Angela Gordo'),
       (default, 'Fernando Lloyd'),
       (default, 'Samuel Smith'),
       (default, 'Eugene Robinson'),
       (default, 'Leroy Lee'),
       (default, 'Hazel Mason'),
       (default, 'Gertrude Powers'),
       (default, 'Anna Lewis'),
       (default, 'James Jenkins'),
       (default, 'Eric Williams'),
       (default, 'Sara Gordon'),
       (default, 'Sharon Price'),
       (default, 'Amy Welch'),
       (default, 'Felicia Holland'),
       (default, 'Dorothy Richardson'),
       (default, 'Nellie Brown'),
       (default, 'Mildred Miles'),
       (default, 'Jim Thompson'),
       (default, 'Wilma Smith'),
       (default, 'Jay Johnson'),
       (default, 'Violet Vega'),
       (default, 'Sheila Miller'),
       (default, 'Kathleen Lewis'),
       (default, 'Vernon Clark'),
       (default, 'Benjamin Edwards'),
       (default, 'Dianne Jensen'),
       (default, 'Patricia Smith'),
       (default, 'John Ford'),
       (default, 'Karen Tate'),
       (default, 'Kevin Campbell'),
       (default, 'Joshua Hernandez'),
       (default, 'Marion Norton'),
       (default, 'David Brooks'),
       (default, 'James Sullivan'),
       (default, 'Laura Kelley'),
       (default, 'Lois Anderson');
  select * from employees;
 
--3) Создать таблицу salary (id (serial, primary key), monthly_salary (int, not null)).
      
create table salary (
	id serial primary key,
	monthly_salary int not null
);

--4) Наполнить таблицу salary 16 строками.

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
	   (default, 2400),
	   (default, 2500);
select * from salary;
	  
--5) Создать таблицу employee_salary (id (Serial,  primary key); employee_id (Int, not null, unique); salary_id (Int, not null).
	  
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);
select * from employee_salary;
	 
--6) Наполнить таблицу employee_salary 40 строками: в 10 строк из 40 вставить несуществующие employee_id.
	
insert into employee_salary (id, employee_id, salary_id)
values (default, 5, 16),
       (default, 21, 1),
       (default, 9, 1),
       (default, 1, 15),
       (default, 55, 7),
       (default, 32, 2),
       (default, 8, 5),
       (default, 2, 8),
       (default, 70, 10),
       (default, 38, 3),
       (default, 44, 14),
       (default, 15, 9),
       (default, 16, 16),
       (default, 33, 11),
       (default, 69, 6),
       (default, 53, 4),
       (default, 37, 12),
       (default, 22, 13),
       (default, 14, 13),
       (default, 65, 2),
       (default, 3, 16),
       (default, 10, 10),
       (default, 19, 3),
       (default, 27, 11),
       (default, 31, 4),
       (default, 47, 5),
       (default, 48, 15),
       (default, 66, 16),
       (default, 13, 11),
       (default, 57, 9),
       (default, 102, 5),
       (default, 71, 6),
       (default, 88, 7),
       (default, 75, 16),
       (default, 125, 7),
       (default, 416, 16),
       (default, 73, 5),
       (default, 108, 4),
       (default, 89, 11),
       (default, 90, 15);
      
  select * from employee_salary;
--7) Создать таблицу roles (id (Serial, primary key); role_name (int, not null, unique).
 
create table roles(
	id serial primary key,
	role_name int not null unique
);
--8) Поменять тип столба role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar(30) using role_name::varchar(30);

--9) Наполнить таблицу roles 20 строками:
insert into roles (id, role_name)
values (default, 'Junior Python developer'),
       (default, 'Middle Python developer'),
       (default, 'Senior Python developer'),
       (default, 'Junior Java developer'),
       (default, 'Middle Java developer'),
       (default, 'Senior Java developer'),
       (default, 'Junior JavaScript developer'),
       (default, 'Middle JavaScript developer'),
       (default, 'Senior JavaScript developer'),
       (default, 'Junior Manual QA engineer'),
       (default, 'Middle Manual QA engineer'),
       (default, 'Senior Manual QA engineer'),
       (default, 'Project Manager'),
       (default, 'Designer'),
       (default, 'HR'),
       (default, 'CEO'),
       (default, 'Sales manager'),
       (default, 'Junior Automation QA engineer'),
       (default, 'Middle Automation QA engineer'),
       (default, 'Senior Automation QA engineer');
select * from roles;

--10) Создать таблицу roles_employee (id (Serial  primary key); employee_id (Int, not null, unique (внешний ключ для таблицы employees, поле id)); role_id (Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id  int not null,
		foreign key (employee_id)
			references employees(id),
		foreign key (role_id)
			references roles(id)
);
select * from roles_employee;
--11) Наполнить таблицу roles_employee 40 строками.
insert into roles_employee (id, employee_id, role_id)
	values (default, 55, 19),
	       (default, 12, 11),
	       (default, 31, 7),
	       (default, 39, 18),
	       (default, 16, 12),
	       (default, 30, 9),
	       (default, 38, 8),
	       (default, 9, 20),
	       (default, 19, 3),
	       (default, 56, 17),
	       (default, 49, 16),
	       (default, 18, 15),
	       (default, 54, 13), 
	       (default, 46, 6),
	       (default, 48, 10),
	       (default, 51, 1),
	       (default, 40, 14),
	       (default, 26, 4),
	       (default, 50, 2),
	       (default, 28, 5),
	       (default, 29, 12),
	       (default, 23, 19),
	       (default, 42, 14),
	       (default, 7, 17),
	       (default, 24, 8),
	       (default, 69, 4),
	       (default, 3, 6),
	       (default, 8, 11),
	       (default, 37, 5),
	       (default, 43, 18),
	       (default, 17, 15),
	       (default, 10, 7),
	       (default, 44, 10),
	       (default, 47, 16),
	       (default, 52, 13),
	       (default, 45, 2),
	       (default, 58, 20),
	       (default, 70, 1),
	       (default, 64, 9),
	       (default, 41, 3);
	select * from roles_employee;
	
