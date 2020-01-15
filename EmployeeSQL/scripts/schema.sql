-- Author: Andrew McKinney
-- Date: 01/14/2020
-- Employees SQL DB Schema

DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS deptEmp;
DROP TABLE IF EXISTS deptManager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;



CREATE TABLE departments (
  dept_no varchar(15),
  dept_name varchar(20)
);

CREATE TABLE deptEmp (
  emp_no integer,
  dept_no varchar(15),
  from_date date,
  to_date date
);

CREATE TABLE deptManager (
  dept_no varchar(15),
  emp_no integer,
  from_date date,
  to_date date
);

CREATE TABLE employees (
    emp_no integer,
    birth_Date date,
    first_name text,
    last_name varchar(20),
    gender varchar(5),
    hire_date date
);

CREATE TABLE salaries (
  emp_no integer,
  salary integer,
  from_date date,
  to_date date
);

CREATE TABLE titles (
  emp_no integer,
  title varchar(20),
  from_date date,
  to_date date
);

