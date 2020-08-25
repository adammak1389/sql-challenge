drop table departments;
create table departments (
	dept_no varchar not null primary key,
	dept_name varchar not null
);

select * from departments;


drop table employees;
create table employees (
	emp_no INT primary key,
	emp_title_id varchar not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null,
	foreign key (emp_title_id) references titles(title_id)
);

select * from employees;

drop table dept_emp;
create table dept_emp (
	emp_no INT,
	dept_no varchar not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

select * from dept_emp;


drop table dept_manager;
create table dept_manager (
	dept_no varchar not null,
	emp_no INT,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

select * from dept_manager;

drop table salaries;
create table salaries (
	emp_no INT,
	salary money,
	foreign key (emp_no) references employees(emp_no)
);

select * from salaries;


drop table titles;
create table titles (
	title_id varchar not null primary key,
	title varchar not null 
);

select * from titles;

-- schema is complete