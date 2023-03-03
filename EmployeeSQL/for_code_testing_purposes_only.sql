-- check the data in the order the files were created
select * from titles;
select * from departments;
select * from employees;
select * from salaries;
select * from dept_manager;
select * from dept_emp;



-- drop the tables in reverse order to avoid key constraint errors
drop table if exists dept_emp;
drop table if exists dept_manager;
drop table if exists salaries;
drop table if exists employees;
drop table if exists departments;
drop table if exists titles;
