# Write your MySQL query statement below

#1) find out if order is immediate or scheduled 
SELECT ROUND(SUM(CASE WHEN order_type = 'immediate' THEN 1 ELSE 0 END) / COUNT(order_type) * 100, 2) AS immediate_percentage FROM (

SELECT Delivery.*, 
CASE WHEN order_date = customer_pref_delivery_date THEN 'immediate' ELSE 'scheduled' END AS order_type, RANK() OVER (PARTITION BY customer_id ORDER BY order_date) AS rnks 
FROM Delivery) As x

WHERE rnks = 1;


#2) find out the first order of a customer 

#for each customer_ids, have the 

#3) compute the percentages of immediate orders in the first orders of all customers, round 2 dp

