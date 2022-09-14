-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "olympic_data" (
    "id" serial   NOT NULL,
    "athlete_id" int   NOT NULL,
    "year" int   NOT NULL,
    "season" varchar(10)   NOT NULL,
    "sport" varchar   NOT NULL,
    "event" varchar   NOT NULL,
    "medal" varchar(10)   NOT NULL,
    "country" varchar   NOT NULL,
    CONSTRAINT "pk_olympic_data" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "athlete_data" (
    "athlete_id" int   NOT NULL,
    "sex" varchar(1)   NOT NULL,
    "age" int   NOT NULL,
    CONSTRAINT "pk_athlete_data" PRIMARY KEY (
        "athlete_id"
     )
);

CREATE TABLE "country_data" (
    "country" varchar   NOT NULL,
    "year" int   NOT NULL,
    "gdp" float   NOT NULL,
    "population" int   NOT NULL,
    CONSTRAINT "pk_country_data" PRIMARY KEY (
        "country","year"
     )
);

ALTER TABLE "olympic_data" ADD CONSTRAINT "fk_olympic_data_athlete_id" FOREIGN KEY("athlete_id")
REFERENCES "athlete_data" ("athlete_id");

ALTER TABLE "olympic_data" ADD CONSTRAINT "fk_olympic_data_year_country" FOREIGN KEY("year", "country")
REFERENCES "country_data" ("year", "country");

