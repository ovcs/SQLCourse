CREATE DATABASE lesson_2;

-- Task1
CREATE TABLE lesson_2.sales
(
  `Id` INT NOT NULL AUTO_INCREMENT,
  `order_date` DATE NOT NULL,
  `count_product` INT NOT NULL,
  PRIMARY KEY (`Id`)
  );
  
INSERT INTO lesson_2.sales (order_date, count_product)
VALUES 
  ('2022-01-01', '156'),
  ('2022-01-02', '180'),
  ('2022-01-03', '21'),
  ('2022-01-04', '124'),
  ('2022-01-05', '341');

-- Task2
SELECT Id AS "ID заказа",
CASE
	WHEN count_product < 100 
		THEN 'Маленький заказ'
    WHEN count_product BETWEEN 100 AND 300 
		THEN 'Средний заказ'
    WHEN count_product > 300 
		THEN 'Большой заказ'
    ELSE "Не указана"
END AS "Тип заказа"
FROM lesson_2.sales;

-- Task3
CREATE TABLE lesson_2.orders
(
  `Id` INT NOT NULL AUTO_INCREMENT,
  `employee_id` VARCHAR(45),
  `amount` DECIMAL NULL,
  `order_status` VARCHAR(45),
  PRIMARY KEY (`Id`)
  );
  
INSERT INTO lesson_2.orders (employee_id, amount, order_status)
VALUES 
  ('e03', '15.00', 'OPEN'),
  ('e01', '25.50', 'OPEN'),
  ('e05', '100.70', 'CLOSED'),
  ('e02', '22.18', 'OPEN'),
  ('e04', '9.50', 'CANCELLED');

SELECT employee_id, amount, 
CASE
	WHEN order_status = 'OPEN'  
		THEN 'Order is in open state'
    WHEN order_status = 'CLOSED'
		THEN 'Order is closed'
    WHEN order_status = 'CANCELLED'
		THEN 'Order is cancelled'
    ELSE 'Null'
END AS "full_order_status"
FROM lesson_2.orders;

-- Task4
# 0 - это число, обозначанющее пустое количество
# null - пустая ссылка на объект
