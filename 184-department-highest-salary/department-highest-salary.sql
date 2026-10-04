# Write your MySQL query statement below
#primary key is id 

    #two tables
    #we are going to connect employee.departmentId to Department.id on the merge. 
    #output we want the department name, employee name, salary

    #highest salary in each department 

    #dense_rank() does continuously, rank doesnt
    #group by department.name, 
    
    #window function:

    #DENSE_RANK() OVER (PARTITION BY department.name ORDER BY salary DESC) AS rnk

    #subquery we are going to pull out where rnk = 1; 
    
    SELECT Department, name AS Employee, salary AS Salary FROM (
    SELECT Employee.*, Department.name AS Department, DENSE_RANK() OVER (PARTITION BY department.name ORDER BY salary DESC) AS rnk
    FROM Employee JOIN Department ON Employee.departmentId = Department.id) AS x 
    WHERE rnk = 1;
