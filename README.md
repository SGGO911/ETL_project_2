# ETL_project_2

## **E**-xtract --Finding Data -- Where was the data from?

we  used three csv files:

* The Marshall Project: COVID Cases in Prisons **From** * [data.world](https://data.world/)

* Coronavirus (Covid-19) Data in the United States by state **From** * [Kaggle](https://www.kaggle.com/)

* Prison population **From** * [prisonpolicy](https://www.prisonpolicy.org/data/)


## **T**-ransform -- Data Cleanup & Analysis -- what did we do with it?

* extraction of data from three different csv sources

 - cleaning columns
 - renaming columns
 - reorganizing columns
 - dropped rows with missing data
 - changed the date format where necesary
 - created indexes on the 3 tables
 - sorted the columns
 - saved them in a new CSV file
 - 

## **L**-oad -- write the data into a database storage (relational or non-relational) -- why was this chosen?

* We used Postgres (SQL relational database) to write our data into database storage. We preferred to have a structural database, organized with tables, as this was easier to work with and sort out errors. Our three CSV files all contained State & Date for the same time period, and thus we saw an opportunity to create dependencies and a more interesting, sortable, and filterable database. 

* One of the issues that we had was that we had to use a combination of TWO primary keys to ensure that our data was properly related (State & Date). One CSV file had an extra "State"-- Federal. This had to be dropped in order to create functional dependencies. This is one of the difficulties with relational databases-- the data has to be consistent in input & meaning. Getting into the data, we began to understand why someone would choose to use one over another.
