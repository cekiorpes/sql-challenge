DROP TABLE IF EXISTS employees, departments, titles, dept_emp, dept_manager, salaries;

CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR
);

CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title VARCHAR(5),
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex TEXT,
	hire_date DATE
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR
);

CREATE TABLE dept_emp (
	emp_no INTEGER,
	dept_no VARCHAR(5)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(5),
	emp_no INTEGER
);

CREATE TABLE salaries (
	emp_no INTEGER,
	salary INTEGER
);