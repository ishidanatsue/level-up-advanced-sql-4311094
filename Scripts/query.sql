SELECT sql
FROM sqlite_schema
WHERE name = 'sales';

SELECT * FROM sales
ORDER BY employeeId;

SELECT e.firstName, e.lastName, e.title, sls.salesId, e.employeeId
FROM employee e
LEFT JOIN sales sls 
ON e.employeeId = sls.employeeId
WHERE e.title = 'Sales Person'
AND sls.salesId IS NULL;


