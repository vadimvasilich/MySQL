DROP TABLE IF EXISTS cars;
CREATE TABLE cars
(
	id INT NOT NULL PRIMARY KEY,
    name_marka VARCHAR(45),
    cost INT
);

INSERT cars
VALUES
	(1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
	(5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);
    
SELECT * FROM cars;

-- 1. Создайте представление, в которое попадут автомобили стоимостью до 25 000 долларов
CREATE VIEW InexpensivelyCars AS 
SELECT * FROM cars 
WHERE cost < 25000;

SELECT * FROM InexpensivelyCars;

-- 2. Изменить в существующем представлении порог для стоимости: 
-- пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW)

ALTER VIEW InexpensivelyCars AS 
SELECT * FROM cars 
WHERE cost < 30000
ORDER BY cost;

-- 3. Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди” (аналогично)
CREATE VIEW vag AS 
SELECT name_marka as `Марка авто`, cost as `Цена`
FROM cars 
WHERE name_marka = "Skoda" OR name_marka = "Audi";

SELECT * FROM vag;
