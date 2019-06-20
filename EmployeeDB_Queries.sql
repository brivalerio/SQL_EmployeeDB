-- TESTING
-- Pulling data from each newly created table

-- SELECT * FROM departments;
-- SELECT * FROM dept_emp;
-- SELECT * FROM dept_manager;
-- SELECT * FROM employees;
-- SELECT * FROM salaries;
-- SELECT * FROM titles;

-- Query 1
-- List the following details of each employee:
-- employee number, last name, first name, gender, and salary.
SELECT
	e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	e.gender AS "Gender",
	s.salary AS "Salary"

FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no
-- ORDER BY e.emp_no;
ORDER BY e.last_name; -- Many employees with the same last name?

-- Query 2
-- List employees who were hired in 1986.
SELECT
	e.hire_date AS "Hire Date",
	e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	e.gender AS "Gender",
	s.salary AS "Salary"

FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no
WHERE e.hire_date BETWEEN '1986/01/01' AND '1986/12/31'
ORDER BY e.hire_date ASC;

-- Query 3
-- List the manager of each department with the following information:
-- department number, department name, the manager's employee number, 
-- last name, first name, and start and end employment dates.
SELECT
	dm.dept_no AS "Dept Number",
	d.dept_name AS "Dept Name",
	dm.emp_no AS "Employee Num",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	dm.from_date AS "Employ Start Date",
	dm.to_date AS "Employ End Date"
	
FROM dept_manager dm
JOIN departments d
ON dm.dept_no = d.dept_no
JOIN employees e
ON dm.emp_no = e.emp_no;
