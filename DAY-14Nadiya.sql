USE College
create table sales(
sale_id INT PRIMARY KEY,
customer_name VARCHAR(50),
city VARCHAR(50),
product_name VARCHAR(50),
category VARCHAR(50),
quantity INT,
price DECIMAL(10,2),
sale_Data DATE
);
INSERT INTO sales VALUES(1,'Ravi','Bangalore','Laptop','Electronics',1,60000,'2023-06-01');

INSERT INTO Sales VALUES
(2,'Priya','Chennai','Mobile','Electronics',2,20000,'2023-06-03');

INSERT INTO sales VALUES(3,'Amit','Delhi','Headphones','Accessories',3,2000,'2023-06-05');

INSERT INTO sales VALUES(4, 'Neha', 'Mumbai', 'Chair', 'Furniture', 2, 5000, '2023-06-07');
INSERT INTO sales VALUES(6, 'Priya', 'Chennai', 'Laptop', 'Electronics', 1, 60000, '2023-06-12');
INSERT INTO sales VALUES(7, 'Amit', 'Delhi', 'Chair', 'Furniture', 4, 5000, '2023-06-15');
INSERT INTO sales VALUES(8, 'Neha', 'Mumbai', 'Headphones', 'Accessories', 2, 2000, '2023-06-18');


select * from sales
select customer_name,city from sales
select product_name,price from sales
select * from sales where city='Bangalore'
select product_name from sales where category='Electronics'
select * from sales where price>10000
select * from sales where quantity>2
select * from sales ORDER BY price ASC;
select * from sales ORDER BY quantity DESC;
select distinct city from sales