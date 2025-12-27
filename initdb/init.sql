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
('Turkish Coffee', 7.0),
('Caffe Latte', 10.0),
('Spanish Latte', 11.0),
('Cappuccino', 10.0),
('Americano', 9.0),
('Pistachio Latte', 12.0),
('Caramel Macchiato', 11.0),
('Mocha', 11.0),
('White Mocha', 11.0)
ON DUPLICATE KEY UPDATE price=VALUES(price);