--Employee details (employee number, last name, first name, sex, and salary)
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
	INNER JOIN salaries s ON e.emp_no = s.emp_no;
	
--Employees hired in 1986 (first name, last name, hire date)
SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE EXTRACT (year FROM hire_date) = 1986;
--Where hire_date LIKE %1986?

--Managers of departments (department number, department name, employee number, last name, first name)
SELECT m.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees e
	INNER JOIN dept_manager m ON m.emp_no = e.emp_no 
	INNER JOIN departments d ON d.dept_no = m.dept_no;

--Department of each employee (employee number, last name, first name, department name)
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
	INNER JOIN dept_emp de ON de.emp_no = e.emp_no
	INNER JOIN departments d ON d.dept_no = de.dept_no
ORDER BY emp_no;

--Employees with first name Hercules, last name starts with B (first name, last name, sex)
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';
	
--Employees in the sales department (employee number, last name, first name, department name)
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
	INNER JOIN dept_emp de ON de.emp_no = e.emp_no
	INNER JOIN departments d ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales';