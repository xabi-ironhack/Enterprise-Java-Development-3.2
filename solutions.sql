
-- EXERCISE 1 --

CREATE TABLE Author (
    id INT NOT NULL AUTO_INCREMENT,
    author_name VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE Book (
    id INT NOT NULL AUTO_INCREMENT,
    id_author INT,
    PRIMARY KEY (id_book),
    FOREIGN KEY (id_author)
        REFERENCES Author (id)
);

CREATE TABLE Stats (
    id_book INT NOT NULL,
    name_book VARCHAR(255),
    word_count VARCHAR(255),
    views VARCHAR(255),
    PRIMARY KEY (id_book),
    FOREIGN KEY (id_book)
        REFERENCES Book (id)
);

-- EXERCISE 2 --

CREATE TABLE customer (
    id INT NOT NULL AUTO_INCREMENT,
    customer_name VARCHAR(255),
    status ENUM('Silver', 'Gold', 'None') NULL,
    PRIMARY KEY (id)
);

CREATE TABLE aircraft (
    id INT NOT NULL AUTO_INCREMENT,
    aircraft_model VARCHAR(255),
    aircraft_seats INT,
    PRIMARY KEY (id)
);

CREATE TABLE flight (
    id INT NOT NULL AUTO_INCREMENT,
    flight_name VARCHAR(255),
    customer_id INT,
    aircraft_id INT,
    flight_mileage INT,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id)
        REFERENCES customer (id),
    FOREIGN KEY (aircraft_id)
        REFERENCES aircraft (id)
);

  INSERT INTO customer (customer_name, status) VALUES ("Agustine Riviera", "Silver");
  INSERT INTO customer (customer_name, status) VALUES ("Alaina Sepulvida", "None");
  INSERT INTO customer (customer_name, status) VALUES ("Agustine Riviera", "Silver");
  INSERT INTO customer (customer_name, status) VALUES ("Tom Jones", "Gold");
  INSERT INTO customer (customer_name, status) VALUES ("Sam Rio", "None");
  INSERT INTO customer (customer_name, status) VALUES ("Jessica James", "Silver");
  INSERT INTO customer (customer_name, status) VALUES ("Christian Janco", "Silver");
  INSERT INTO aircraft (aircraft_model, aircraft_seats) VALUES ("Boeing 747", "400");
  INSERT INTO aircraft (aircraft_model, aircraft_seats) VALUES ("Airbus A330", "236");
  INSERT INTO aircraft (aircraft_model, aircraft_seats) VALUES ("Boeing 777", "264");

  INSERT INTO flight (flight_name, customer_id, aircraft_id, flight_mileage) VALUES
	("DL143", (SELECT customer_id FROM customer where customer_name="Agustine Riviera"),
    (SELECT aircraft_id FROM aircraft WHERE aircraft_model = "Boeing 747"), 135);

 INSERT INTO flight (flight_name, customer_id, aircraft_id, flight_mileage) VALUES
	("DL143", (SELECT customer_id FROM customer where customer_name="Sam Rio"),
    (SELECT aircraft_id FROM aircraft WHERE aircraft_model = "Boeing 747"), 135);

    INSERT INTO flight (flight_name, customer_id, aircraft_id, flight_mileage) VALUES
	("DL143", (SELECT customer_id FROM customer where customer_name="Jessica James"),
    (SELECT aircraft_id FROM aircraft WHERE aircraft_model = "Boeing 747"), 135);

        INSERT INTO flight (flight_name, customer_id, aircraft_id, flight_mileage) VALUES
	("DL122", (SELECT customer_id FROM customer where customer_name="Agustine Riviera"),
    (SELECT aircraft_id FROM aircraft WHERE aircraft_model = "Airbus A330"), 4370);

       INSERT INTO flight (flight_name, customer_id, aircraft_id, flight_mileage) VALUES
	("DL122", (SELECT customer_id FROM customer where customer_name="Alaine Sepulvida"),
    (SELECT aircraft_id FROM aircraft WHERE aircraft_model = "Airbus A330"), 4370);

     INSERT INTO flight (flight_name, customer_id, aircraft_id, flight_mileage) VALUES
	("DL122", (SELECT customer_id FROM customer where customer_name="Tom Jones"),
    (SELECT aircraft_id FROM aircraft WHERE aircraft_model = "Airbus A330"), 4370);

     INSERT INTO flight (flight_name, customer_id, aircraft_id, flight_mileage) VALUES
	("DL122", (SELECT customer_id FROM customer where customer_name="Jessica James"),
    (SELECT aircraft_id FROM aircraft WHERE aircraft_model = "Airbus A330"), 4370);

    INSERT INTO flight (flight_name, customer_id, aircraft_id, flight_mileage) VALUES
	("DL53", (SELECT customer_id FROM customer where customer_name="Tom Jones"),
    (SELECT aircraft_id FROM aircraft WHERE aircraft_model = "Boeing 777"), 2078);

INSERT INTO flight (flight_name, customer_id, aircraft_id, flight_mileage) VALUES
	("DL222", (SELECT customer_id FROM customer where customer_name="Tom Jones"),
    (SELECT aircraft_id FROM aircraft WHERE aircraft_model = "Boeing 777"), 1765);

INSERT INTO flight (flight_name, customer_id, aircraft_id, flight_mileage) VALUES
	("DL37", (SELECT customer_id FROM customer where customer_name="Sam Rio"),
    (SELECT aircraft_id FROM aircraft WHERE aircraft_model = "Boeing 757"), 531);


-- EXERCISE 4 --
SELECT
    AVG(flight_mileage)
FROM
    flight;

-- EXERCISE 5 --
SELECT
    AVG(aircraft_seats)
FROM
    aircraft;

-- EXERCISE 6 --
SELECT
    c.status, AVG(f.flight_mileage)
FROM
    customer c
        LEFT JOIN
    flight f ON c.id = f.customer_id
GROUP BY c.status;

-- EXERCISE 7 --
SELECT
    c.status, MAX(f.flight_mileage)
FROM
    customer c
        LEFT JOIN
    flight f ON c.id = f.customer_id
GROUP BY c.status;

-- EXERCISE 8 --
SELECT
    COUNT(*)
FROM
    aircraft
WHERE
    aircraft_model LIKE 'Boeing%';

-- EXERCISE 9 --
SELECT
    *
FROM
    flight
WHERE
    flight_mileage BETWEEN 300 AND 2000;

  -- EXERCISE 10 --
SELECT
    c.status, AVG(f.flight_mileage)
FROM
    customer c
        LEFT JOIN
    flight f ON c.id = f.customer_id
GROUP BY c.status;

 -- EXERCISE 11 --
SELECT
    c.status, MAX(a.aircraft_model)
FROM
    aircraft a
        INNER JOIN
    flight f ON a.id = f.aircraft_id
        INNER JOIN
    customer c ON f.customer_id = c.id
WHERE
    c.status = 'Gold'
GROUP BY c.status;




