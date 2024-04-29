drop table campaign;
drop table contacts;
drop table subcategory;
drop table category;

CREATE TABLE category(
	category_id varchar(5) NOT NULL,
    category varchar(20) NOT NULL,
	PRIMARY KEY (category_id)
);

CREATE TABLE subcategory(
	subcategory_id varchar(8) NOT NULL,
	subcategory varchar(20) NOT NULL,
	PRIMARY KEY (subcategory_id)
);

CREATE TABLE contacts(
	contact_id int NOT NULL,
	first_name varchar(20) NOT NULL,
	last_name varchar(20) NOT NULL,
	email varchar(50) NOT NULL,
	PRIMARY KEY (contact_id)
);

CREATE TABLE campaign(
	cf_id int NOT NULL,
	contact_id int NOT NULL,
	company_name varchar(40) NOT NULL,
	description varchar(60) NOT NULL,
	goal float NOT NULL,
	pledged float NOT NULL,
	outcome varchar(10) NOT NULL,
	backers_count int NOT NULL,
	country varchar(2) NOT NULL,
	currency varchar(3) NOT NULL,
	launched_date varchar(10) NOT NULL,
    end_date varchar(10) NOT NULL,
    category_id varchar(5) NOT NULL,
    subcategory_id varchar(8) NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

SELECT * from campaign;
SELECT * from contacts;
SELECT * from category;
SELECT * from subcategory;

