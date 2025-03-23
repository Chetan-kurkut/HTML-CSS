CREATE DATABASE sql_project_p2;


-- Create TABLE
DROP TABLE IF EXISTS retail_sales;
CREATE TABLE retail_sales
            (
                transaction_id INT PRIMARY KEY,	
                sale_date DATE,	 
                sale_time TIME,	
                customer_id	INT,
                gender	VARCHAR(15),
                age	INT,
                category VARCHAR(15),	
                quantity	INT,
                price_per_unit FLOAT,	
                cogs	FLOAT,
                total_sale FLOAT
            );

SELECT * FROM retail_sales
LIMIT 10

SELECT 
COUNT(*)
FROM retail_sales

--Data cleaning
SELECT *FROM retail_sales
WHERE transaction_id IS NULL

SELECT *FROM retail_sales
WHERE sale_date IS NULL

DELETE FROM retail_sales
WHERE
transaction_id IS NULL
or
sale_date IS NULL
or
sale_time IS NULL
or
gender IS NULL
or
category IS NULL
or
quantity IS NULL
or
cogs IS NULL
or 
total_sale IS NULL;

-- data exploration
--how many sales we have ?
SELECT COUNT(*) as total FROM retail_sales


