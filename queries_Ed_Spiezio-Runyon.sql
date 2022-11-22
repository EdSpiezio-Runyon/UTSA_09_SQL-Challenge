-- ## DATA ANALYSIS

-- Drop analysis table if it exists.
DROP TABLE analysis_1;
DROP TABLE analysis_3;
DROP TABLE analysis_4;
DROP TABLE analysis_5;
DROP TABLE analysis_6;
DROP TABLE analysis_7;

-- -------------------------------------------
-- 1. List the employee number, last name, first name, sex, and salary of each employee.
CREATE TABLE analysis_1(
	emp_no INT PRIMARY KEY,
	last_name VARCHAR,
	first_name VARCHAR,
	sex VARCHAR,
	salary INT);

SELECT * FROM analysis_1;

-- Perform an inner join on tables for analysis_1.
SELECT salaries.salary, employees.emp_no, employees.last_name, employees.first_name, employees.sex
FROM salaries
INNER JOIN employees ON employees.emp_no=salaries.emp_no;

-- -------------------------------------------
-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
Select first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986'

-- -------------------------------------------
-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
CREATE TABLE analysis_3(
	emp_no INT PRIMARY KEY,
	dept_no VARCHAR,
	dept_name VARCHAR,
	last_name VARCHAR,
	first_name VARCHAR);

SELECT * FROM analysis_3;

-- Perform inner join on tables for analysis_3.
SELECT dept_emp.emp_no, departments.dept_name, departments.dept_no, employees.last_name, employees.first_name
FROM dept_emp
INNER JOIN employees ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON departments.dept_no=dept_emp.dept_no
WHERE emp_title LIKE 'm0001'

-- -------------------------------------------
-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
CREATE TABLE analysis_4(
	dept_no VARCHAR PRIMARY KEY,
	emp_no INT,
	last_name VARCHAR,
	first_name VARCHAR,
	dept_name VARCHAR);

SELECT * FROM analysis_4;

-- Perform inner join on tables for analysis_4.
SELECT departments.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN departments ON departments.dept_no=dept_emp.dept_no
INNER JOIN employees ON employees.emp_no=dept_emp.emp_no

-- -------------------------------------------
-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
CREATE TABLE analysis_5(
	first_name VARCHAR PRIMARY KEY,
	last_name VARCHAR,
	sex VARCHAR);

SELECT * FROM analysis_5;

-- Select and list data based on requested criteria for first_name and last_name.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%';

-- -------------------------------------------
-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
CREATE TABLE analysis_6(
	dept_name VARCHAR,
	emp_no INT PRIMARY KEY,
	last_name VARCHAR,
	first_name VARCHAR);

SELECT * FROM analysis_6;

-- Perform inner join on tables for analysis_6.
SELECT departments.dept_name, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_no
FROM dept_emp
INNER JOIN departments ON departments.dept_no=dept_emp.dept_no
INNER JOIN employees ON employees.emp_no=dept_emp.emp_no
WHERE dept_name LIKE 'Sales';

-- -------------------------------------------
-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
CREATE TABLE analysis_7(
	dept_name VARCHAR,
	emp_no INT PRIMARY KEY,
	last_name VARCHAR,
	first_name VARCHAR);

SELECT * FROM analysis_7;

-- Perform inner join on tables for analysis_6.
SELECT departments.dept_name, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_no
FROM dept_emp
INNER JOIN departments ON departments.dept_no=dept_emp.dept_no
INNER JOIN employees ON employees.emp_no=dept_emp.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- -------------------------------------------
-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS "name_count"
FROM employees
GROUP BY last_name
ORDER BY "name_count" DESC;

-- -------------------------------------------