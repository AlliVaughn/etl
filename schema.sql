
CREATE TABLE "Hourly_Weather" (
    "hourly_weather_id" SERIAL  ,
    "date" DATE   ,
    "city" VARCHAR(255)   ,
    "lat" FLOAT   ,
    "lon" FLOAT   ,
    "temp_K" FLOAT   ,
    "temp_min_K" FLOAT   ,
    "temp_max_K" FLOAT  ,
    "pres_hPa" FLOAT  ,
    "humid_pct" FLOAT   ,
    "wind_mph" FLOAT   ,
    "wind_deg" FLOAT  ,
    "rain_mm" FLOAT   ,
    "snow_mm" FLOAT   ,
    "cloud_pct" FLOAT   ,
    "weather_type_id" INT  ,
    "temp_F" FLOAT   ,
    "temp_min_F" FLOAT   ,
    "temp_max_" FLOAT   ,
    "pres_atm" FLOAT   ,
    "rain_in" FLOAT   ,
    "snow_in" FLOAT   ,
    CONSTRAINT "pk_Hourly_Weather" PRIMARY KEY (
        "hourly_weather_id"
     )
);

CREATE TABLE "Weather_Type" (
    "weather_type_id" INT   ,
    "main" VARCHAR(255)   ,
    "description" VARCHAR(255)   ,
    CONSTRAINT "pk_Weather_Type" PRIMARY KEY (
        "weather_type_id"
     )
);

CREATE TABLE "Unit" (
    "unit_id" SERIAL   ,
    "parameter" VARCHAR(255)   ,
    "description" VARCHAR(255)   ,
    "standard" VARCHAR(255)   ,
    "metric" VARCHAR(255)  ,
    "imperial" VARCHAR(255)   ,
    CONSTRAINT "pk_Unit" PRIMARY KEY (
        "unit_id"
     )
);

ALTER TABLE "Hourly_Weather" ADD CONSTRAINT "fk_Hourly_Weather_weather_type_id" FOREIGN KEY("weather_type_id")
REFERENCES "Weather_Type" ("weather_type_id");

