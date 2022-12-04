-- Task1
CREATE TABLE `lesson_1`.`product_list` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `ProductName` VARCHAR(45) NOT NULL,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `ProductCount` INT NOT NULL,
  `Price` DECIMAL NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `ProductName_UNIQUE` (`ProductName` ASC) VISIBLE);
  
INSERT INTO lesson_1.product_list (ProductName, Manufacturer, ProductCount, Price)
VALUES 
  ('IPhone X', 'Apple', '3', '75000'),
  ('IPhone 8', 'Apple', '2', '51000'),
  ('Galaxy S9', 'Samsung', '2', '56000'),
  ('Galaxy S8', 'Samsung', '1', '41000'),
  ('P20 Pro', 'Huawei', '5', '36000');
  
  SELECT *
  FROM lesson_1.product_list;
  
-- Task2
  SELECT ProductName, Manufacturer, Price 
  FROM lesson_1.product_list
  WHERE ProductCount > 2;
  
-- Task3
  SELECT *
  FROM lesson_1.product_list
  WHERE Manufacturer = "Samsung";
  
-- Task4
  -- 4.1
  SELECT *
  FROM lesson_1.product_list
  WHERE ProductName LIKE "%Iphone%";
  
  -- 4.2
  SELECT *
  FROM lesson_1.product_list
  WHERE ProductName LIKE "%Galaxy%";
  
  -- 4.3
  SELECT *
  FROM lesson_1.product_list
  WHERE ProductName RLIKE '[0-9]';
  
  -- 4.4
  SELECT *
  FROM lesson_1.product_list
  WHERE ProductName LIKE "%8%";