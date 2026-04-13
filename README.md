# Zepto-SQL-Data-Analysis-Project
📌 Project Overview
This project focuses on analyzing an e-commerce dataset (Zepto-like platform) using SQL. The main objective is to perform data cleaning, exploration, and business-driven analysis to extract meaningful insights from product inventory and pricing data.

🎯 Business Objective


Analyze product pricing, discounts, and availability


Identify high-value products and categories


Estimate revenue generation potential


Improve decision-making using data-driven insights



🗂️ Dataset Description
The dataset contains product-level information such as:


SKU ID


Product Name


Category


MRP (Maximum Retail Price)


Discount Percentage


Discounted Selling Price


Available Quantity


Product Weight (grams)


Stock Availability



🛠️ Tools & Technologies Used


SQL (MySQL)


Data Cleaning Techniques


Aggregations & Grouping


Conditional Logic (CASE statements)



🧹 Data Cleaning Steps


Removed records with zero price values


Handled missing/null values


Converted price values into proper currency format


Renamed incorrect column names


Ensured data consistency across all fields



📊 Key Analysis Performed
🔹 1. Product Insights


Identified top 10 products with highest discounts


Found products with high MRP but out of stock


🔹 2. Revenue Analysis


Calculated estimated revenue per category using:
revenue = discountedSellingPrice × availableQuantity


🔹 3. Discount Analysis


Top categories with highest average discount percentages


🔹 4. Pricing Strategy


Identified products with:


High price but low discount


Best price per gram value




🔹 5. Inventory Analysis


Total inventory weight per category


Product classification based on:


Quantity (Low / Medium / Bulk)


Weight (Low / High / Bulk)





📈 Key Insights


Some products offer very high discounts, indicating promotional strategies


Certain high-value products are out of stock, leading to potential revenue loss


A few categories contribute significantly more to overall revenue


Price-per-gram analysis helps identify best-value products


Inventory classification helps in stock management optimization



📂 Project Structure


SQL script file containing:


Database creation


Table structure


Data cleaning queries


Analytical queries






📌 Future Improvements


Connect with Power BI / Tableau for visualization


Automate analysis using Python (Pandas + SQL)


Build a dashboard for business insights



🙋‍♂️ Author
Santhosh Kumar
Aspiring Data Analyst | SQL | Python | Data Visualization
