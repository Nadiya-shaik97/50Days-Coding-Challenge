USE college
CREATE TABLE customers (
 customer_id INT, 
customer_name VARCHAR(50),
 city VARCHAR(50),
 age INT, 
 total_spent DECIMAL(10,2),
 number_of_orders INT
 );
 INSERT INTO customers VALUES 
 (1, 'Amit', 'Bangalore', 25, 12000, 5),
 (2, 'Neha', 'Mumbai', 30, 45000, 12),
 (3, 'Raj', 'Delhi', 22, 8000, 3), 
 (4, 'Sneha', 'Bangalore', 28, 60000, 15),
 (5, 'Karan', 'Mumbai', 35, 20000, 7), 
 (6, 'Pooja', 'Delhi', 27, 15000, 6),
 (7, 'Arjun', 'Bangalore', 40, 70000, 20), 
 (8, 'Meera', 'Mumbai', 23, 5000, 2);
 
 #### LEVEL-1(BASIC FILTERING)
 select * from customers where city="Bangalore"
 select * from customers where total_spent>20000
 select * from customers where age BETWEEN 25 AND 35
 
 #### LEVEL-2(SORTING & AGGREGATION)
 select * from customers ORDER BY total_spent DESC
 select SUM(total_spent) AS total_revenue FROM customers
 select AVG(total_spent) AS avg_spending from customers
 
 #### LEVEL-3(GROUPING)
 select city, SUM(total_spent) AS total_spending FROM customers GROUP BY city;
 select city, COUNT(*) AS total_customers from customers GROUP BY city;
 
 #### LEVEL-4(Customer Segmentation (CORE TASK ))
 select segment, COUNT(*) AS total_customers FROM customers GROUP BY segment;
 
 #### LEVEL-5(Advanced Basic (HAVING))
 select city, SUM(total_spent) AS total_spending from customers GROUP BY city HAVING SUM(total_spent) > 50000