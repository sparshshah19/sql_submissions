# Write your MySQL query statement below


#DENSE_RANK()
SELECT(
SELECT DISTINCT salary
FROM (
    SELECT Employee.*, DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk 
FROM Employee) AS x
WHERE rnk = 2)
AS SecondHighestSalary




#WHERE rnk = 2; #the issue with this is that window functions are computed after selects, so this will give an error