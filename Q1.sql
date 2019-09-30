-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.


--inner join on employees employee number as both tables share this column

SELECT Employees.emp_no, Employees.first_name, Employees.last_name,  Employees.gender, Salaries.salary
FROM Salaries
INNER JOIN Employees ON
Employees.emp_no = Salaries.emp_no;
