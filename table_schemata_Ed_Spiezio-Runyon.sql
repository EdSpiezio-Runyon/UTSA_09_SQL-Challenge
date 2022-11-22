-- Create new table for departments.
CREATE TABLE departments(
	dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30) NOT NULL);

SELECT * FROM departments;

-- Create new table for dept_emp.
CREATE TABLE dept_emp(
	emp_no INT FOREIGN KEY NOT NULL,
	dept_no VARCHAR(10) FOREIGN KEY NOT NULL);

SELECT * FROM dept_emp;

-- Create new table for dept_manager.
CREATE TABLE dept_manager(
	dept_no VARCHAR(10) FOREIGN KEY NOT NULL,
	emp_no INT FOREIGN KEY NOT NULL);

SELECT * FROM dept_manager;

-- Create new table for employees.
CREATE TABLE employees(
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title VARCHAR(10) FOREIGN KEY NOT NULL,
	birth_date VARCHAR(10) NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date VARCHAR(10) NOT NULL);

SELECT * FROM employees;

-- Create new table for salaries.
CREATE TABLE salaries(
	emp_no INT NOT NULL FOREIGN KEY,
	salary INT NOT NULL);
	
SELECT * FROM salaries;

-- Create new table for titles.
CREATE TABLE titles(
	title_id VARCHAR(10) NOT NULL PRIMARY KEY,
	title VARCHAR(30) NOT NULL);

SELECT * FROM titles;

-- -------------------------------------------