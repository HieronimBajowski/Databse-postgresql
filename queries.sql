--Tabel Locations

SELECT * FROM locations;

SELECT name, latitude, longitude
FROM locations
WHERE latitude > 50;

SELECT name, latitude, longitude
FROM locations
WHERE longitude BETWEEN 0 AND 20;


--Tabel weather

SELECT date, temperature, location_id
FROM weather
WHERE temperature > 30;

SELECT AVG(humidity) AS avg_humidity
FROM weather
WHERE location_id = 1;

SELECT date, temperature
FROM weather
WHERE location_id = 5
ORDER BY temperature ASC
LIMIT 1;


--Tabel weather_statisctics

SELECT location_id, days_rainy
FROM weather_statistics
WHERE days_rainy > 50;

SELECT location_id, days_sunny
FROM weather_statistics
ORDER BY days_sunny DESC
LIMIT 1;

SELECT AVG(days_above_25c) AS avg_days_above_25c
FROM weather_statistics;


--Tabels locations and weather

SELECT l.name AS city, w.date, w.temperature, w.humidity
FROM weather w
INNER JOIN locations l ON w.location_id = l.id;

SELECT l.name AS city, w.date, w.temperature
FROM weather w
INNER JOIN locations l ON w.location_id = l.id
WHERE w.temperature > 35;

SELECT l.name AS city, AVG(w.temperature) AS avg_temperature
FROM weather w
INNER JOIN locations l ON w.location_id = l.id
GROUP BY l.name;


--Tabels locations and weather_statisctics

SELECT l.name AS city, ws.days_rainy
FROM weather_statistics ws
INNER JOIN locations l ON ws.location_id = l.id
ORDER BY ws.days_rainy DESC
LIMIT 1;

SELECT l.name AS city, ws.days_below_0c
FROM weather_statistics ws
INNER JOIN locations l ON ws.location_id = l.id
WHERE ws.days_below_0c > 30;


--Tabels locations, weather and weather_statisctics

SELECT l.name AS city, w.date, w.cloud_coverage, ws.days_rainy
FROM weather w
INNER JOIN locations l ON w.location_id = l.id
INNER JOIN weather_statistics ws ON l.id = ws.location_id
WHERE w.cloud_coverage > 50;

SELECT l.name AS city, AVG(w.humidity) AS avg_humidity, AVG(w.temperature) AS avg_temperature
FROM weather w
INNER JOIN locations l ON w.location_id = l.id
INNER JOIN weather_statistics ws ON l.id = ws.location_id
WHERE ws.days_sunny > 20
GROUP BY l.name;
