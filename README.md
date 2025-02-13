# Car-Dekho-Data-Analysis-using-SQL
Car Dekho Data Analysis SQL Queries

Overview

This SQL file contains queries used to analyze car sales data, providing insights into pricing trends, ownership distributions, and other key factors. The queries help in understanding the market trends and characteristics of used cars.

Dataset

The analysis is based on a dataset containing various attributes of used cars, including:

name - Car model and brand

selling_price - Selling price of the car

km_driven - Total kilometers driven

fuel - Type of fuel used (Petrol/Diesel/CNG)

transmission - Transmission type (Manual/Automatic)

owner - Ownership status (First-owner, Second-owner, etc.)

seller_type - Type of seller (Dealer/Individual)

Key SQL Queries

1. Percentage of Cars Sold by Individual Sellers

Calculates the percentage of cars sold by individual sellers.

Uses Common Table Expressions (CTE) to derive results efficiently.

2. Distribution of Car Sales Based on KM Driven

Categorizes cars into mileage groups (<50,000 km, 50,000-100,000 km, etc.).

Uses CASE statements to group data for better insights.

3. Highest and Lowest Selling Prices

Identifies the most expensive and least expensive cars in the dataset.

Uses MIN() and MAX() functions to extract the values.

4. Percentage of Each Transmission Type

Determines the distribution of manual vs. automatic cars.

Uses window functions (SUM() OVER()) for percentage calculations.

5. Ownership Distribution Analysis

Computes the percentage of first-owner, second-owner, and third-owner cars.

Uses GROUP BY and window functions for better aggregation.

How to Use

Load the dataset into an SQL-compatible database.

Run the provided queries to extract insights.

Modify queries as needed for further analysis.

Future Enhancements

Adding time-based analysis to track trends.

Incorporating price prediction models using SQL-based feature engineering.

For any modifications or custom queries, feel free to contribute! 🚀


