# Ecommerce-Sales-Analysis

An end-to-end data analysis project on ecommerce sales data using **Python**, **MySQL**, and **Power BI**. The project covers data cleaning, exploratory data analysis, SQL-based business querying, and an interactive Power BI dashboard to uncover sales, profit, and performance insights.

## Project Overview

This project analyzes 10,194 retail sales records (Superstore dataset) to understand sales performance, profitability, and business trends across regions, categories, segments, products, and customers. The goal was to simulate a real-world business analytics workflow — from raw data to actionable insights — and present findings through an interactive executive dashboard.

## Objectives

- Clean and prepare raw sales data for analysis
- Explore sales, profit, and quantity trends across multiple dimensions
- Use SQL to answer specific business questions
- Build an interactive dashboard for stakeholders to explore KPIs
- Identify actionable insights for pricing, discounting, and regional strategy
- 
## Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Python (Pandas, NumPy)** | Data cleaning, validation, and exploratory data analysis (EDA) |
| **MySQL** | Querying sales, profit, category, region, and customer data |
| **Power BI** | Building interactive dashboards and visualizations |
| **Excel/CSV** | Raw data source (Superstore dataset) |

##  Dataset

- **Source:** Sample Superstore Dataset
- **Records:** 10,194 rows
- **Fields:** Order ID, Order Date, Ship Date, Ship Mode, Customer ID, Customer Name, Segment, Country/Region, City, State, Postal Code, Category, Sub-Category, Product Name, Sales, Quantity, Discount, Profit

##  Project Workflow

### 1. Data Cleaning & Preparation (Python)
- Removed duplicate records
- Handled missing/null values
- Standardized date formats (Order Date, Ship Date)
- Validated data types and corrected inconsistencies
- Performed exploratory data analysis (EDA) to understand distributions and outliers

### 2. Business Querying (MySQL)
- Wrote SQL queries using joins, aggregations, and filters to analyze:
  - Sales and profit by category, sub-category, and region
  - Top-selling and loss-making products
  - Customer and segment-wise performance
  - Discount vs. profit relationship

### 3. Dashboard Development (Power BI)
- Built a 2-page interactive **Executive Sales Dashboard**
- Added KPI cards: Sum of Sales, Sum of Profit, Sum of Quantity, Count of Customers, Count of Orders
- Created visuals: bar charts, pie/donut charts, and a time-series trend line
- Added slicers for Country/Region, Category, Ship Mode, and Segment for dynamic filtering

##  Dashboard Highlights

| Metric | Value |
|--------|-------|
| Total Sales | $2.33M |
| Total Profit | $292.30K |
| Total Quantity Sold | 39K |
| Total Orders | 10.19K |
| Unique Customers | 10.19K |

**Dashboard Pages:**
1. **Overview Page** – KPI summary, sales & profit by category, monthly sales trend (2023–2026)
2. **Detailed Analysis Page** – Sales by country/region, product, segment, and quantity by region

##  Key Insights

- **Technology** is the top-performing category in both sales and profit.
- **Furniture** generates high sales but disproportionately low profit, suggesting the need for a pricing or discount strategy review.
- The **West** and **East** regions contribute the largest share of quantity sold.
- **Consumer** segment drives over 50% of total sales.
- Monthly sales trends show recurring seasonal spikes, useful for demand forecasting.

## 📁 Repository Structure

```
ecommerce-sales-analysis/
│
├── data/
│   └── superstore_dataset.csv
│
├── python/
│   └── data_cleaning_eda.ipynb
│
├── sql/
│   └── business_queries.sql
│
├── powerbi/
│   └── ecommerce_sales_dashboard.pbix
│
├── screenshots/
│   ├── dashboard_page1.png
│   └── dashboard_page2.png
│
└── README.md
```
## 📌 Future Improvements

- Add customer segmentation using clustering (RFM analysis)
- Build a discount-profit prediction model
- Automate the data pipeline with scheduled refresh
- Publish the dashboard to Power BI Service for online sharing

## 🧠 Skills Demonstrated

`Power BI` `DAX` `Data Visualization` `Data Cleaning` `Data Modeling` `Business Intelligence` `Exploratory Data Analysis (EDA)` `KPI Dashboard Design` `Customer Analytics` `Churn Analysis`

## 📬 Connect With Me

If you found this project useful or have feedback, feel free to connect or reach out!

- LinkedIn: [linkedin.com/in/veligandlaharinath](https://linkedin.com/in/veligandlaharinath)
- Email: [veligandlaharinath470@gmail.com](mailto:veligandlaharinath470@gmail.com)

⭐ If you found this project useful, consider giving it a star on GitHub!
