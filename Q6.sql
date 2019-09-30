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