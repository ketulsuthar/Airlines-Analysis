
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

