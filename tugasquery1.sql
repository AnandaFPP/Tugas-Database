CREATE DATABASE tugas_query1

CREATE TABLE cars (
    id INT GENERATED ALWAYS AS IDENTITY,
    brand VARCHAR(50) NOT NULL,
    made_from VARCHAR(50) NOT NULL,
    car_type VARCHAR(50) NOT NULL,
    year_made INT,
    prices VARCHAR(64) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE car_owners (
    id INT GENERATED ALWAYS AS IDENTITY,
    full_name VARCHAR(64) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(64) NOT NULL,
    date_of_birth VARCHAR(30) NOT NULL,
    email VARCHAR(150),
    telephone VARCHAR(35),
    PRIMARY KEY(id),
);

CREATE TABLE workshops (
    id INT GENERATED ALWAYS AS IDENTITY,
    car_owners_id INT,
    cars_id INT,
    repair_reason VARCHAR(200),
    PRIMARY KEY (id),
    FOREIGN KEY (car_owners_id) REFERENCES car_owners(id),
    FOREIGN KEY (cars_id) REFERENCES cars(id)
);

INSERT INTO cars (brand, made_from, car_type, year_made, prices)
VALUES('Mercedes-Benz', 'Germany', 'GLC Coupe', 2022, '$52,500'), ('BMW', 'Germany', 'X1', 2017, '$34,100'), ('Toyota', 'Japan', 'Landcruiser', 2017, '$70,840'), ('Honda', 'Japan', 'NSX', 2022, '$397,210'), ('Nissan', 'Japan', 'Skyline R34', 1998, '$399,668');

INSERT INTO car_owners (full_name, age, gender, date_of_birth, email, telephone, cars_id)
VALUES('Matthieu Lengyel', 24, 'Male', '14 April 1999', 'matthieulengyel@gmail.com', 081253648878, 5), ('Abraham Vorkays', 25, 'Male', '27 Juli 1997', 'abrahamvorkays@gmail.com', 081277568843, 2), ('Angeline Aensley', 28, 'Female', '13 Februari 1995', 'angelineaensley@yahoo.com', 081231231234, 4);

INSERT INTO car_owners (full_name, age, gender, date_of_birth, telephone, cars_id)
VALUES('Robin Khaaled', 18, 'Male', '6 Januari 2005', 081236575532, 1);

INSERT INTO car_owners (full_name, age, gender, date_of_birth, email, cars_id)
VALUES('Keysa Graham', 23, 'Female', '29 Mei 2000', 'keysagraham@rocketmail.com', 3);

INSERT INTO workshops (car_owners_id, cars_id, repair_reason)
VALUES(1, 5, 'Noisy Engine, Oil pump failure'), (2, 3, 'Swerving while breaking, Rattling from rear'), (3, 4, 'Gearbox problems, Headlight failure'), (4, 1, 'Power loss, Starting problems'), (5, 2, 'Headlight failure, Rattling from rear');

