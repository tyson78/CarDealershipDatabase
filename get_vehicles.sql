-- Q2: find all vehicles for a specific dealership

USE car_dealership_db;

SELECT vehicles.VIN, vehicle_year, price, SOLD, vehicle_description, inventory.dealership_id 
FROM vehicles
JOIN inventory
	ON vehicles.VIN = inventory.VIN
WHERE inventory.dealership_id = 2;
