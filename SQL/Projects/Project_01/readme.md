# 🧾 AdventureWorks – Customer & Sales SQL Analysis

## 📌 Project Objective
This project involves querying a large relational database (AdventureWorks2012) to extract key insights about customer contact information and sales performance. The goal is to apply SQL skills to answer specific business questions using structured data.

## 🗂 Dataset
- **Source**: [AdventureWorks2012](https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks)
- **Type**: Microsoft SQL Server Sample Database
- **Restored in**: SQL Server Management Studio (SSMS)

## 🧰 Tools Used
- SQL Server Management Studio (SSMS)
- T-SQL (Transact-SQL)
- AdventureWorks2012 Database

---

## 🔧 Key SQL Concepts Used
- `JOIN` (INNER JOIN)
- `GROUP BY`, `ORDER BY`
- Aggregate functions: `SUM()`
- `WHERE` and `BETWEEN` filters
- `FORMAT()` for grouping by month
- Subqueries and business filters

---

## ✅ Tasks Performed

| Task No. | Description |
|----------|-------------|
| 1️⃣ | Extract all customer details including email, phone, and phone type |
| 2️⃣ | Retrieve all sales orders placed in May 2011 |
| 3️⃣ | Fetch sales order details for the same period |
| 4️⃣ | Calculate total sales made in May 2011 |
| 5️⃣ | Monthly breakdown of 2011 sales, sorted by increasing value |
| 6️⃣ | Total sales made to customer **Gustavo Achong** |

---

## 📝 Sample Query (May 2011 Sales Total)
```sql
SELECT 
    SUM(TotalDue) AS TotalSales_May_2011
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '2011-05-01' AND '2011-05-31';
