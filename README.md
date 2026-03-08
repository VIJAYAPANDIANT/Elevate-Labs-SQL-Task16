# 📊 Sales Analytics SQL Project (MySQL 8+)

## 📌 Project Overview

This project simulates a real-world **business sales analytics system** using SQL.
The goal is to design a relational database, store transactional sales data, and perform analytical queries to generate meaningful business insights.

This project demonstrates how SQL is used in **data analysis, reporting, and decision-making** in modern organizations.

---

## 🎯 Objectives

The main objectives of this project are:

* Design a structured relational database for a sales system
* Insert realistic transactional business data
* Analyze product sales performance
* Track revenue trends over time
* Identify inactive customers
* Detect high-value customers
* Optimize analytical queries for performance
* Generate business insights for management reporting

---

## 🗂 Database Schema Design

The database models a typical sales environment with the following entities:

### 👥 Customers

Stores customer information such as name, email, and join date.

### 📦 Products

Contains product details including name, category, and price.

### 🧾 Orders

Represents each purchase transaction made by customers.

### 🛒 Order Items

Stores product-level details for each order (quantity, item price).

---

## 🔗 Entity Relationships

* One customer can place many orders
* One order can contain multiple products
* One product can appear in multiple orders

This structure follows **normalized relational database design** to reduce redundancy and maintain data integrity.

---

## 🛠 Technologies Used

* MySQL 8+
* SQL (DDL, DML, Joins, Aggregations)
* Indexing for performance optimization

Optional tools:

* MySQL Workbench
* GitHub for version control



---

## 🚀 How to Run This Project

### Step 1 — Create Database

```sql
CREATE DATABASE sales_analytics;
USE sales_analytics;
```

### Step 2 — Create Tables

Run the SQL script from:

```
sql/create_tables.sql
```

### Step 3 — Insert Sample Data

Run:

```
sql/insert_data.sql
```

### Step 4 — Run Analytics Queries

Execute:

```
sql/analytics_queries.sql
```

---

## 📊 Business Analytics Performed

### ⭐ Top-Selling Products

Identifies which products generate the highest sales volume.

Business value:

* Inventory planning
* Marketing prioritization
* Product demand forecasting

---

### ⭐ Monthly Revenue Trend

Analyzes revenue growth over time.

Business value:

* Detect seasonal trends
* Forecast future revenue
* Measure business growth

---

### ⭐ Inactive Customers

Finds customers who have not made recent purchases.

Business value:

* Targeted re-engagement campaigns
* Customer retention strategy

---

### ⭐ High-Value Customers

Identifies customers contributing the highest revenue.

Business value:

* Loyalty programs
* Premium service offers
* Revenue concentration analysis

---

## ⚡ Query Optimization Techniques

To improve performance on large datasets:

* Indexed frequently joined columns
* Indexed date columns for time-based analysis
* Reduced unnecessary data retrieval
* Used grouping and aggregation efficiently

Indexes created:

* Orders by customer
* Orders by date
* Order items by product

---

## 📈 Key Business Insights

Based on analysis:

* Electronics category drives majority of revenue
* Monthly revenue shows increasing growth trend
* Some customers are inactive and need re-engagement
* Small percentage of customers generate large revenue share

---

## 💼 Business Recommendations

1. Increase inventory for top-selling products
2. Implement loyalty programs for high-value customers
3. Launch promotional campaigns for inactive customers
4. Monitor monthly revenue for demand forecasting
5. Focus marketing on high-performing product categories

---

## 🧠 Skills Demonstrated

* Database design and normalization
* SQL joins and aggregations
* Business metric calculation
* Time-based data analysis
* Customer segmentation
* Performance optimization
* Data-driven decision making

---

## 🎓 Learning Outcomes

This project demonstrates practical understanding of:

* How businesses store transactional data
* How analysts extract meaningful insights
* How SQL supports strategic decision making
* How database performance impacts analytics

---

## 🔮 Future Enhancements

Possible improvements:

* Large-scale dataset simulation
* Stored procedures for automation
* Window function analytics
* Customer lifetime value calculation
* Integration with BI dashboards
* Predictive sales forecasting

---

## ⭐ Conclusion

This project demonstrates the complete workflow of:

Database design → Data storage → Data analysis → Business insights

It reflects how SQL is used in real companies to solve business problems and support data-driven decisions.

---

## 👨‍💻 Author

Design and Implementation by VIJAYAPANDIAN.T.
