SQL Assignment – Analysis & Insights Report

📌 1. Data Integrity & Constraint Implementation
Primary Key (salesmanid) ensures that each salesman has a unique ID, preventing duplicate entries.
Foreign Key (salesmanid in customer_table) enforces referential integrity, ensuring every customer is linked to a valid salesman.
NOT NULL (customername) ensures that customer records always have a name, preventing incomplete data.
DEFAULT (city = 'unknown') ensures new records have a meaningful value even if city is not provided.

📌 2. Handling Invalid Data Before Adding Constraints
Before adding the foreign key, I checked for salesmanid values in customer_table that did not exist in salesman_table.
Solution Chosen: Instead of adding missing salesmanid values to salesman_table, I deleted invalid records from customer_table to maintain data accuracy.

📌 3. Data Filtering & Retrieval Analysis
Customer Name Ending with ‘N’ & Purchase Amount > 500

Used LIKE '%n' to filter names ending with ‘N’.
Used BETWEEN 500 AND 1500 to restrict purchase amounts within a specific range.
Using SET Operators (UNION & INTERSECT)

UNION retrieves unique salesmanid values from salesman_table and customer_table.
INTERSECT retrieves common salesmanid values, meaning only salesmen linked to customers.
Joining salesman_table, customer_table, and orders_table

INNER JOIN used to fetch matching salesmanid records across tables.
RIGHT JOIN ensures all order records appear even if some do not have an assigned salesman.

📌 4. Business Insights from the Queries
Some customer_table records had invalid salesmanid values, which could indicate incorrect data entry or missing sales records.
The RIGHT JOIN query showed some orders were placed without a valid salesman, which could be an issue in real business scenarios.
The default city constraint ('unknown') ensures consistency in the dataset for missing location data.
