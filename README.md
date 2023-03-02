# sql-challenge

Module 9 SQL Challenge: Due: 2 MAR 2023

### Background

It’s been two weeks since I was hired at Pewlett Hackard (a fictional company). My first major task was to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, I’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, I’ll perform data modeling, data engineering, and data analysis, respectively.

### Set Up for This Project

1. Created a new repository called `sql-challenge` in GitHub.
2. Cloned the new repository to my computer.
3. Inside my local Git repository, created a directory for this Challenge called `EmployeeSQL`.
4. Used the 'EmployeeSQL folder to house files for this project and pushed the changes to GitHub.

### Files

Downloaded the following csv files:
[Module 9 Challenge files](https://static.bc-edx.com/data/dl-1-2/m9/lms/starter/m9-starter-code.zip)

### Instructions

This Challenge is divided into three parts: data modeling, data engineering, and data analysis.

#### Data Modeling

Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. Used QuickDBD to create the sketch (link below):
[QuickDBD] found at (http://www.quickdatabasediagrams.com).

#### Data Engineering

1.  Used the provided information to create a table schema for each of the six CSV files.
    - Specified the data types, primary keys, foreign keys, and other constraints.
    - For the primary keys, verify that the column is unique. Otherwise, created a [composite key](https://en.wikipedia.org/wiki/Compound_key), which takes two primary keys to uniquely identify a row.
    - Created the tables in the correct order
      -import the files using the PostgreSQL Import/Export Data tool, my version of PostgreSQL is 15 so I had to drop the 6 hidden columns before import
      -the hidden columns in every file are: tableoid, cmax, xmax, cmin, xmin, ctid
2.  Import each CSV file into its corresponding SQL table.
    > \*\*To avoid errors, imported the data in the same order as the corresponding tables got created. And, accounted for the headers when doing the imports.
         \*\* departments, dept_manager, titles, salaries, , employees, dept_emp

#### Data Analysis

1. List the employee number, last name, first name, sex, and salary of each employee.

2. List the first name, last name, and hire date for the employees who were hired in 1986.

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
