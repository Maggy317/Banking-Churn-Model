# Bank Customer Churn Prediction & Retention Strategy

## Table of Contents

- [Project Review](#project-review)
- [Objective](#objective)
- [Key Business Questions](#key-business-questions)
- [Dataset Description](#dataset-description)
- [Tools Used](#tools-used)
- [Data Cleaned](#data-cleaned)
- [Dashboard Themes](#dashboard-themes)
- [Key Insights](#key-insights)
- [Recommendation](#recommendations)
- [How to use this Project](#how-to-use-this-project)
- [Conclusion](#conclusion)
- [Author](#author)

## Project Review
This project aims to analyze customer churn patterns in a bank using historical customer data and develop strategies for improving customer retention. It uses a mix of Excel, SQL, and Power BI to understand customer behavior and predict churn risk.

## Objective
To identify key factors contributing to customer churn and recommend data-driven strategies using Power BI visualizations.

## Key Business Questions
-	What is the overall churn rate?
-	What retention strategies can be proposed?
-	Which segment of customers are most likely to leave?
-	Are inactive or low-product customers more likely to churn?
-	Does geography, credit score, or tenure impact churn?
-	What customer segments are high value and high risk?

## Dataset Descriptions
-	<a href=https://github.com/Maggy317/Banking-Churn-Model/blob/main/Banking_Churn_Raw.xlsx>Bank Churn Raw Dataset</a>
-	<a href=https://github.com/Maggy317/Banking-Churn-Model/blob/main/Banking_Churn_Cleaned.csv>Bank Churn Cleaned Dataset</a>
-	Source : (Kaggle Dataset)

## Tools
-	Microsoft Excel (Data cleaning, pivot tables, visualizations)
-	SQL (customer segmentation and patterns)
-	Power BI (Dynamic, interactive dashboards and storytelling)
-	Power Query (data modeling and transformation)

## Data Cleaning & Preparation
Added Columns:
-	Churn Flag ; based on Exited column
-	Tenure Group ; New, Mid, Loyal
-	Credit Score ; Low, Medium, High
-	Customer Value ; based on number of products
-	Risk Level ; based on credit score
Missing Values:
-	Checked for nulls – dataset was complete
-	Ensured columns types were appropriate (e.g., integers for Credit Score)

## Dashboard Themes
-	<a href=https://github.com/Maggy317/Banking-Churn-Model/blob/main/Churn_dashboard.png/Customer_Overview.png>Customer Demographic & Churn Overview</a>
-	<a href=https://github.com/Maggy317/Banking-Churn-Model/blob/main/Churn_dashboard.png/Churn_Behavior.png>Churn Behavior & Customer Segmentation</a>
-	<a href=https://github.com/Maggy317/Banking-Churn-Model/blob/main/Churn_dashboard.png/Customer_Value.png>Churn Risk Level + Customer Value</a>
- <a href=https://github.com/Maggy317/Banking-Churn-Model/blob/main/Churn_dashboard.png/Churn_Drivers.png>Retention KPIs & Churn Drivers</a>
-	<a href=https://github.com/Maggy317/Banking-Churn-Model/blob/main/Churn_dashboard.png/Recommendations.png>Recommendations</a>

## Key Insights
-	Majority of churned customers had only 1 product.
-	Active members had significantly higher churn.
-	Customers with low credit score had increased churn risk.
-	Churn was high in Germany.
-	Customers with 3 and more products were more likely to churn

## Recommendation
-	Product Upsell Campaign : Target 1-product customers with loyalty incentives.
-	Retention Program : Personalized offers for high-risk geographies.
-	Re-Engagement : Reconnect with inactive customers through exclusive offers.
-	Credit Score Support : Provide financial education for low-score customers.

## How to use this project
SQL
-	Open your preferred SQL tool (e.g., MySQL Workbench, DBeaver).
-	Go to the ‘Bank_Churn’ folder.
-	Use the ‘bank_churn_cleaned_data.cvs’.
-	Run the queries from ‘churn_queries.sql’.
Power BI
-	Open the Power BI file, ‘Churn_dashboard.pbix’
-	Use filters to explore churn patterns by segment
-	Review the Excel files for cleaning steps and SQL scripts for analysis logic

## Conclusions 
This Project helped uncover patterns behind customer churn using real-world business analysis techniques. The dashboard can help managers make informed retention decisions.

## Author
Elujulo Margaret Kehinde
[elujulomargaret@gmail.com](mailto: elujulomargaret@gmail.com)

