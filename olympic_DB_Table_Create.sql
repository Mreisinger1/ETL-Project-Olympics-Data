-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Olympic_Data" (
    "ID" serial   NOT NULL,
    "Athlete_ID" int   NOT NULL,
    "Year" int   NOT NULL,
    "Season" varchar(10)   NOT NULL,
    "Sport" varchar   NOT NULL,
    "Event" varchar   NOT NULL,
    "Medal" varchar(10)   NOT NULL,
    CONSTRAINT "pk_Olympic_Data" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Athlete_Data" (
    "Athlete_ID" int   NOT NULL,
    "Sex" varchar(1)   NOT NULL,
    "Age" int   NOT NULL,
    "Country" varchar   NOT NULL,
    CONSTRAINT "pk_Athlete_Data" PRIMARY KEY (
        "Athlete_ID"
     )
);

CREATE TABLE "Country_Data" (
    "Country" varchar   NOT NULL,
    "Year" int   NOT NULL,
    "GDP" float   NOT NULL,
    "Population" int   NOT NULL,
    CONSTRAINT "pk_Country_Data" PRIMARY KEY (
        "Country"
     )
);

ALTER TABLE "Olympic_Data" ADD CONSTRAINT "fk_Olympic_Data_Athlete_ID" FOREIGN KEY("Athlete_ID")
REFERENCES "Athlete_Data" ("Athlete_ID");

ALTER TABLE "Athlete_Data" ADD CONSTRAINT "fk_Athlete_Data_Country" FOREIGN KEY("Country")
REFERENCES "Country_Data" ("Country");

