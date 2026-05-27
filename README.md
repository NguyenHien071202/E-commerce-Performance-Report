# [Power BI] Global E-Commerce Platform - Performance Summary  
## I. Introduction 
### 1. Overview
This PowerBI project for a global skincare and beauty e-store operating over 140 countries across 4 major markets: US, EMEA, APAC, LATAM. The goal is to help business analyze sales volume and profitability across various product groups and market, focusing on key performance indicators critical to the e-store's success. It also prodive actionable insight that can drive strategic decision-making for the future growth.
### 2. About dataset
Data Source: The dataset was sourced from the official FP20 Analytics ZoomCharts Challenge.
Data Scope: 25.000+ orders from 17.000+ customers between January 1, 2020 and December 31, 2023 across multiple skincare and beauty product categories.
The project used 4 tables in the dataset:
- Sales: Contains details for each transaction such as order date, customer id, region code, product code, sales and profit.
- Customer: Includes demographic and personal customer information.
- Product: Contains product-related information such as product code, product name, category, and subcategory.
- Region: Stores geographic and regional market data.
### 3. Project roadmap
### 3.1. Prepare and process  
- Connected to SQL Server to extract data and import it into PowerBI for visualization and analysis.
- Used power query to handle Null values in the gender columns of customer table by replacing missing values with "Unknown" to ensure data consistency. Standardized data types and cleaned inconsistent data in the sales table.
- Leveraged SQL query to identify frequently purchased product pairs for visualization and uncovering cross-selling opportunities in Power BI
### 3.2. Data modeling 
- Create a date table from sales table with the ealiest date and the latest date, add new columns such as year, month year, quarter to support time hierarchy and time intelligence analysis.
- Create relationship between dimension tables and fact table (star schema):
  - Customer &harr; Sales (one-to-many based on customer_id)
  - Product &harr; Sales (one-to-many based on product_code)
  - Region &harr; Sales (one-to-many based on region_code)
  - Date &harr; Sales (one-to-many based on order_date)
<img width="574" height="595" alt="Screenshot 2026-05-26 at 23 03 32" src="https://github.com/user-attachments/assets/cbf1261d-7b8b-4a6e-b8d6-74d8c86a4f7a" />

### 3.3. Analyze 
- Divide the report into 3 pages: Sales summary, product performance and customer segmentation.
- Metrics selected: Total Sales, Total Profit, Profit Margin, AOV (for sales summary page), Total Orders (for sales summary and customer segmentation page), Total Customers, Purchase Frequency, Repeat Purchase Rate, One-time Purchase Rate(for customer segmentation page). Additional metrics such as Total Units Sold and Customer Lifetime Value are also used to evaluate the performance and value contribution of each customer segment.
- Created a dynamic measure to switch between different metrics using slicers and parameter selection for flexible analysis
## II. Dashboard Pages 
### 1. Sales summary
<img width="1155" height="650" alt="Screenshot 2026-05-27 at 03 31 01" src="https://github.com/user-attachments/assets/189c44bd-a6db-460c-b45f-89e3a1c02077" />

### 2. Product performance
<img width="1152" height="651" alt="Screenshot 2026-05-27 at 03 37 56" src="https://github.com/user-attachments/assets/14f5d54e-82a4-467e-a776-33b7a50e856f" />

### 3. Customer Segmentation (RFM)
<img width="1158" height="653" alt="Screenshot 2026-05-27 at 04 52 33" src="https://github.com/user-attachments/assets/b2b3fe20-c0dd-4027-9e16-83bc637fd30d" />


## III. Insight and recommendations  
### 1. Sales
<img width="759" height="365" alt="Screenshot 2026-05-27 at 06 14 25" src="https://github.com/user-attachments/assets/97d94587-34ee-48b0-931f-5edece71cb91" />

