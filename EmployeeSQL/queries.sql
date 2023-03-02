-- #### Data Analysis

-- use alias ids as follows:

--	d for departments
-- ed for (dept_emp) employee departments
-- md for (dept_manager) department managers
--  t for titles
--  s for salaries
--  e for employees
--  j for emp_dept_junction employee-department association

-- checking the total number of employees
--  300,024 total employees
-- select count(*) as emp_count
-- from employees

-- 1. List the employee number, last name, first name, sex, and salary of each employee.
--  300,024 total salaries
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
inner join salaries as s on
e.emp_no=s.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
--   36,150 employees hired in 1986
select e.first_name, e.last_name, e.hire_date
from employees as e
where EXTRACT(YEAR FROM e.hire_date)='1986';

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
--    24 department managers
select ed.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from employees as e
left join dept_emp as ed on
e.emp_no=ed.emp_no
left join departments as d on
ed.dept_no=d.dept_no
where e.emp_title_id = 'm0001';

--  confirm 24 department managers
--select count(*) as mgr_count
--from employees
--where emp_title_id = 'm0001';

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
--  331603 listed
select ed.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name, e.birth_date
from employees as e
left join dept_emp as ed on
e.emp_no=ed.emp_no
left join departments as d on
ed.dept_no=d.dept_no
-- where e.emp_no=10557

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
--  20 listed
select e.first_name, e.last_name, e.sex
from employees as e
where e.first_name = 'Hercules' and e.last_name like 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
--  52245 employees in sales
select d.dept_name, e.emp_no, e.last_name, e.first_name
from employees as e
left join dept_emp as ed on
e.emp_no=ed.emp_no
left join departments as d on
ed.dept_no=d.dept_no
where d.dept_name = 'Sales';

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
--  137952 employees in sales and development departments
select d.dept_name, e.emp_no, e.last_name, e.first_name
from employees as e
left join dept_emp as ed on
e.emp_no=ed.emp_no
left join departments as d on
ed.dept_no=d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'
order by d.dept_name, e.last_name, e.first_name;

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
-- 1638 last names for employees with the same last name
select e.last_name, count(*) as last_name_count
from employees as e
group by e.last_name
order by last_name_count desc;

-- end of assignment