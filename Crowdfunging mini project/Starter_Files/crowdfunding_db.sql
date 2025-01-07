-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
drop table if exists contacts;
drop table if exists category;
drop table if exists subcategory;
drop table if exists campaign;

CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar   NOT NULL,
    "description" varchar   NOT NULL,
    "goal" varchar   NOT NULL,
    "pledged" varchar   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar   NOT NULL,
    "subecategory_id" varchar   NOT NULL
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL
);

CREATE TABLE "category" (
    "category_id" varchar   NOT NULL,
    "category" varchar   NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar   NOT NULL,
    "subcategory" varchar   NOT NULL
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subecategory_id" FOREIGN KEY("subecategory_id")
REFERENCES "subcategory" ("subcategory_id");

Select * From campaign;
Select * From category;
Select * From subcategory;
Select * From contacts;