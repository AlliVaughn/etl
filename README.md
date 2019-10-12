

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




## Where is data going to be loaded:
* postgres database because the  dataset is long and narrow and sql db are better for this shape.
