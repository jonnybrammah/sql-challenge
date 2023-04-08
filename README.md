# sql-challenge
-----
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
