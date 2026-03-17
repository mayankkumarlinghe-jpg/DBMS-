-- Problem 176: Second Highest Salary
-- This query finds the second highest salary from the Employee table.
-- It uses a subquery to first find the absolute highest salary, 
-- and then selects the maximum salary that is strictly less than that highest value.
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);
