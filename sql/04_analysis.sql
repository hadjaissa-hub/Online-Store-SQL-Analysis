Customer Analysis

1. Find all customers from Germany.
SELECT
    first_name,
    last_name,
    city
FROM customers
WHERE country = 'Germany';


2. Find customers from Germany, Italy or France.
SELECT
    first_name,
    last_name,
    country
FROM customers
WHERE country IN ('Germany', 'Italy', 'France');


3. Find customers whose first name starts with A.
SELECT
    first_name,
    last_name,
    email
FROM customers
WHERE first_name LIKE 'A%';
Product Analysis
А вот здесь уже начинаются интересные вопросы.


4. Find the 5 most expensive products.
SELECT
    product_name,
    category,
    price
FROM products
ORDER BY price DESC
LIMIT 5;


5. Find products priced between €50 and €300.
SELECT
    product_name,
    price
FROM products
WHERE price BETWEEN 50 AND 300
ORDER BY price DESC;


6. Find products with low stock.
SELECT
    product_name,
    stock
FROM products
WHERE stock < 15
ORDER BY stock ASC;


7. Find products from Electronics or Books.
SELECT
    product_name,
    category,
    price
FROM products
WHERE category IN ('Electronics', 'Books');
Order Analysis


8. Find all completed orders.
SELECT *
FROM orders
WHERE status = 'Completed';


9. Find orders with quantity greater than 1.
SELECT *
FROM orders
WHERE quantity > 1;


10. Find orders placed in February 2026.
SELECT *
FROM orders
WHERE order_date BETWEEN '2026-02-01' AND '2026-02-28';


11. Find pending or cancelled orders.
SELECT *
FROM orders
WHERE status IN ('Pending', 'Cancelled');


12. Find the 5 most recent orders.
SELECT *
FROM orders
ORDER BY order_date DESC
LIMIT 5;