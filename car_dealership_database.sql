CREATE DATABASE car_dealership_db;

USE car_dealership_db;

-- Table 1
CREATE TABLE dealerships (
    dealership_id INTEGER NOT NULL AUTO_INCREMENT,
    dealership_name VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL,
    phone VARCHAR(12) NOT NULL,
    PRIMARY KEY (dealership_id)
);

-- Table 2
CREATE TABLE vehicles (
    VIN INTEGER NOT NULL,
    vehicle_year INTEGER NOT NULL,
    vehicle_description VARCHAR(50) NOT NULL,
    price DOUBLE NOT NULL,
    SOLD VARCHAR(3) NOT NULL, -- YES/NO
    PRIMARY KEY (VIN)
);

-- Table 3 -- do we create inventory_id for this table?
CREATE TABLE inventory (
	inventory_id INTEGER NOT NULL AUTO_INCREMENT,
    dealership_id INTEGER NOT NULL,
    VIN INTEGER NOT NULL,
    PRIMARY KEY(inventory_id),
    FOREIGN	KEY(dealership_id) REFERENCES dealerships(dealership_id),
    FOREIGN KEY(VIN) REFERENCES vehicles(VIN)
);

-- Table 4
CREATE TABLE sales_contracts (
    sales_id INTEGER NOT NULL AUTO_INCREMENT,
    sales_date DATE NOT NULL,
    customer_name VARCHAR(50) NOT NULL,
    VIN INTEGER NOT NULL,
    PRIMARY KEY (sales_id),
    FOREIGN KEY(VIN) REFERENCES vehicles(VIN)
);

SELECT * FROM sales_contracts;


-- Table 5
CREATE TABLE lease_contracts (
    lease_id INTEGER NOT NULL AUTO_INCREMENT,
	lease_date DATE NOT NULL,
	customer_name VARCHAR(50) NOT NULL,
    VIN INTEGER NOT NULL,
    PRIMARY KEY(lease_id),
    FOREIGN KEY(VIN) REFERENCES vehicles(VIN)
);

-- Populate dealership table
TRUNCATE TABLE dealerships;
INSERT INTO dealerships (dealership_name, address, phone)
VALUES	('Tyson Dealership', '123 JaneDoe St New York', '030-007-6545'),
		('Kary Dealership', '456 Tempa Bay St Florida', '090-002-7585'),
        ('Alexis Dealership', '789 Maimi St Florida', '070-003-2535');

SELECT * FROM dealerships;

-- Populate vehicles table
TRUNCATE TABLE vehicles;
INSERT INTO vehicles (VIN, vehicle_year, vehicle_description, price, SOLD)
VALUES	('12345', '2010', 'Red Fort Mustang', '3000', 'YES'),
		('56789', '2020', 'Gray Civic Honda SUV', '6000', 'NO'),
        ('35352', '2023', 'Purple Ford Root Truck', '9000', 'NO');

SELECT * FROM vehicles;

-- populate inventory table
TRUNCATE TABLE inventory;
INSERT INTO inventory (dealership_id, VIN)
VALUES	(1, '12345'), 
		(2, '56789'),
        (3, '35352');
        
SELECT * FROM inventory;

-- populate sales_contracts
INSERT INTO sales_contracts (sales_date , customer_name, VIN)
VALUES	('2022-08-22', 'Paul', '12345'), 
		('2020-10-20', 'Slea', '56789');

SELECT * FROM sales_contracts;

INSERT INTO lease_contracts (lease_date, customer_name, VIN)
VALUES	('2023-07-30', 'Shankar', '35352');

SELECT * FROM lease_contracts;
