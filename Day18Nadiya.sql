Create database Ecommerce;
Use Ecommerce

create table customers
(customer_id INT PRIMARY KEY,
customer_name VARCHAR(150),
city VARCHAR(150)
)

create table orders
(order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
amount DECIMAL
)
create table payments
(payment_id INT PRIMARY KEY,
order_id INT,
payment_status VARCHAR(150)
)
INSERT INTO customers VALUES
 (1, 'Amit', 'Bangalore'), 
(2, 'Sneha', 'Mumbai'),
 (3, 'Rahul', 'Delhi'), 
 (4, 'Priya', 'Chennai');
 
INSERT INTO orders VALUES 
(101, 1, '2024-01-10', 500), 
(102, 1, '2024-02-15', 700), 
(103, 2, '2024-03-01', 300), 
(104, 5, '2024-03-05', 900);

INSERT INTO payments VALUES
 (1, 101, 'Completed'),
 (2, 102, 'Pending'),
 (3, 103, 'Completed');
 
 -------TASK-1:CUSTOMER ORDERS
 select customer_name from customers
 select order_id from orders

 
 --------TASK-2:ALL CUSTOMERS
 
 
 










