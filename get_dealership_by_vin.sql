-- Q4: Find the dealership where a certain car is located, by VIN

USE car_dealership_db;

SELECT * FROM dealerships
JOIN inventory 
	ON dealerships.dealership_id = inventory.dealership_id
WHERE inventory.VIN = '12345';