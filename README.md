
# 📊 Olist E-Commerce Data Analysis Project

## 📌 Project Overview

This project is an **end-to-end data analysis** of the **Brazilian Olist E-Commerce Dataset**.
The goal is to analyze **orders, revenue, delivery performance, and customer satisfaction** using multiple tools commonly used by Data Analysts.

The project demonstrates the complete analytics workflow:
**Data Cleaning → Data Transformation → Analysis → Visualization → Business Insights**

---

## 🧰 Tools & Technologies Used

* **Excel** (Data cleaning, Power Query, Pivot Tables)
* **Python (Pandas)** for data analysis
* **SQL (MySQL)** for business queries
* **Power BI** for interactive dashboards

---

## 📂 Dataset

* Brazilian E-Commerce Public Dataset by Olist
* Multiple related tables such as:

  * orders_data
  * order_reviews
  * payments_data
  * products_data
  * customers_data
  * order_items
  * Product Category Translation

---

## 🧹 1. Data Cleaning & Preparation (Excel)

All initial data cleaning was performed in **Microsoft Excel**.

### ✔ Steps Performed:

* Opened and inspected each CSV file
* Checked:

  * Column names
  * Data types
  * Missing values
  * Primary keys
* Used **Power Query** to:

  * Split timestamp columns into **Date** and **Time**
  * Change column data types
  * Merge `product_category_name_translation` to convert category names to **English**
* Handled blank and null values appropriately
* Created **Pivot Tables** for quick exploratory analysis

### 📊 Pivot Tables Created:

* Orders by Order Status (Delivered vs Cancelled)
* Orders by Review Score
* Revenue by Product Category
* Orders by Payment Method
* Delivery Status vs Review Score
* Orders by Customer State

---

## 🐍 2. Data Analysis Using Python (Pandas)

All Python analysis was performed in the provided **Jupyter Notebook (`.ipynb`)**.

### ✔ Tasks Performed:

* Loaded cleaned datasets into Pandas DataFrames
* Parsed date columns using `pd.to_datetime()`
* Created new features such as:

  * Delivery days
  * Delivery delay
* Answered business questions such as:

  * Average delivery time
  * Relationship between delivery delay and review score
  * Order and revenue statistics
* Used Pandas operations for aggregation and analysis

📁 **File:** `olist_python.ipynb`


## 🗄️ 3. SQL Analysis (MySQL)

SQL was used to validate insights and answer business questions using **joins and aggregations**.

### ✔ Business Questions Answered Using SQL:

* Total number of orders placed
* Orders delivered vs cancelled
* Total revenue generated
* Average order value (AOV)
* Most popular payment method
* Product categories generating the most revenue
* Average delivery time in days
* Impact of late delivery on review scores
* States with the highest number of orders

## 📈 4. Power BI Dashboard

An interactive dashboard was created in **Power BI** to visualize insights.

### 📊 Dashboard Includes:

* KPI Cards:

  * Total Orders
  * Total Revenue
  * Average Review Score
  * Average Delivery Time
* Revenue by Product Category
* Orders by Review Score
* Delivery Delay vs Review Score
* Orders by Customer State

### ✔ Key Features:

* Correct data model with relationships
* DAX measures for KPIs
* Conditional formatting for better interpretation
* Categorical and stacked visuals for clear insights

📁 **File:** `Power BI Dashboard.pbix`


## 🔍 Key Business Insights

* Most revenue comes from a small number of product categories
* Late deliveries are strongly associated with lower review scores
* On-time and early deliveries receive higher customer ratings
* Certain states contribute disproportionately to total orders
* Digital payment methods are the most popular

Olist-Ecommerce-Analysis/
│
├── Excel/
│   └── Cleaned_Data_and_Pivots.xlsx
│
├── Python/
│   └── Data Analysis project.ipynb
│
├── SQL/
│   └── SQL_Queries.docx
│
├── PowerBI/
│   └── Power BI Dashboard.pbix
│
└── README.md

## 🎯 Conclusion

This project demonstrates practical skills in:

* Data cleaning and transformation
* SQL query design
* Python data analysis
* Power BI dashboard development
* Business-oriented analytical thinking

It reflects a **real-world Data Analyst workflow** and is suitable for **portfolio, interviews, and internships**.
