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
--Inner join on manager and employee (on emp_no)
--Inner join on manager and department (on dept_no)
