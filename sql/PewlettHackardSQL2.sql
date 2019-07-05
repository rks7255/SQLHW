-- Data Analysis:

-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT "Employees"."emp_no","Employees"."last_name","Employees"."first_name", "Employees"."gender","Salaries"."salary" 
FROM "Employees" 
INNER JOIN "Salaries" ON "Employees"."emp_no" = "Salaries"."emp_no";

-- 2. List employees who were hired in 1986.
SELECT "Employees"."emp_no","Employees"."last_name","Employees"."first_name","Employees"."hire_date"
FROM "Employees" 
WHERE "Employees"."hire_date" BETWEEN '1986-01-01' AND '1987-01-01';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT "Department_Manager"."dept_no","Department_Manager"."emp_no","Employees"."last_name","Employees"."first_name","Department_Manager"."from_date","Department_Manager"."to_date"
FROM "Department_Manager" 
INNER JOIN "Employees" ON "Department_Manager"."emp_no" = "Employees"."emp_no";

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT "Employees"."emp_no","Employees"."last_name","Employees"."first_name","Employee_Data"."dept_no"
FROM "Employees" 
INNER JOIN "Employee_Data" ON "Employees"."emp_no" = "Employee_Data"."emp_no";

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT "Employees"."emp_no","Employees"."last_name","Employees"."first_name"
FROM "Employees" 
WHERE "Employees"."first_name" = 'Hercules' AND "Employees"."last_name" LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT "Employee_Data"."emp_no", "Employees"."last_name", "Employees"."first_name", "Departments"."dept_name"
FROM "Employee_Data"
INNER JOIN "Employees" ON "Employee_Data"."emp_no" = "Employees"."emp_no"
INNER JOIN "Departments" ON "Employee_Data"."dept_no" = "Departments"."dept_no"
WHERE "Departments"."dept_name" = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT "Employee_Data"."emp_no", "Employees"."last_name", "Employees"."first_name", "Departments"."dept_name"
FROM "Employee_Data"
INNER JOIN "Employees" ON "Employee_Data"."emp_no" = "Employees"."emp_no"
INNER JOIN "Departments" ON "Employee_Data"."dept_no" = "Departments"."dept_no"
WHERE "Departments"."dept_name" = 'Sales' OR "Departments"."dept_name" = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT "Employees"."last_name", COUNT(*)
FROM "Employees"
GROUP BY "Employees"."last_name"
ORDER BY 2 DESC;