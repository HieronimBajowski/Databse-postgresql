CREATE TABLE locations (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    latitude DECIMAL(10, 6) NOT NULL,
    longitude DECIMAL(10, 6) NOT NULL
);

CREATE TABLE weather (
    id SERIAL PRIMARY KEY,
    location_id INT REFERENCES locations(id),
    date DATE NOT NULL,
    temperature DECIMAL(5, 2),
    humidity INT,
    precipitation DECIMAL(5, 2),
    cloud_coverage INT
);

CREATE TABLE weather_statistics (
    id SERIAL PRIMARY KEY,
    location_id INT REFERENCES locations(id),
    days_rainy INT,
    days_sunny INT,
    days_above_25c INT,
    days_below_0c INT
);
