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

* See Covid_Prisoner_Deaths Jupyter Notebook File & clean_merged.csv

* We used Postgres (SQL relational database) to write our data into database storage. We preferred to have a structural database, organized with tables, as this was easier to work with and sort out errors. Our three CSV files all contained State & Date for the same time period, and thus we saw an opportunity to create dependencies and a more interesting, sortable, and filterable database. 

* One of the issues that we had was that we had to use a combination of TWO primary keys to ensure that our data was properly related (State & Date). One of the biggest difficulties when we were working with with relational databases is how consistent the data has to be; one csv had an extra state category ('Federal') and some of the Dates were not exactly the same. Getting into the data, we began to understand why someone would choose to use one over another. Choosing between UNIQUE, multiple primary keys, foreign keys, and possibly DELETE CASCADE may have yielded better results if we had more time to restructure the data and make it more consistent. One date and state not matching up would create an error and make it difficult to move onto the next step.

Steps:
1. Connect to Postgres "prison" db
2. Save DF's to Postgres DB
3. Add primary key to "merged" table that contains all cleaned data
4. Use SQL Alchemy to Query DB