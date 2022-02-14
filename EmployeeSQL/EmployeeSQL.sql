DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title VARCHAR,
	birth_date DATE,
	first_name TEXT,
	last_name TEXT,
	sex TEXT,
	hire_date DATE
);

DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name TEXT
);

