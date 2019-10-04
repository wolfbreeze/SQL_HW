-- Code from https://github.com/Ghernandez1991/SQL-homework
-- Created ERD.PNG and QuickDBD.sql from https://app.quickdatabasediagrams.com
-- All code listed here is literal translation from given direction to SQL code, not much to comment out on.
-- Thank you for your extra time Joe.

-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.


--inner join on employees employee number as both tables share this column

SELECT Employees.emp_no, Employees.first_name, Employees.last_name,  Employees.gender, Salaries.salary
FROM Salaries
INNER JOIN Employees ON
Employees.emp_no = Salaries.emp_no;


--2. List employees who were hired in 1986.

--use right to return the last 4 digits of the hire date column- these are the years

select employees.emp_no, employees.last_name, employees.first_name, employees.birth_date, employees.gender, employees.hire_date
from employees
where '1986' = right(employees.hire_date, 4)
order by employees.emp_no


--3. List the manager of each department with the following information
--: department number, department name, the manager's employee number, last name, 
--first name, and start and end employment dates.

select * from Dept_Mgr
select * from Departments
select * from Employees

select Departments.dept_no, Departments.dept_name, Dept_Mgr.emp_no, Employees.first_name, Employees.last_name, Dept_Mgr.from_date,
Dept_Mgr.to_date
from Dept_Mgr, Departments, Employees
--join manager_dept table to Employees because we only need employees who are managers
--search manager table and find where the emp_no is reference in the employees table
where Employees.emp_no = Dept_Mgr.emp_no

--search department manager table and find where the dept no is reference in the departments table
and Departments.dept_no = Dept_Mgr.dept_no

--order by department name
order by Departments.dept_name


-- 4. List the department of each employee with the following information: employee number, 
--last name, first name, and department name.

select * from Employees
select * from Departments
select * from Depart_Emp

select Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
from Employees, Departments, Depart_Emp

--look at employees table and find those employee numbers in the department employees table 
where Depart_Emp.emp_no = Employees.emp_no
--find the department numbers in department employee table and return those from the departments table to get the department name
and Departments.dept_no = Depart_Emp.dept_no
--sort alphabetically by the department name
order by Departments.dept_name


-- 5. List all employees whose first name is "Hercules" and last names begin with "B."

select first_name, last_name
from Employees
where first_name = 'Hercules'
and last_name like 'B%'


from Employees


-- 6. List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.

select Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
from Employees, Departments, Depart_Emp

--only look for employees in this department
where dept_name = 'Sales'
-- and create list of those department numbers from departments table and refeence those in the department employee table
and Depart_Emp.dept_no = Departments.dept_no
-- with that list of employees reference their employee number from the department employee table to the employees table 
and Employees.emp_no = Depart_Emp.emp_no
--sort alphabetically by the department name
order by Employees.last_name


--- 7. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

select Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
from Employees, Departments, Depart_Emp

--only look for employees in this department
where (dept_name = 'Sales' or dept_name = 'Development')

-- and create list of those department numbers from departments table and refeence those in the department employee table
and Depart_Emp.dept_no = Departments.dept_no
-- with that list of employees reference their employee number from the department employee table to the employees table 
and Employees.emp_no = Depart_Emp.emp_no
--sort alphabetically by the department name
order by Departments.dept_name



-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

--select first_name, last_name
--from Employees

 SELECT last_name, COUNT(last_name)AS Frequency

  FROM Employees

  GROUP BY last_name

  ORDER BY Frequency DESC

