# 📝 Hands-on Assignment 6  

## 📌 **Overview**  
This assignment is part of the **Intellipaat SQL training program** and focuses on **views, transactions, and exception handling** to enhance database management skills.  

## 🛠 **Skills Covered**  
✔ Creating and Using **Views** (`CREATE VIEW`)  
✔ Working with **Transactions** (`BEGIN TRANSACTION`, `COMMIT`, `ROLLBACK`)  
✔ Handling Errors using **TRY...CATCH**  

## 📂 **Files Included**  
- **SQL_Assignment_Prob_Stat_6.pdf** → Contains the problem statement.  
- **SQL_Script.sql** → Contains all SQL queries for the assignment.  
- **README.md** → Documentation and details about this assignment.  

## 📖 **Assignment Tasks**  

| #  | Task Description | SQL Concept Used |
|----|----------------|----------------|
| 1  | Create a **view** named `customer_san_jose` for customers from San Jose. | `CREATE VIEW` |
| 2a  | Inside a **transaction**, update `first_name` to Francis where `last_name` is Jordan, then **rollback**. | `BEGIN TRANSACTION`, `UPDATE`, `ROLLBACK` |
| 2b  | Update `first_name` to Alex where `last_name` is Jordan. | `UPDATE` |
| 3  | Use `TRY...CATCH` to divide 100 by 0 and print the error message. | `TRY...CATCH` Exception Handling |
| 4  | Insert a new record into the `Orders` table inside a **transaction** and commit it. | `INSERT`, `BEGIN TRANSACTION`, `COMMIT` |

## 🚀 **Execution Instructions**  
1. **Create** the required `VIEW` for customers from San Jose.  
2. **Execute** the transaction-based update queries and verify rollback behavior.  
3. **Run** the `TRY...CATCH` block and observe the SQL error handling mechanism.  
4. **Insert** a new record into `Orders` table and ensure transaction handling.  

## 📢 **Notes**  
- This assignment helps in understanding **database integrity, error handling, and transaction control**.  
- Ensure that the **Customer** and **Orders** tables exist before executing queries.  
- Verify the **TRY...CATCH** block outputs an error message properly.  
