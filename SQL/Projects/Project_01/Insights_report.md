# 📊 Insights Report – AdventureWorks SQL Analysis

## 📁 Project Context
This report summarizes key insights derived from executing SQL queries on the **AdventureWorks2012** relational database. The goal was to analyze customer contact details and sales performance metrics for business decision-making.

---

## 🔍 Key Findings

### 📇 Customer Contact Data
- Successfully extracted **email IDs**, **phone numbers**, and **phone types** from `Person`, `EmailAddress`, `PersonPhone`, and `PhoneNumberType` tables.
- This consolidated customer data can be used for:
  - Targeted marketing campaigns
  - Building CRM dashboards
  - Contact segmentation

---

### 📅 May 2011 Sales Analysis
- **Total Sales in May 2011**: ₹**`[567020.9498]`**

---

### 📆 Monthly Sales Trend – Year 2011
- Aggregated monthly sales show clear seasonal/quarterly trends.
- **Lowest Sales Month**: **`[2011-06]`**
- **Highest Sales Month**: **`[2011-11]`**
- **Sales steadily increased** over the year.

> 📌 *These insights help in planning future inventory and promotions.*

---

### 👤 Customer-Specific Sales: Gustavo Achong
- Total sales made to **Gustavo Achong**: ₹**`[147804.9208]`**
- He is one of the customers with repeat purchases.

---

## 📈 Observations & Recommendations

| Observation | Recommendation |
|-------------|----------------|
| May 2011 sales were moderate with total sales of ₹[567020.9498] | Run comparative analysis across years to check seasonality |
| Customer details are well-structured | Can be used to enhance CRM segmentation and personalization |
| Monthly trends indicate peak periods | Use these trends to align promotional campaigns and inventory planning |

---

## 🧠 Learnings

- **Advanced SQL Joins** helped unify complex data structures from multiple tables.
- Used **filtering by date ranges** and **aggregations** to derive month-wise summaries.
- **Business-oriented querying** allows more relevant data storytelling and insight delivery.

---

## 📎 Notes
- Data was restored from Microsoft’s AdventureWorks2012 `.bak` file
- Queries were run and validated using **SQL Server Management Studio**

---

> “Behind every data point is a decision waiting to happen.”

