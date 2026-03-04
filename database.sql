drop database if exists join_lab3;
CREATE DATABASE join_lab3;
USE join_lab3;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE order_items (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);


INSERT INTO customers (name, city) VALUES
('Bat', 'Ulaanbaatar'),
('Sara', 'Darkhan'),
('Bold', 'Ulaanbaatar');

INSERT INTO orders (customer_id, order_date) VALUES
(1, '2026-01-01'),
(1, '2026-01-05'),
(2, '2026-02-01');

INSERT INTO products (product_name, price) VALUES
('Keyboard', 120000),
('Mouse', 80000),
('Monitor', 600000);

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(3, 1, 1);

INSERT INTO employees (name, manager_id) VALUES
('Manager A', NULL),
('Employee B', 1),
('Employee C', 1);

