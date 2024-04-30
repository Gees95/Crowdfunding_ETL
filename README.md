# Crowdfunding_ETL Project

**Overview**

This repository contains the materials for the Crowdfunding ETL (Extract, Transform, Load) project, designed to demonstrate the construction of a robust ETL pipeline using Python and Pandas. The project focuses on extracting data from Excel files, transforming it through various methods (including regular expressions and dictionary manipulations), and loading the transformed data into PostgreSQL for further analysis.

**Tools and Technologies**

Python: Primary programming language used.

	@@ -19,41 +18,29 @@ Regular Expressions: Utilized for data extraction and cleaning.

QuickDBD: Tool for designing and visualizing the database schema.

**Final Deliverables**

**DataFrames and CSV Exports**

Category and Subcategory DataFrames: These DataFrames categorize the crowdfunding projects and their respective subcategories. Each category and subcategory is assigned a unique identifier (e.g., "cat1", "subcat1"), allowing for more efficient data management and referencing. The DataFrames are exported as category.csv and subcategory.csv. More about DataFrame operations can be found in the Pandas DataFrame documentation.

Campaign DataFrame: This DataFrame consolidates detailed information about each crowdfunding campaign, including financial goals, pledges received, and campaign outcomes. It links to the categories and subcategories via unique identifiers to maintain relational integrity. This is exported as campaign.csv. For details on merging and managing DataFrame relations, see the Pandas merge documentation.
Contacts DataFrame: Derived from the contacts.xlsx file, this DataFrame is structured through either dictionary methods or regular expressions to split contact names into first and last names, standardize formatting, and prepare for database insertion. The final cleaned DataFrame is saved as contacts.csv.

**Database Schema and ERD**

Entity Relationship Diagram (ERD): The ERD provides a visual representation of the database structure, illustrating how the tables (derived from the CSV files) interconnect through primary and foreign keys. Tools like QuickDBD offer an intuitive way to create ERDs and can be explored further at QuickDBD.

SQL Database Schema: Using the ERD as a blueprint, the SQL schema (crowdfunding_db_schema.sql) is meticulously crafted to define table structures, data types, constraints, and relationships in the PostgreSQL database. This schema ensures the database is accurately prepared to handle the complexities of the crowdfunding data. Guidelines on SQL schema definitions can be accessed through the PostgreSQL Documentation.

**Data Verification and Analysis**

SQL Table Creation: Once the schema is applied, SQL tables are created in the PostgreSQL database. This setup is crucial for ensuring the data imported from the CSV files adheres to the defined structures and relationships.
Data Import into PostgreSQL: CSV files are imported into their respective tables in the database, a process that transforms the flat-file data into a structured database format, enabling more complex queries and data analysis.
Integrity Checks: After the data import, SELECT statements and other SQL queries are used to verify the correctness and integrity of the data within the database. This step confirms that relationships are maintained and the data is clean and usable.

**Further Exploration**

For more detailed instructions on using Pandas for ETL processes, visit the Pandas Documentation.
To refine skills in SQL for data manipulation and querying within PostgreSQL, the SQL Tutorial on W3Schools provides an excellent resource.
