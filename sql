CREATE DATABASE ecoshop;

USE ecoshop;

CREATE TABLE Products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL
);

INSERT INTO Products
(product_id, product_name, category, price, stock_quantity)
VALUES
('P101', 'Bamboo Toothbrush', 'Personal Care', 80.00, 100),
('P102', 'Cotton Tote Bag', 'Accessories', 150.00, 50),
('P103', 'Steel Water Bottle', 'Kitchen', 350.00, 75);

SELECT * FROM Products;

DESCRIBE Products;

USE ecoshop;

ALTER TABLE Products
ADD COLUMN material_type VARCHAR(50);

UPDATE Products
SET material_type = CASE product_id
    WHEN 'P101' THEN 'Bamboo'
    WHEN 'P102' THEN 'Cotton'
    WHEN 'P103' THEN 'Stainless Steel'
END;

SELECT * FROM Products;
