DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id int identity PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10, 2),
    quantity INT,
    added_date DATE,
    discount_rate NUMERIC(5, 2)
);

INSERT INTO products
(product_name, category, price, quantity, added_date, discount_rate)
VALUES
('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
('Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.00),
('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
('Desk', 'Furniture', 8000.00, 15, '2023-11-20', 12.00),
('Monitor', 'Electronics', 12000.00, 8, '2024-01-10', 8.00),
('Printer', 'Electronics', 9500.50, 5, '2024-02-15', 7.50),
('Mouse', 'Accessories', 750.00, 40, '2024-03-18', 10.00),
('Keyboard', 'Accessories', 1250.00, 35, '2024-03-18', 10.00),
('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);

SELECT * FROM products;

--Total quantity--
select sum(quantity) as Total_Quantity
from products;

select sum(quantity) as Total_Quantity_of_electronics
from products
where category ='electronics'and price>20000;

--count of product--
select count(*) as Total_products
from products;

--use of count with condition--
select count(product_name) as Total_products
from products
where product_name='headphones';

--use of count with like--
select count(*) as Total_products
from products
where product_name Like ('%phone');

--use og avg--
select AVG (quantity) as Average
from products;

select AVG (price) as Average
from products
where category= 'accessories' and price>500;

--use of max--
select Max(quantity) as Max_quantity
from products;

--use of min--
select min(quantity) as Min_Quantity
from products;

select Max(quantity) as Max_quantity,
       min(quantity) as Min_Quantity
from products;



