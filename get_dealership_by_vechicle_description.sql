-- Q5: Find all the dealerships that have a certain car type (i.e. Red Ford Mustang

USE car_dealership_db;

SELECT inventory.dealership_id, dealership_name, address, phone, vehicle_description 
FROM inventory
JOIN dealerships
	ON inventory.dealership_id = dealerships.dealership_id
JOIN vehicles
	ON inventory.VIN = vehicles.VIN
WHERE vehicle_description LIKE '%Red Fort Mustang%'; 
