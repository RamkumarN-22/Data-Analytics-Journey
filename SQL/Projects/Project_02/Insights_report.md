# 📊 Insights Report – Relational Database Design Project

## 🔧 Design Summary

- Designed four interrelated tables: `Roles`, `Status`, `Users`, and `Accounts`
- Chose appropriate data types like `INT`, `VARCHAR`, and `DECIMAL`
- Defined **foreign key constraints** to enforce referential integrity:
  - `Users.RoleID` → `Roles.RoleID`
  - `Accounts.UserID` → `Users.UserID`
  - `Accounts.StatusID` → `Status.StatusID`

---

## 🧾 Sample Data Inserted

### Roles
| RoleID | RoleName   |
|--------|------------|
| 1      | Admin      |
| 2      | Customer   |

### Status
| StatusID | StatusName |
|----------|------------|
| 1        | Active     |
| 2        | Suspended  |

### Users
| UserID | UserName     | Email                  | RoleID |
|--------|--------------|------------------------|--------|
| 101    | Ram Kumar    | ramkumar@example.com   | 1      |
| 102    | Priya Sharma | priya@example.com      | 2      |

### Accounts
| AccountID | UserID | StatusID | Balance   |
|-----------|--------|----------|-----------|
| 201       | 101    | 1        | ₹25,000.00 |
| 202       | 102    | 2        | ₹12,000.50 |

---

## 🔐 Deletion Handling

- Data was deleted using **child-to-parent order** to preserve integrity
- Sample commands:
```sql
DELETE FROM Accounts;
DELETE FROM Users;
DELETE FROM Roles;
DELETE FROM Status;
