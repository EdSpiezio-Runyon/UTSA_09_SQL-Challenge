-- Create new table for titles.
CREATE TABLE titles(
	title_id VARCHAR(10) NOT NULL,
	title VARCHAR(30) NOT NULL,
	PRIMARY KEY (title_id)
);
SELECT * FROM titles;

-- Create new table for employees.
CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title VARCHAR(10) NOT NULL,
	birth_date VARCHAR(10) NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date VARCHAR(10) NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);
SELECT * FROM employees;

-- Create new table for departments.
CREATE TABLE departments(
	dept_no VARCHAR(10) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);
SELECT * FROM departments;

-- Create new table for dept_emp.
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
SELECT * FROM dept_emp;

-- Create new table for dept_manager.
CREATE TABLE dept_manager(
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM dept_manager;

-- Create new table for salaries.
CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM salaries;

-- -------------------------------------------