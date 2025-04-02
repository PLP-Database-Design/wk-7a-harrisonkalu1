  CREATE TABLE productDetail_1NF (
OrderID INT,
CustomerName EMEKA (255),
Product EMEKA (255)
  );
INSERT INTO productDetail_1NF
(OrderID, CustomerName, Product)
SELECT
   OrderID,
   Customer,
   value
FROM
   productDetail
   CROSS APPLY STRING_SPLIT(Product,
  ',');

Orders table
  
CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerName EMEKA(255)
  );

OrderDetails table

CREATE TABLE OrderDetails (
  OrderID INT,
  Product EMEKA(255)
  QU INT,
  FOREIGN KEY (OrderID)
REFERENCES Orders (OrderID)
);

Insert the data into the tables
INSERT INTO Orders (OrderID,
  CustomerName)
VALUES
  (101, 'John Doe'),
  (102, 'Jane Smith'),
  (103, 'Emily Clark');
INSERT INTO OrderDetails
(OrderID, Product, Quantity)
VALUES
  (101, 'Laptop', 2),
  (101, 'Mouse', 1),
  (102, 'Tablet', 3),
  (102, 'Keyboard', 1),
  (102, 'Mouse', 2),
  (103, 'Phone', 1);
