--Employee details (employee number, last name, first name, sex, and salary)
SELECT emp_no, last_name, first_name, sex, salary
FROM employees e
	INNER JOIN salaries s ON e.emp_no = s.emp_no;
	
--Employees hired in 1986 (first name, last name, hire date)
SELECT e.first_name, e.last_name, e.hire_date
WHERE EXTRACT (year FROM hire_date) = 1986;
--Where hire_date LIKE %1986?

--Managers of departments (department number, department name, employee number, last name, first name)
