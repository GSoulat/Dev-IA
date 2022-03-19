

SELECT EmployeeID, DATE_FORMAT(BirthDate, %d,%m,%y), FirstName as 'This employees first names is' FROM northwind2.employees;