-- 1. Salesperson Table
DROP TABLE IF EXISTS salesperson;
CREATE TABLE IF NOT EXISTS salesperson(
    salesperson_id TEXT PRIMARY KEY,
    name TEXT,
    city TEXT,
    commission REAL
);

INSERT INTO salesperson(salesperson_id, name, city, commission)
VALUES
('5001', 'John', 'Paris', 0.55),
('5002', 'Lucy', 'Luxembourg', 1.3),
('5003', 'Ken', 'Munich', 7.9),
('5004', 'Rachel', 'Rome', 5.6),
('5005', 'Muhammed', 'London', 0.66);

SELECT * FROM salesperson;

-- 2. Customer Table (Fixed semicolon error & matched salesperson_ids)
DROP TABLE IF EXISTS customer;
CREATE TABLE IF NOT EXISTS customer(
    customer_id TEXT PRIMARY KEY,
    name TEXT,
    city TEXT,
    grade REAL,
    salesman_id TEXT
);

INSERT INTO customer(customer_id, name, city, grade, salesman_id)
VALUES
('348', 'Liam', 'Lisbon', 9, '5003'),
('569', 'Grace', 'Paris', 6, '5001'),
('600', 'Pete', 'Rome', 2, '5004'),
('723', 'Madeline', 'Zurich', 5, '5002'),
('811', 'Hazel', 'Barcelona', 4, '5005');

SELECT * FROM customer;

-- 3. Orders Table (Fixed semicolon error, date format & matched IDs)
DROP TABLE IF EXISTS orders;
CREATE TABLE IF NOT EXISTS orders(
    order_number TEXT PRIMARY KEY,
    amount INTEGER,
    date TEXT,
    customer_id TEXT,
    salesman_id TEXT
);

INSERT INTO orders(order_number, amount, date, customer_id, salesman_id)
VALUES
('001', 500, '2023-09-20', '569', '5001'),
('002', 2, '2023-10-02', '600', '5004'),
('003', 76, '2023-08-25', '348', '5003'),
('004', 88, '2023-09-12', '723', '5002'),
('005', 1, '2023-10-14', '811', '5005');

SELECT * FROM orders;

SELECT * FROM salesperson JOIN customer ON salesperson.salesperson_id = customer.salesman_id WHERE salesperson.city = 'Paris';