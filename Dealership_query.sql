DROP database IF exists cardealership;

CREATE DATABASE cardealership;

USE cardealership;

CREATE TABLE dealerships (
dealership_id int not null auto_increment primary key,
name varchar(50),
address varchar(50),
phone varchar(12) 
);

INSERT INTO dealerships VALUES (null, 'Auto world', '10262 Nutty Butta Dr', '704-777-7875');
INSERT INTO dealerships VALUES (null, 'JLS used cars','35793 Sugar Creek Dr', 704-222-111);

CREATE TABLE vehicles (
vin int(20) not null primary key,
year int(4),
make varchar(20),
model varchar(20),
vehicleType varchar(20),
color varchar(20),
odometer int(20),
price decimal(10.2),
sold boolean
);

INSERT INTO vehicle VALUES ('888234', '2017', 'kia', 'soul', 'suv', 'green', '170000', '22000.00', true);vehicle
INSERT INTO vehicle VALUES ('888235', '2018', 'toyota', 'corolla', 'sedan', 'blue', '60000', '18000.00', false);
INSERT INTO vehicle VALUES ('888236', '2019', 'honda', 'civic', 'sedan', 'black', '50000', '19000.00', true);
INSERT INTO vehicle VALUES ('888237', '2020', 'ford', 'f-150', 'truck', 'red', '40000', '35000.00', true);
INSERT INTO vehicle VALUES ('888238', '2021', 'chevrolet', 'equinox', 'suv', 'silver', '30000', '28000.00', false);
INSERT INTO vehicle VALUES ('888239', '2022', 'nissan', 'altima', 'sedan', 'white', '20000', '22000.00', true);
INSERT INTO vehicle VALUES ('888240', '2020', 'bmw', 'x5', 'suv', 'gray', '25000', '55000.00', false);
INSERT INTO vehicle VALUES ('888241', '2016', 'audi', 'q7', 'suv', 'black', '80000', '38000.00', true);
INSERT INTO vehicle VALUES ('888242', '2023', 'mercedes-benz', 'e-class', 'sedan', 'green', '15000', '52000.00', false);
INSERT INTO vehicle VALUES ('888243', '2024', 'cheverolet', 'corvette_ZR1', 'Sport', 'ultra_blue', '20000', 156000, false);

CREATE TABLE inventory (
inventory_number int not null auto_increment primary key,
dealership_id int not null,
vin int(20) not null
);

CREATE TABLE sales_contract (
contract_id int not null auto_increment primary key,
date varchar(20),
first_name varchar(50),
last_name varchar(50),
email varchar(50),
vin int(20),
year int(4),
make varchar(20),
model varchar(20),
type varchar(20),
color varchar(20),
odometer int(20),
price decimal(10.2),
salestax_amount decimal(10.2),
total_price decimal(10.2),
processing_fee decimal(10.2),
recording_fee decimal(10.2),
finacing boolean,
monthly_payment decimal(10.2),

FOREIGN KEY (vin) references vehicles (vin) 
);

INSERT INTO sales_contract VALUES (null, '20230915', 'Jontez', 'Snider', 'jls3579@texas.com', 10112, 2022, 'Chevrolet', 'Corvette ZR1', 'coupe', 'blue', 735493, 85000.00, 0.10, 0.00, 300.00, 500.00, true, 2500.00);
INSERT INTO sales_contract VALUES (null, '20240420', 'Damian', 'jerez', 'dj322@outlook.com', 12345, 2020, 'Mercedes-Benz', 'S-Class', 'sedan', 'silver', 872113, 90000.00, 0.07, 0.00, 350.00, 650.00, false, 3200.00);



