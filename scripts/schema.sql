-- Author: Andrew McKinney
-- DATE: 01/14/2020
-- Employees SQL DB Schema

DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

-- NOTE: I was instructed to comment out Keys by TA due to import conflicts of CSV data

CREATE TABLE departments (
  dept_no VARCHAR(4) NOT NULL,
  dept_name VARCHAR(50)
  -- PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
  emp_no INTEGER NOT NULL,
  dept_no VARCHAR(4) NOT NULL,
  from_date DATE,
  to_date DATE
  -- PRIMARY KEY (emp_no),
  -- FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE employees (
    emp_no INTEGER NOT NULL,
    birth_date DATE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    gender VARCHAR(1),
    hire_date DATE
    -- PRIMARY KEY (emp_no),
    -- FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)
);

CREATE TABLE dept_manager (
  dept_no VARCHAR(4) NOT NULL,
  emp_no INTEGER NOT NULL,
  from_date DATE,
  to_date DATE
  -- PRIMARY KEY (dept_no),
  -- FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  -- FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
  emp_no INTEGER NOT NULL,
  salary INTEGER,
  from_date DATE,
  to_date DATE
  -- PRIMARY KEY (emp_no),
  -- FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
  emp_no INTEGER NOT NULL,
  title VARCHAR(255),
  from_date DATE,
  to_date DATE
  -- PRIMARY KEY (emp_no),
  -- FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

