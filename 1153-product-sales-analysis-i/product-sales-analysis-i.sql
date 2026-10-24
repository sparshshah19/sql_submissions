# Write your MySQL query statement below

#report product_name, year, price for each sale_id 

#product_id is foreign key (link between two tables)

SELECT product_name, year, price FROM Sales JOIN Product ON Product.product_id = Sales.product_id
