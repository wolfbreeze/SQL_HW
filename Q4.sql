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
