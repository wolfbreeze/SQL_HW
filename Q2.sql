--2. List employees who were hired in 1986.

--use right to return the last 4 digits of the hire date column- these are the years

select employees.emp_no, employees.last_name, employees.first_name, employees.birth_date, employees.gender, employees.hire_date
from employees
where '1986' = right(employees.hire_date, 4)
order by employees.emp_no

