
-- create table prison_covid from cleaned_merged.csv--
CREATE TABLE prison_covid(
State VARCHAR,
Date DATE,
Number_of_Cases INT,
Number_of_deaths INT,
Cumulative_Prisoner_Deaths FLOAT,
Total_Prisoner_Cases FLOAT,
Total_Prisoner_Deaths FLOAT);

SELECT * FROM prison_covid

-- create table deaths
CREATE TABLE deaths(
State VARCHAR,
Date DATE,
Cumulative_Prisoner_Deaths FLOAT);

--create table prison--
CREATE TABLE prison(
State VARCHAR,
Date DATE,
Total_Prisoner_Cases FLOAT,
Total_Prisoner_Deaths FLOAT);

-- create table states--
CREATE TABLE states(
State VARCHAR,
Date DATE,
Number_of_Cases INT,
Number_of_deaths INT);
