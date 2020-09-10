-- my query file

select * from employees;

-- Query 1. Joining employees and salaries to get employee salary
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;

-- Query 2. first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date > '12-31-1985'
and hire_date < '1-1-1987';

-- Query 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name. 

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name, dept_manager.dept_no
FROM employees
INNER JOIN dept_manager ON
employees.emp_no=dept_manager.emp_no
INNER JOIN departments ON
dept_manager.dept_no=departments.dept_no;

-- Query 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no=departments.dept_no;

-- Query 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules'
and last_name like 'B%';

-- Query 6. List all employees in the Sales department, including their employee number, last name, first name, and department name. 

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no
where dept_name = 'Sales';

-- Query 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no
where dept_name = 'Sales' or dept_name = 'Development';

-- Query 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(*) as "Last Name Frequency Count"
from employees
group by last_name
order by count(*) desc;

