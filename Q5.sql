-- 5. List all employees whose first name is "Hercules" and last names begin with "B."

select first_name, last_name
from Employees
where first_name = 'Hercules'
and last_name like 'B%'


from Employees
