# 📊 Analysis & Insights Report  

## 📌 **Overview**  
This report provides an analysis of SQL assignments, focusing on database operations, constraints, joins, and data retrieval techniques. The insights help in optimizing database management and understanding SQL concepts in real-world scenarios.  

## 📂 **Dataset Information**  
The dataset consists of tables related to **ABC Fashion**, a leading retailer, including:  
- **Salesman Table**  
- **Customer Table**  
- **Orders Table**  

## 🔍 **Key Analyses & SQL Insights**  

### **1️⃣ Data Integrity & Constraints Implementation**  
- **Primary Key Constraint**: Ensured unique identification of records in the `Salesman` table.  
- **Default Constraint**: Applied for the `City` column in the `Salesman` table to avoid NULL values.  
- **Foreign Key Constraint**: Established a relationship between `Salesman` and `Customer` tables.  
- **NOT NULL Constraint**: Ensured `Customer_name` in `Customer` table cannot have NULL values.  

### **2️⃣ Data Filtering & Retrieval**  
- **Customers with names ending in 'N' & purchase amount > 500** were retrieved using `LIKE` and `WHERE` conditions.  
- **SET Operators (`UNION`, `INTERSECT`)** were used to extract unique and duplicate `SalesmanId` values.  

### **3️⃣ Joins & Relationship-Based Queries**  
- **Matching Data Display**: Extracted `OrderDate`, `Salesman Name`, `Customer Name`, `Commission`, and `City` for purchases between 500-1500.  
- **RIGHT JOIN**: Retrieved all results from `Salesman` and `Orders` tables to identify complete sales interactions.  

## 📊 **Business Insights & Recommendations**  
🔹 **Sales Performance Tracking**: The `Orders` table helps in analyzing purchase trends across sales representatives.  
🔹 **Customer Insights**: Filtering by purchase amount helps in **identifying high-value customers** for targeted promotions.  
🔹 **Data Optimization**: Proper use of constraints ensures **data accuracy and consistency** across tables.  

## 🚀 **Conclusion**  
The SQL queries provide a structured approach for **data integrity, relationship management, and business analysis**. These insights are crucial for optimizing database performance and making data-driven decisions.  

