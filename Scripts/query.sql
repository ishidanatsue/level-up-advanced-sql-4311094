SELECT sql
FROM sqlite_schema
WHERE name = 'employee';

SELECT * FROM employee
LIMIT 5;

SELECT e.firstName, e.lastName, e.title, m.firstName as ManagerFirstName, m.lastName as ManagerLastName
FROM  employee e
JOIN employee m 
ON e.managerId = m.employeeId;