-- Data Analysis:

-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT "Employees"."emp_no","Employees"."last_name","Employees"."first_name", "Employees"."gender","Salaries"."salary" 
FROM "Employees" INNER JOIN "Salaries" ON "Employees"."emp_no" = "Salaries"."emp_no";

-- 2. List employees who were hired in 1986.
SELECT "Employees"."emp_no","Employees"."last_name","Employees"."first_name","Employees"."hire_date"
FROM "Employees" WHERE "Employees"."hire_date" BETWEEN '1986-01-01' AND '1987-01-01';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT "Department_Manager"."dept_no","Department_Manager"."emp_no","Employees"."last_name","Employees"."first_name","Department_Manager"."from_date","Department_Manager"."to_date"
FROM "Department_Manager" INNER JOIN "Employees" ON "Department_Manager"."emp_no" = "Employees"."emp_no";

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT "Employees"."emp_no","Employees"."last_name","Employees"."first_name","Employee_Data"."dept_no"
FROM "Employees" INNER JOIN "Employee_Data" ON "Employees"."emp_no" = "Employee_Data"."emp_no";

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT "Employees"."emp_no","Employees"."last_name","Employees"."first_name"
FROM "Employees" WHERE "Employees"."first_name" = 'Hercules' AND "Employees"."last_name" LIKE 'B%';

