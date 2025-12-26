-- Create database if not exists
CREATE DATABASE IF NOT EXISTS app_db;
USE app_db;

-- Drinks table
CREATE TABLE IF NOT EXISTS drinks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    price DECIMAL(5,2) NOT NULL
);

-- Insert sample drinks
INSERT INTO drinks (name, price) VALUES
('Espresso', 8.0),
('Caffe Latte', 10.0),
('Cappuccino', 10.0),
('Americano', 9.00),
('White Mocha', 11.00)
ON DUPLICATE KEY UPDATE price=VALUES(price);