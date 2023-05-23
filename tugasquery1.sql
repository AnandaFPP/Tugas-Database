CREATE DATABASE tugas_query1

CREATE TABLE cars (
    id INT,
    brand VARCHAR(50),
    made_from VARCHAR(50),
    car_type VARCHAR(50),
    year_made VARCHAR(24)
);

CREATE TABLE cars_users (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    full_name VARCHAR(64) NOT NULL,
    gender VARCHAR(64) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(150),
    telephone VARCHAR(35)
);

CREATE TABLE workshops (
    id INT,
    wshop_name VARCHAR(60),
    Wshop_location VARCHAR(150),
    operational_hours VARCHAR(20),
    telephone VARCHAR(20)
);

INSERT INTO cars (id, brand, made_from, car_type, year_made) VALUES('1', 'BMW', 'Germany', 'Germany', '7 Series (G70)', '2022');