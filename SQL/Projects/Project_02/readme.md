# 🧱 Relational Database Design – Users, Roles & Accounts

## 📌 Project Objective
This project focuses on translating a relational database design into a working schema in SQL Server. It involves defining relationships between users, their roles, account statuses, and linking everything using primary and foreign keys. This exercise strengthens understanding of data modeling, schema creation, and referential integrity.

---

## 🧰 Tools & Technologies
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- T-SQL (Transact-SQL)

---

## 🗂 Tables Created

| Table Name | Description |
|------------|-------------|
| `Roles`    | Stores different types of user roles like Admin, Customer |
| `Status`   | Represents account statuses such as Active, Suspended |
| `Users`    | Contains user data including name, email, and role reference |
| `Accounts` | Stores account details including linked user and status |

---

## ✅ Key Tasks Completed

1. 🎯 Designed normalized schema using proper data types  
2. 🔑 Defined primary and foreign key constraints  
3. 🧾 Inserted sample data into all tables (2+ rows each)  
4. 🧼 Implemented deletion logic to maintain referential integrity  

---

## 📑 Sample SQL Snippets

```sql
-- Create Users Table with FK to Roles
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    RoleID INT,
    FOREIGN KEY (RoleID) REFERENCES Roles(RoleID)
);
