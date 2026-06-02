-- Databricks notebook source

SELECT COUNT(DISTINCT`Customer ID`) AS unique_customers,---Counting diiferent customers on my table

Date,
YEAR(Date) AS trans_Year,----Extracts the year from the date column

MONTH(Date) AS trans_Month,---Extracts the month from the date column
MONTHNAME(Date) AS trans_month_name,---Extracts the month name from the date column

Day(Date) AS trans_day,-------Extracts the day from the date column
DAYNAME(Date) AS trans_day_name,---Extracts the day name from the date column

SUM(`Total Amount`) AS Total_Revenue,---Calculate the total Revenue
`Product Category`,
`Gender`

FROM `retail`.`sales`.`retail_sales_dataset`
GROUP BY ALL; ---Grouping my data based on all my columns that are not aggregated in my select statement



