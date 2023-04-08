# sql-challenge
-----
![Employee_Selection](https://cdn.pixabay.com/photo/2019/10/01/16/00/choice-4518660_960_720.png)
## Project Description
The goal of this project was to analyze information about employees of Pewlett-Hackard, a dubiously named computer company. pgAdmin was used to create tables based on the six remaining CSV files from employees in the time period of interest, which were then analyzed using SQL queries to display important information requested from stakeholders.

### Table of Contents
- [1. Data Engineering](https://github.com/jonnybrammah/sql-challenge/blob/main/README.md#data-engineering)

- [2. Data Analysis](https://github.com/jonnybrammah/sql-challenge/blob/main/README.md#data-analysis)

### Data Engineering
The six CSV files contained:
- General information about employees (like birth dates, first names, etc.)
- A file to assign a code to each department
- A file to assign a code to each title within the company
- And files containing information about:
  - Each employee's salary
  - Which department an employee was part of
  - Who managed each department

In pgAdmin, SQL queries were run to generate tables to important this information from the original CSV files, including assigning primary keys and linking the tables together on similar rows using foreign keys. An ERD was then created using this information, which can be seen here:
![sql-challenge_ERD](https://github.com/jonnybrammah/sql-challenge/blob/main/Employee%20SQL%20ERD.png)

### Data Analysis
The data was then analyzed to answer the questions required. Since this contains confidential employee information, it won't be posted here, but the questions answered by the SQL queries in the Data Analysis file were:
  1. List the employee number, names, sex, and salary of each employee
  2. List the first name, last name, and hire date for the employees who were hired in 1986.
  3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
  4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
  5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
  6. List each employee in the Sales department, including their employee number, last name, and first name.
  7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
  8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
These are all clearly signposted in the Data Analysis file with comments.
