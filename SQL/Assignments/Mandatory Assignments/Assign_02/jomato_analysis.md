# Jomato Dataset Analysis & Insights

## 📌 About the Dataset
The dataset consists of **7,104** restaurant records with details such as restaurant name, type, rating, number of ratings, average cost, cuisine type, location, and services offered. The dataset is used for analyzing trends in restaurant performance and customer preferences.

---

## 🔍 **Key Insights & Findings**

### **1️⃣ Quick Chicken Bites Transformation**
- A function was created to insert 'Chicken' into 'Quick Bites' dynamically, e.g., `Quick Chicken Bites`.
- This can be extended for branding or food categorization.

### **2️⃣ Rating Distribution & Classification**
- The dataset contains restaurants with ratings ranging from **1.0 to 5.0**.
- We classified ratings into categories:
  - **Excellent ( >4.0 )**
  - **Good ( 3.5 - 4.0 )**
  - **Average ( 3.0 - 3.49 )**
  - **Bad ( <3.0 )**
- Most restaurants have ratings between **3.5 and 4.0 (Good category)**.

### **3️⃣ Highest Rated Restaurant**
- The restaurant with the maximum number of ratings was extracted using SQL queries.
- This helps identify the most popular restaurant based on customer engagement.

### **4️⃣ Data Transformations (CEIL, FLOOR, ABS, Date Functions)**
- **Rounded values of ratings** using `CEILING()` and `FLOOR()` functions.
- **Absolute values** of ratings were obtained.
- Extracted **current date, year, month name, and day** from the system for time-based analysis.

### **5️⃣ Restaurant Type & Cost Analysis**
- The most common restaurant types are **Quick Bites, Casual Dining, and Cafes**.
- Using `ROLLUP`, the total average cost across all restaurant types was calculated.
- **Fine Dining** restaurants have the highest average cost, whereas **Street Food** has the lowest.
---

## 📌 **SQL Queries Used**

### **1️⃣ Create Function for "Quick Chicken Bites"**
```sql
CREATE FUNCTION func_add_stuff(@x VARCHAR(20))
RETURNS TABLE 
AS
RETURN 
(
    SELECT CONCAT('Quick ', @x, ' Bites') AS quick_bites
);
```

### **2️⃣ Restaurant with Maximum Ratings**
```sql
CREATE FUNCTION check_max_rating()
RETURNS TABLE 
AS
RETURN 
(
    SELECT restaurantname, cuisinestype, no_of_rating 
    FROM jomato
    WHERE no_of_rating = (SELECT MAX(no_of_rating) FROM jomato)
);
```

### **3️⃣ Rating Classification**
```sql
SELECT *, 
    CASE 
        WHEN rating > 4 THEN 'Excellent'
        WHEN rating BETWEEN 3.5 AND 4 THEN 'Good'
        WHEN rating BETWEEN 3 AND 3.49 THEN 'Average'
        WHEN rating < 3 THEN 'Bad'
        ELSE 'No Rating' 
    END AS rating_status
FROM jomato;
```

### **4️⃣ CEIL, FLOOR, ABS & Date Functions**
```sql
SELECT 
    CEILING(rating) AS ceil_value, 
    FLOOR(rating) AS floor_value, 
    ABS(rating) AS absolute_value,
    GETDATE() AS current_date,
    YEAR(GETDATE()) AS year_value,
    DATENAME(MONTH, GETDATE()) AS month_name,
    DAY(GETDATE()) AS day_value
FROM jomato;
```

### **5️⃣ Restaurant Type & Cost Analysis using ROLLUP**
```sql
SELECT 
    restauranttype, 
    SUM(averagecost) AS tot_avg_cost
FROM jomato
GROUP BY ROLLUP(restauranttype);
```

---

## 📌 **Conclusion**
- This analysis provides insights into **restaurant types, ratings, costs, and popularity**.
- The use of SQL functions like **ROLLUP, CEILING, FLOOR, ABS, and CASE** improves data interpretation.
- The dataset can be further expanded to analyze customer preferences and optimize business strategies.

📢 **Next Steps:** Consider performing a deeper analysis on **cuisine trends, delivery times, and online orders impact on ratings.** 🚀
