CREATE TABLE salaries (
    emp_no INT,
    salary INT,
	Primary Key (emp_no)
);

CREATE TABLE titles (
    title_id VARCHAR(255) Primary Key,
	title VARCHAR(255) 
);

CREATE TABLE departments (
    dep_no VARCHAR(255) Primary Key,
	dept_name VARCHAR(255)  
);



CREATE TABLE employees (
    emp_no INT,
	emp_title_id VARCHAR(255),
	birth_date date,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	sex VARCHAR(1),
	hire_date date,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no),
	primary key (emp_no, emp_title_id)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(255), 
	emp_no INT,
    FOREIGN KEY (dept_no) REFERENCES departments(dep_no),
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no),
	primary key (dept_no, emp_no)
);

CREATE TABLE dept_emp (
   	emp_no INT,
	dept_no VARCHAR(255), 
    FOREIGN KEY (dept_no) REFERENCES departments(dep_no),
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no),
	primary key (dept_no, emp_no)
);

select * from employees
select * from titles
select * from salaries
select * from departments
select * from dept_manager
select * from dept_emp