- Total Sales showed steady growth over the four-year period, increasing from approximately $1.15M in 2020 to around $2.19M in 2021. Year-over-year growth is remained stable, increasing 22% in 2021, reaching a peak of 26% in 2022 and mantaining at 23% in 2023. This growth was driven the countinous increase in order volumne. Except for the Africa market, the other four markets generated relatively high total sales. However, the Africa market showed impressive year-over-year growth, indicating high future potential. It is recommended to further invest in and expand this market. The Corporate segment generated the highest total sales and also achieved a higher Average Order Value (AOV) compared to the other two segments, indicating that the e-store operates primarily under a Business-to-Business (B2B) model. Therefore, the e-store should adjust its marketing strategies such as implementing tiered pricing to encourage larger purchases and promote revenue growth.
<img width="894" height="505" alt="Screenshot 2026-05-27 at 07 48 36" src="https://github.com/user-attachments/assets/8fe687fb-1ece-4ebd-9dc0-8e535224a964" />

- In contrast to Total Sales, Total Profit experienced strong growth from 2020 to 2022 but declined by 12.2% in 2023. At the same time, Profit Margin also decreased by 5.2% compared to the previous year.
<img width="896" height="503" alt="Screenshot 2026-05-27 at 08 09 13" src="https://github.com/user-attachments/assets/5cbaac4e-9d9f-415c-8cb4-04812eb7389b" />
<img width="894" height="498" alt="Screenshot 2026-05-27 at 08 09 48" src="https://github.com/user-attachments/assets/3e8c4407-6022-478e-b612-4cfb1b10f2b1" />

- A deep dive analysis revealed a high number of heavily discounted orders and negative-profit transactions, particularly in the Asia-Pacific market, where the rate was nearly twice as high as in Europe. This indicates that the Corporate (B2B) segment, despite generating the highest revenue, may be dependent on aggressive discounting strategies. It is recommended to apply discount controls, such as implementing a discount ceiling in the Asia-Pacific market, to eliminate loss-making orders and improve overall profitability.

### 2. Product
<img width="760" height="498" alt="Screenshot 2026-05-27 at 16 12 38" src="https://github.com/user-attachments/assets/11e2a92b-7e0c-4327-b48f-2566e32971b2" />

- Body Care contributed the largest share of total sales at 51.32% and also recorded the highest order volume with over 17,000 orders. However, Face Care achieved the highest profit margin at 18.85%. Among all products, The Herbal Essences Bio from the Body Care category was the top-selling product, generating $67,640 in sales and 1,780 units sold between 2020 and 2023. Frequently Bought-Together Analysis highlighted strong cross-selling behavior among the Body Care, Face Care, and Hair Care categories. Customers of the e-store tend to purchase products from these three categories within the same order.
<img width="759" height="497" alt="Screenshot 2026-05-27 at 16 13 48" src="https://github.com/user-attachments/assets/b50444d7-0da9-43f2-afb0-11c8914b763f" />

- Higher units sold did not necessarily translate into higher profit, highlighting possible margin erosion due to discount strategies. The top-selling product generated high revenue but, due to heavy discounting, resulted in negative total profit and negative profit margin. It is recommended to adjust the discount strategy for products with negative profit to improve overall profitability.
### 3. Customer
<img width="756" height="500" alt="Screenshot 2026-05-27 at 14 26 44" src="https://github.com/user-attachments/assets/a6b3c2ae-eb04-46c4-aba3-be8925afdd21" />

- The repeat purchase metrics are relatively low, with a repeat purchase rate of 31.21% and a one-time purchase rate of 68.79%, indicate that most customers only purchase once. Most of the total sales are driven by Corporate customers, who tend to purchase in bulk on a one-time basis rather than making repeat purchases. Not only the Corporate segment but also the Consumer and Self-Employed segments exhibit a high one-time purchase rate.
- Implemented RFM (Recency, Frequency, Monetary) analysis to segment customers into five behavioral groups, including Champions, Loyal Customers, Potential Loyalists, At Risk, and Lost Customers:
  - Champions: Represent a small customer base with high repeat purchase frequency and the highest CLV. However, this segment is highly sensitive to discounts. Despite their high sensitivity to discounts, this segment still maintains a relatively high profit margin and contributes significantly to the e-store’s overall profitability.
  - Loyal Customers: Similar recent activity and high purchase frequency as Champions. However, their CLV is lower, primarily driven by a lower average order value.
  - Lost and New Customer: Contributes the highest share of total sales and maintains a relatively stable profit margin. However, as these customers make only a single purchase, their Customer Lifetime Value (CLV) is effectively zero.
  - At Risk: Although At Risk customers generate the lowest sales volume, they maintain the highest profit margin.
    
