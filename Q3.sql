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
