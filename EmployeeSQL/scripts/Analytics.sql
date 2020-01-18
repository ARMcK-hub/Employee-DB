SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary 
FROM employees AS e
LEFT JOIN salaries AS s ON e.emp_no = s.emp_no

select * from dept_emp