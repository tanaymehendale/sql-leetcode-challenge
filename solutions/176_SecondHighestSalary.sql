-- # Write your MySQL query statement below
SELECT DISTINCT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (
    SELECT MAX(DISTINCT salary) FROM Employee
);