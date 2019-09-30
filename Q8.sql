-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

--select first_name, last_name
--from Employees

 SELECT last_name, COUNT(last_name)AS Frequency

  FROM Employees

  GROUP BY last_name

  ORDER BY Frequency DESC

