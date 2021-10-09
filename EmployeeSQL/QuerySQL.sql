SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;


SELECT first_name, last_name, hire_date FROM employees WHERE hire_date >= '01/01/1986'
AND hire_date < '01/01/1987';


SELECT
	e.emp_no,
	e.first_name,
	e.last_name,
	m.dept_no,
	d.dept_name
FROM
	employees e
INNER JOIN dept_manager m 
    ON m.emp_no = e.emp_no
INNER JOIN departments d 
    ON d.dept_no = m.dept_no;
	
SELECT
	e.emp_no,
	e.first_name,
	e.last_name,
	d.dept_name
FROM
	employees e
INNER JOIN dept_emp de 
    ON de.emp_no = e.emp_no
INNER JOIN departments d 
    ON d.dept_no = de.dept_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

SELECT
	e.emp_no,
	e.first_name,
	e.last_name,
	d.dept_name
FROM
	employees e
INNER JOIN dept_emp de 
    ON de.emp_no = e.emp_no
INNER JOIN departments d 
    ON d.dept_no = de.dept_no
	WHERE d.dept_name = 'Sales';
	
SELECT
	e.emp_no,
	e.first_name,
	e.last_name,
	d.dept_name
FROM
	employees e
INNER JOIN dept_emp de 
    ON de.emp_no = e.emp_no
INNER JOIN departments d 
    ON d.dept_no = de.dept_no
	WHERE d.dept_name = 'Sales' or d.dept_name = 'Development' ;
	
SELECT last_name, COUNT(emp_no) AS "Last Name Totals"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Totals" DESC;

