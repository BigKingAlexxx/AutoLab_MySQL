CREATE TABLE sensor_data (
	SensorID varchar(255),
	Zeit bigint UNSIGNED,
    Temperatur float,
    Luftdruck float,
    Luftfeuchtigkeit float,
    CO2 int,
    TVOC int
);

select * from sensor_data;

SELECT FROM_UNIXTIME(Zeit / 1000, '%d.%m.%Y – %H:%i:%s') as Zeit, Temperatur, Luftdruck, Luftfeuchtigkeit, CO2, TVOC from sensor_a;

TRUNCATE TABLE sensor_data;

DROP TABLE sensor_data;

SELECT
  from_unixtime(Zeit / 1000) as time_sec,
  Temperatur as value
FROM sensor_data
ORDER BY time_sec ASC;

select * from sensor1;

SELECT
  from_unixtime(Zeit / 1000, '%d.%m.%Y – %H:%i:%s') as time_sec,
  Temperatur as Temperatur
FROM sensor_data
WHERE SensorID = 'LI008'
ORDER BY time_sec ASC;

