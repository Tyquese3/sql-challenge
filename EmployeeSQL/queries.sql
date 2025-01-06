SELECT emp_no, last_name, first_name, sex
FROM employees;

SELECT *
FROM salaries;

SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM 
    departments d
JOIN 
    dept_manager dm
ON 
    d.dept_no = dm.dept_no
JOIN 
    employees e
ON 
    dm.emp_no = e.emp_no;
	

SELECT d.dept_no, d.dept_name, de.emp_no, e.last_name, e.first_name
FROM 
    departments d
JOIN 
    dept_emp de
ON 
    d.dept_no = de.dept_no
JOIN 
    employees e
ON 
    de.emp_no = e.emp_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT e.emp_no, e.last_name, e.first_name
FROM 
employees e
INNER JOIN 
dept_emp de 
ON 
e.emp_no = de.emp_no
WHERE 
de.dept_no = 'd007';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM 
    employees e
JOIN 
    dept_emp de
ON 
    e.emp_no = de.emp_no
JOIN 
    departments d
ON 
    de.dept_no = d.dept_no
WHERE 
    d.dept_name IN ('Sales', 'Development');

SELECT 
    last_name, 
    COUNT(*) AS frequency
FROM 
    employees
GROUP BY 
    last_name
ORDER BY 
    frequency DESC;