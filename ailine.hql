
set hive.cli.print.current.db = true;

-- Create database
create database airline;
use airline;

-- Create airports_mod table
create external table airports_mod (airport_id bigint, airport_name String, city String, iata_code char(3), icao_code char(4), latitude double, longitude double, altitude bigint, timezone int, dst char(1), tz string )
row format delimited
fields terminated by ','
stored as textfile
location '/user/edureka_85838/airports_mod';

