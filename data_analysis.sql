-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s
ON e.emp_no = s.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date LIKE '%1986';

-- !!!NOTE TO SELF: CHECK THAT THIS WORKED!!!
-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
	-- Join first two files
CREATE VIEW dept_names_and_managers AS
SELECT dm.dept_no, d.dept_name, dm.emp_no FROM dept_manager AS dm
JOIN departments AS d
ON dm.dept_no = d.dept_no;

	-- Look at the joined table
SELECT * from dept_names_and_managers;

	-- Get employee names from employees table and include:
SELECT dm.dept_no, dm.dept_name, dm.emp_no, e.last_name, e.first_name FROM dept_names_and_managers AS dm
JOIN employees AS e
ON dm.emp_no = e.emp_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

-- List each employee in the Sales department, including their employee number, last name, and first name.

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).