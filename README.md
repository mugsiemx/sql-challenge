# sql-challenge

Module 9 SQL Challenge

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

1. Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. Used QuickDBD to create the sketch (link below):
   [QuickDBD] found at (http://www.quickdatabasediagrams.com).
   This project's diagram can be found at https://app.quickdatabasediagrams.com/#/d/cfTSbZ
2. Used the associated schema.sql to set up the tables in my PostgreSQL 15 and manually imported the files through the Import/Export Tool
   ![]https://github.com/mugsiemx/sql-challenge/blob/main/EmployeeSQL/schema.sql

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
   ![]https://github.com/mugsiemx/sql-challenge/blob/main/EmployeeSQL/images/Analysis_ONE.jpg
2. List the first name, last name, and hire date for the employees who were hired in 1986.
   ![]https://github.com/mugsiemx/sql-challenge/blob/main/EmployeeSQL/images/Analysis_TWO.jpg
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
   ![]https://github.com/mugsiemx/sql-challenge/blob/main/EmployeeSQL/images/Analysis_THREE.jpg
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
   ![]https://github.com/mugsiemx/sql-challenge/blob/main/EmployeeSQL/images/Analysis_FOUR.jpg
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
   ![]https://github.com/mugsiemx/sql-challenge/blob/main/EmployeeSQL/images/Analysis_FIVE.jpg
6. List each employee in the Sales department, including their employee number, last name, and first name.
   ![]https://github.com/mugsiemx/sql-challenge/blob/main/EmployeeSQL/images/Analysis_SIX.jpg
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
   ![]https://github.com/mugsiemx/sql-challenge/blob/main/EmployeeSQL/images/Analysis_SEVEN.jpg
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
   ![]https://github.com/mugsiemx/sql-challenge/blob/main/EmployeeSQL/images/Analysis_EIGHT.jpg
#### Bonus

1. Import the SQL database into Pandas. (Yes, I could read the CSVs directly in Pandas, but I am, after all, trying to prove my technical mettle.) This step required some research. I used the following code to get started. Made the necessary modifications for your username, password, host, port, and database name:

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://localhost:5432/<your_db_name>')
   connection = engine.connect()
   ```

   - Consult the [SQLAlchemy documentation](https://docs.sqlalchemy.org/en/latest/core/engines.html#postgresql) for more information.

   - If you’re using a password, do not upload your password to your GitHub repository. Review this [video](https://www.youtube.com/watch?v=2uaTPmNvH0I) and the [GitHub website](https://help.github.com/en/github/using-git/ignoring-files) for more information.

2. Create a histogram to visualize the most common salary ranges for employees.
   ![]https://github.com/mugsiemx/sql-challenge/blob/main/EmployeeSQL/images/CommonSalaryRanges.png
3. Create a bar chart of average salary by title.
   ![]https://github.com/mugsiemx/sql-challenge/blob/main/EmployeeSQL/images/AverageSalaryByTitle.png
## end of assignment
