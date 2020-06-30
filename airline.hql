
set hive.cli.print.current.db = true;

-- Create database
create database airline;
use airline;

-- Create airports_mod table
create table airports_mod (airport_id bigint, airport_name String, city String,country String, iata_code char(3), icao_code char(4), latitude double, longitude double, altitude bigint, timezone int, dst char(1), tz string )
row format delimited
fields terminated by ','
stored as textfile;

-- Create airlines table
create table airlines (airline_id bigint, airline_name string,alias string, iata_code char(2),icao_code char(3), callsign string, country string, active char(1))
row format delimited
fields terminated by ','
stored as textfile;

-- Create routes table
create table routes(airline_code char(3), airline_id bigint, source_airport char(4),source_airport_id bigint, dest_airport char(4), dest_airport_id bigint,codeshare char(1), stops int, equipment char(3))
row format delimited
fields terminated by ','
stored as textfile;

-- load table  airports_mod
load data inpath 'airports_mod.dat' overwrite into table airports_mod;

-- load table airlines
load data inpath 'Final_airlines' overwrite into table airlines;

-- load table routes
load data inpath 'routes.dat' overwrite into table routes;

set hive.exec.dynamic.partition.mode=nonstrict;
set hive.exec.dynamic.partition=true;

-- load table airports_by_country
INSERT OVERWRITE TABLE airports_by_country PARTITION(country) select mod.airport_id, mod.airport_name, mod.city ,mod.iata_code, mod.icao_code, mod.latitude, mod.longitude, mod.altitude, mod.timezone, mod.dst, mod.tz, mod.country from airports_mod mod DISTRIBUTE By country;

-- Find list of Airports operating in the Country India
select airport_name from airports_by_country where lower(country) = 'india';

-- Find the list of Airlines having zero stops
select distinct(a.airline_name) from routes r join airlines a on r.airline_id = a.airline_id where r.stops = 0;

-- List of Airlines operating with code share
select distinct(a.airline_name) from routes r join airlines a on r.airline_id = a.airline_id where upper(r.codeshare) = 'Y';

-- Which country (or) territory having highest Airports
select country as Country, count(airport_id) as Count from airports_mod group by country order by Count desc;
