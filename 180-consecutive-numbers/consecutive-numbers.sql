# Write your MySQL query statement below

#lag and lead. 
SELECT DISTINCT num AS ConsecutiveNums FROM 

(SELECT Logs.* , LAG(num) OVER (ORDER BY id) AS prev_number, 
LEAD(num) OVER (ORDER BY id) AS next_number FROM Logs) AS x
WHERE num = prev_number AND num = next_number

