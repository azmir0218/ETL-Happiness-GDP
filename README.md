# ETL Project 2: Happiness and Global Cause of Death

## Project Proposal

For this project, our goal is to see if there is a correlation between a country’s happiness compared to the causes of death in said countries outside of natural diseases. Using the Kaggle datasets, world happiness dataset (2008-2017) and the causes of death dataset (2008-2020), we will use Pandas to transform the CSV files and SQL to load the joined file. These datasets were joined on the year and country. In order to use the data to investigate whether there is a correlation between a country’s happiness compared to the global cause of deaths, we must first analyze and bring the datasets together using the following steps: 

    • Extract: Indicate original data sources and how data was formatted
    • Transform: Explain what data cleaning or transformation was required
    • Load: Explain the final database, tables/collections, and why topic was chosen

The source data will include the World Happiness Report results paired with the Global Cause of the Deaths Other Than Diseases Report.

## Finding Data

Our project included two data sources extracted from Kaggle.

### DATA SOURCE #1
The first data source file selected was the World Happiness Report csv file retrieved from kaggle.com. This csv file includes the annual reports from each participating country from 2008 - 2017.  The data used to rank countries in each report is drawn from the Gallup World Poll. Metrics reported are as follows: (1) Country name, (2) Year, (3) Life Ladder, (4) Log GDP per capita, (5) Social support, (6) Healthy life expectancy at birth, (7) Freedom to make life choices, (8) Generosity, (9) Perceptions of corruption, (10) Positive affect, (11) Negative affect.
https://user-images.githubusercontent.com/89491352/145508469-998ec344-7793-41b9-8ba8-3227f3e49cb6.png

### DATA SOURCE #2
The second data source file selected was the Global Causes of Death other than Diseases csv file retrieved from kaggle.com. This csv file includes the number of deaths within each country for each year, in addition to, the cause of death such as conflict and terrorism, famine, pandemic, natural disaster, and other injuries from 1980 - 2020. Metrics reported are as follows: (1) Country name, (2) Year, (3) ISO_CODE, (4) Total # of Deaths, (5) Male POP, (6) Female POP, (7) Total POP, (8) GDP, and (9) GDP per capita (PCAP). 

## Data Cleanup & Analysis

#### 1)	Extract: 
    • We started with two original data sources located on Kaggle.com as csv files. 
    • Both files were extracted from Kaggle.com and downloaded to the computer as a 
      separate csv files and loaded in to Jupyter Notebook using Pandas. 
 
 Original file format details

    • World Happiness Report: from 2008-2020 with 12 columns and 1950 rows of data
    • Global Cause of Death from 1980-2017 with 10 columns and 36,860 rows of data

#### 2)	Transform: 
    • After each csv file was downloaded, they were imported into Pandas. Each file 
      included columns with lengthy titles and decimal places.
    • The data cleanup process included: (1) shortening of column titles in both files, 
      (2) formatting of column cells to reduce the number of decimal places, (3) renamed 
      the key record column to match in both tables

 Cleaned file format details

    • World Happiness Report: from 2008-2020 with 12 columns and 1950 rows of data
    • Global Cause of Death from 1980-2017 with 10 columns and 36,860 rows of data

#### 3)	Load: 
    • Upon completion of the data cleanup step, both files were prepped and ready for 
      load into SQL.
    • Each file possessed the common attribute of country and year. This common format 
      structure allowed for us to use a key record to create a relational database.
    • An inner join was executed in order to return all rows from both participating 
      files where the key record of one table is equal to the key record of the other 
      table. All null values were dropped with the execution of the inner join.

 Cleaned and loaded file format details
 
    • World Happiness Report: from 2008-2017 with 7 columns and 1,570 rows of data
    • Global Cause of Death from 2008-2017 with 6 columns and 9,700 rows of data

