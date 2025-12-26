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
('Espresso', 11.50),
('Latte', 14.50),
('Cappuccino', 14.50),
('Americano', 14.00),
('Mocha', 15.00)
ON DUPLICATE KEY UPDATE price=VALUES(price);