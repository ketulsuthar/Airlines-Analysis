# Airlines-Analysis

### Problem Statement <br/>
A. Find list of Airports operating in the Country India <br/>
B. Find the list of Airlines having zero stops <br/>
C. List of Airlines operating with code share <br/>
D. Which country (or) territory having highest Airports <br/>
E. Find the list of Active Airlines in United state <br/>

### Dataset
[Airports Mod](./airports_mod.dat)<br/>
[Airlines](./Final_airlines) <br/>
[Routes](./routes.dat)

### Dataset Description
In this use case there are 3 data sets. <br/>
Final_airlines, routes.dat, airports_mod.dat

#### Air Ports data set i.e airports_mod.dat <br/>
It contains the following fields <br/>
Airport ID : Unique OpenFlights identifier for this airport. <br/>
Name : Name of airport. May or may not contain the City name. <br/>
City : Main city served by airport. May be spelled differently from Name. <br/>
Country :Country or territory where airport is located. <br/>
IATA/FAA : 3-letter FAA code, for airports located in Country "United States of America".<br/>
3-letter IATA code, for all other airports.
Blank if not assigned. <br/>
ICAO : 4-letter ICAO code. <br/>
Blank if not assigned. <br/>
Latitude : Decimal degrees, usually to six significant digits. Negative is South, positive is North. <br/>
Longitude : Decimal degrees, usually to six significant digits. Negative is West, positive is East. <br/>
Altitude : In feet. <br/>
Timezone : Hours offset from UTC. Fractional hours are expressed as decimals, eg. India is 5.5. <br/>
DST : Daylight savings time. One of E (Europe), A (US/Canada), S (South America), O (Australia), Z (NewZealand), N (None) or U (Unknown). See also: Help: Time <br/>
Tz database time Timezone in "tz" (Olson) format, eg. "America/Los_Angeles". zone <br/>

#### Air Lines Data set:
It contains the following fields:<br/>
Airline Unique OpenFlights identifier for this airline. ID <br/>
Name Name of the airline. <br/>
Alias Alias of the airline. For example, All Nippon Airways is commonly known as "ANA". <br/>
IATA 2-letter IATA code, if available. <br/>
ICAO 3-letter ICAO code, if available. <br/>
Callsign Airline callsign. <br/>
Country Country or territory where airline is incorporated. <br/>
Active "Y" if the airline is or has until recently been operational, "N" if it is defunct. This field is not reliable: in particular, major airlines that stopped flying long ago, but have not had their IATA code reassigned (eg. Ansett/AN), will incorrectly show as "Y". <br/>

#### Routes Data set i.e routes.dat
It contains the following fields <br/>
Airline : 2-letter (IATA) or 3-letter (ICAO) code of the airline. <br/>
Airline ID : Unique OpenFlights identifier for airline (see Airline). <br/>
Source airport : 3-letter (IATA) or 4-letter (ICAO) code of the source airport. <br/>
Source airport ID : Unique OpenFlights identifier for source airport (see Airport) <br/>
Destination airport : 3-letter (IATA) or 4-letter (ICAO) code of the destination airport. <br/>
Destination airport ID Unique OpenFlights identifier for destination airport (see Airport)
Codeshare : "Y" if this flight is a codeshare (that is, not operated by Airline, but another carrier), empty otherwise. <br/>
Stops : Number of stops on this flight ("0" for direct) <br/>
Equipment  : 3-letter codes for plane type(s) generally used on this flight, separated by spaces.