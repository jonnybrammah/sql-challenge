-- Create title table initially because it doesn't depend on anything else
CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL PRIMARY KEY,
	title VARCHAR(20)
);

-- View the table
SELECT * FROM titles;

-- Create employees table with emp_no as primary key
-- and linking the emp_title_id to the title_id in titles
CREATE TABLE employees (
	emp_no INTEGER NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(5),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date VARCHAR(10),
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR(1),
	hire_date VARCHAR(10)
);

-- View table
SELECT * FROM employees;

-- Create salaries tables with emp_no as primary key
-- and also linking emp_no to emp_no from employees table
CREATE TABLE salaries (
	emp_no INTEGER NOT NULL PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INTEGER
);

-- View table
SELECT * FROM salaries;

-- Create departments table which doesn't depend on anything else
-- Set dept_no as the primary key in this case
CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR
);

-- View the table
SELECT * FROM departments;

-- Create the table dept_manager with dept_no linking to the departments table
-- and emp_no linking to the employees table
-- Set emp_no as the primary key in this table because each instance of emp_no is unique
CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no)
);

-- View the table
SELECT * FROM dept_manager;

-- Create dept_emp with emp_no referencing the employees table
-- and dept_no referencing the departments table
-- and the primary key requires both emp_no and dept_no since neither one is necessarily unique on its own
CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (dept_no, emp_no)
);

SELECT * FROM dept_emp;