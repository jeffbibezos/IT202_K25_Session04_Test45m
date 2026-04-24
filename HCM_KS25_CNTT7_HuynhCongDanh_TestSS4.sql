CREATE DATABASE ShopManager;

USE ShopManager;

CREATE TABLE Categries (
	category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL
);

CREATE TABLE Products (
	product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50) NOT NULL,
    price BIGINT NOT NULL,
    stock INT NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES Categries(category_id)
);

INSERT INTO Categries (category_name)
VALUES 
('Điện tử'),
('Thời trang');

INSERT INTO Products (product_name, price, stock, category_id)
VALUES 
('IPhone 15', 25000000, 10, 1),
('Samsung S23', 20000000, 5, 1),
('Áo sơ mi nam', 500000, 50, 2),
('Giày thể thao', 1200000, 20, 2);

UPDATE Products SET price = 26000000 WHERE (product_id = 1);

UPDATE Products SET stock = 10 WHERE (category_id = 1);

DELETE FROM Products WHERE (product_id = 4);

SET SQL_SAFE_UPDATES = 0;
DELETE FROM Products WHERE (price < 1000000);

SELECT * FROM Products;

SELECT * FROM Products WHERE (stock > 15);

SELECT * FROM Products WHERE (price >= 1000000 and price <= 25000000);

SELECT * FROM Products WHERE (product_name <> 'IPhone 15' and stock > 0);

SELECT * FROM Products WHERE (category_id = 1 and price > 500000);
