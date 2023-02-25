-- PHemployee_db DataBase created in PostgreSQL 15

-- drop tables to then create clean tables
drop table if exists employee_department_junction;
drop table if exists salaries;
drop table if exists titles;
drop table if exists dept_manager;
drop table if exists dept_emp;
drop table if exists departments;
drop table if exists employees;  -- do last, other tables depend on this one

-- create tables in connection order
-- create table to hold basic individual employee information
create table employees
(
	emp_no int primary key,
	emp_title_id varchar not null,
	birth_date date NOT NULL,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar(1) check (sex = 'M' or sex = 'F'),
	hire_date date NOT NULL
);
select * from employees;  -- check file exists properly


-- create table to hold individual employee salaries
create table salaries
(
	emp_no int references employees(emp_no),
	constraint salariesPK primary key (emp_no),
	salary int not null	
);
select * from salaries;  -- check file exists properly


-- create table to hold employee's title
create table titles
(
	title_id varchar references employees(emp_title_id),
	title varchar not null
);
select * from titles;  -- check file exists properly


-- create table for department managers
create table dept_manager
(
	dept_no varchar(5) not null,
	emp_no int not null
);
select * from dept_manager;  -- check file exists properly


-- create table for non-department managers
create table dept_emp
(
	emp_no int not null,
	dept_no varchar(5) not null
);
select * from dept_emp;  -- check file exists properly


-- create table containing all departments for company
create table departments
(
	dept_no varchar(5) primary key,
	dept_name varchar not null
);
select * from departments;  -- check file exists properly

-- create employee_department_junction table to determine the department the employee belongs...
-- 	employees key directly to dept_emp table with the emp_no
--  EXCEPT	when the emp_title is m0001 which is a manager, THEN
-- 	manager employees key to the dept_manager table by emp_no.
-- to determine the department:
-- 		non-manager employees use dept_emp table (dept_no) to tie to departments table, (dept_no)
-- 		manager employees use dept_manager table (dept_no) to tie to departments table, (dept_no)
create table employee_department_junction
(
	emp_id int not null,	
	dept_id varchar(5) not null,
	constraint PK_employee_department_junction primary key
	(
		emp_id,
		dept_id
	),
	foreign key (emp_id) references employees (emp_no),
	foreign key (dept_id) references departments(dept_no)
);

select * from employee_department_junction;  -- check file exists properly

-- import the csv files THEN recheck each one for proper import
--COPY employees(emp_no, emp_title, birth_date, first_name, last_name, sex, hire_date)
--from 'C:\Users\eslar\sql-challenge\EmployeeSQL\data\departments.csv'
--FROM 'https://github.com/mugsiemx/sql-challenge/blob/main/EmployeeSQL/data/departments.csv'
--DELIMITER ','
--CSV HEADER;


select * from employees;
select * from salaries;
select * from titles;
select * from dept_manager;
select * from dept_emp;
select * from departments;

-- perform joins to populate the employee's department file



select * from employee_department_junction; -- check file data exists properly
