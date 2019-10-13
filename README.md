

# ETL Project Plan: A-Choose Your Best Weather
## Team : Alli Vaughn, Amy Koldeway, Sarah Cross


## What are your data sources:
____________________________________________________
### Web Scraped Data: 
* [KVUE Allergy Calendar](https://kvue.com/allergy)

### API Pull => csv download (historical is not free)
* [OpenWeatherAPI](https://openweathermap.org/api)

## What Transformations:
### KVUE:
* Scrape Monthly Allergy Calendar data as PDFs 
* save each to html
* Saved to csv 
* Transformed & cleaned in Pandas

### Open Weather Data: 
* Pull csv ATX data for 2019 
* dates 
* temps
* pressure
* humidity
* wind speed
* others as necessary
* Transformed & cleaned in Pandas

## KVUE Scraping Process
* Each monthly allergen calendar was exported to PDF and then saved as HTML
* For each file, we then used Beautiful Soup to scrap the data.
    * Pull Month and Year from the page
    * Each calendar is a table with (generally) each td tag reprsenting a day
    * Loop through reach td tag and establish if this a day for the month be looking for appropriate data
    * If established is a day for the month, then add day to dictionary with allergens (if any)
* Once each file had been scraped, we saved the list of dictionary as a .csv file for data processing in pandas


## Where is data going to be loaded:
* postgres database because the  dataset is long and narrow and sql db are better for this shape.
