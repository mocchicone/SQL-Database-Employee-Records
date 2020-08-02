--List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
INNER JOIN salaries s ON
e.emp_no = s.emp_no;	

--List first name, last name, and hire date for employees who were hired in 1986.

select first_name, last_name, hire_date
from employees
WHERE hire_date between '1/1/1986' and '12/31/1986'	

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_manager dm
INNER JOIN departments d ON
dm.dept_no = d.dep_no
INNER JOIN employees e ON
dm.emp_no = e.emp_no

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

select de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp de
INNER JOIN employees e ON
de.emp_no = e.emp_no
INNER JOIN departments d ON
de.dept_no = d.dep_no

--List first name, last name, and sex for employees whose 
--first name is "Hercules" and last names begin with "B."

select first_name, last_name, sex
from employees 
where first_name = 'Hercules' and last_name like 'B%'

--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de on
e.emp_no = de.emp_no
inner join departments d on
de.dept_no = d.dep_no
where d.dept_name = 'Sales' 

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de on
e.emp_no = de.emp_no
inner join departments d on
de.dept_no = d.dep_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'

--In descending order, list the frequency count of employee 
--last names, i.e., how many employees share each last name.

select last_name, count(last_name) as "last_name_count"
from employees 
group by last_name
order by "last_name_count" desc	


