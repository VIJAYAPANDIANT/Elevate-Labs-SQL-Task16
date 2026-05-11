# 📊 Elevate Lab SQL Task 16: Sales Analytics

A professional SQL project demonstrating the core concepts of building a business sales analytics system using MySQL. It covers designing a normalized relational database, storing transactional data, and performing advanced analytical queries to generate meaningful business insights.

## 📌 Project Objective

The primary goal of this task is to understand how to design a relational database for a sales environment and write complex SQL queries for data analysis. It illustrates how to track revenue trends, identify high-value or inactive customers, analyze product performance, and optimize query execution using indexes.

## 🛠️ Technical Scope

**Database Management System:** SQL (MySQL)
**Core Concepts:** Database Normalization, DDL (CREATE), DML (INSERT), Foreign Key Relationships
**Advanced Techniques:** Multi-table Joins, Aggregation (SUM), Date/Time Functions (DATE_TRUNC, DATE_FORMAT), Grouping and Filtering (GROUP BY, HAVING), Performance Optimization (Indexes)

## 🗄️ Database Schema

### `customers` Table
| Column | Data Type | Constraint / Description |
| :--- | :--- | :--- |
| `customer_id` | INT | Primary Key |
| `name` | VARCHAR(100) | Customer Name |
| `email` | VARCHAR(100) | Customer Email |
| `join_date` | DATE | Date of Joining |

### `products` Table
| Column | Data Type | Constraint / Description |
| :--- | :--- | :--- |
| `product_id` | INT | Primary Key |
| `product_name` | VARCHAR(100) | Product Name |
| `category` | VARCHAR(50) | Product Category |
| `price` | DECIMAL(10,2) | Product Price |

### `orders` Table
| Column | Data Type | Constraint / Description |
| :--- | :--- | :--- |
| `order_id` | INT | Primary Key |
| `customer_id` | INT | Foreign Key (References customers) |
| `order_date` | DATE | Date of Order |
| `total_amount` | DECIMAL(10,2) | Total Order Amount |

### `order_items` Table
| Column | Data Type | Constraint / Description |
| :--- | :--- | :--- |
| `order_item_id` | INT | Primary Key |
| `order_id` | INT | Foreign Key (References orders) |
| `product_id` | INT | Foreign Key (References products) |
| `quantity` | INT | Quantity of Product |
| `item_price` | DECIMAL(10,2) | Price per Item |

## 💻 SQL Implementations

Key operations demonstrated in the script:

* **Database & Schema Setup:** Creation of the `task16` database and the four interconnected tables (`customers`, `products`, `orders`, `order_items`) with sample data.
* **Top-Selling Products:** Utilizes `JOIN` and `SUM()` to calculate total quantity sold per product, ordered to find the most popular items for inventory planning.
* **Monthly Revenue Trend:** Uses date formatting functions (`DATE_TRUNC` or `DATE_FORMAT`) combined with `GROUP BY` to track revenue growth over time.
* **Inactive Customers:** Employs a `LEFT JOIN` and `HAVING` clause to identify customers who have not made any purchases in the last 6 months for targeted re-engagement.
* **High-Value Customers:** Calculates total spending per customer using aggregations and filters them using the `HAVING` clause to find top contributors to revenue.
* **Query Optimization:** Implements `CREATE INDEX` on frequently joined and filtered columns (like `customer_id`, `product_id`, and `order_date`) to improve performance on large datasets.

## 🚀 Setup & Execution

* **Initialize:** Execute the script to create the `task16` database, set up the relational tables, and insert sample transactional data.
* **Test Sales Analysis:** Run the top-selling products and monthly revenue trend queries to observe aggregated business metrics.
* **Test Customer Segmentation:** Execute the queries for identifying inactive and high-value customers to see how complex filtering is applied across multiple tables.
* **Test Optimization:** Run the index creation commands to understand how database performance can be optimized for analytical queries.

> [!IMPORTANT]  
> Database indexing is a powerful tool for query optimization. While it speeds up `SELECT` statements by allowing the database engine to quickly locate rows, it can add overhead to `INSERT`, `UPDATE`, and `DELETE` operations. Indexes should be carefully applied to columns that are frequently used in `JOIN`, `WHERE`, and `ORDER BY` clauses.

Developed for Elevate Lab Internship Program - SQL Practice and Interview Preparation.
