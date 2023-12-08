CREATE DATABASE car_dealership_db;

-- Table 1
CREATE TABLE `dealerships` (
    `dealership_id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `address` VARCHAR(50) NOT NULL,
    `phone` VARCHAR(12) NOT NULL,
    PRIMARY KEY (`dealership_id`)
);

-- Table 2
CREATE TABLE `vehicles` (
    `VIN` INTEGER NOT NULL,
    `Year` INTEGER NOT NULL,
    `Price` DOUBLE NOT NULL,
    `SOLD` VARCHAR(10) NOT NULL,
    PRIMARY KEY (`VIN`)
);

-- Table 3
CREATE TABLE `inventory` (
    `dealership_id` INTEGER NOT NULL,
    `VIN` INTEGER NOT NULL
);

-- Table 4
CREATE TABLE `sales_contracts` (
    `sales_id` INTEGER NOT NULL AUTO_INCREMENT,
    `buyerName` VARCHAR(50) NOT NULL,
    `sales_date` VARCHAR(10) NOT NULL,
    `VIN` INTEGER NOT NULL,
    PRIMARY KEY (`sales_id`)
);

-- Table 5
CREATE TABLE `lease_contracts` (
    `lease_id` INTEGER NOT NULL AUTO_INCREMENT,
	`buyerName` VARCHAR(50) NOT NULL,
    `lease_date` VARCHAR(10) NOT NULL,
    `VIN` INTEGER NOT NULL,
    PRIMARY KEY (`lease_id`)
);

-- Step 3: Populate tables
INSERT INTO dealerships (dealership_id, name, address, phone)
VALUES('123', 'Tyson Dealership', '123 JaneDoe St New York', '030-0076545');

SELECT * FROM dealerships;

INSERT INTO vehicles (VIN, Year, Price, SOLD)
VALUES('567', '2010', '3000', 'YES');

