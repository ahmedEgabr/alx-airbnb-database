# 📘 Database Normalization – AirBnB Clone

## Objective
This document outlines the normalization process applied to the Airbnb Clone project database schema. The goal is to ensure that all tables comply with the **Third Normal Form (3NF)** to reduce redundancy and improve data integrity.

---

## 📗 Step-by-Step Normalization Review

### 🔹 First Normal Form (1NF)
- All attributes are atomic (e.g., no multiple values in a single field).
- Each table has a primary key.
- No repeating groups.

✅ The schema satisfies 1NF.

---

### 🔹 Second Normal Form (2NF)
- The database is in 1NF.
- All non-key attributes are fully functionally dependent on the **whole primary key** (no partial dependency).

✅ All tables have simple primary keys (`id`), and all other fields depend on the full key. No partial dependencies.

---

### 🔹 Third Normal Form (3NF)
- The database is in 2NF.
- No **transitive dependencies** (i.e., non-key attributes depend only on the primary key, not other non-key attributes).

✅ All attributes in each table are directly dependent on the primary key.
✅ No derived or computed fields are stored.

---

## 🧼 Optimization & Design Notes

- **No data duplication** (e.g., payment info not stored in both Booking and Payment).
- **Foreign keys** used instead of nested objects or redundant references.
- **Clear relationships** between User, Property, Booking, Review, and Payment maintain logical separation of concerns.

---

## ✅ Conclusion

The current database design satisfies **Third Normal Form (3NF)**. No changes were required to achieve this, as the schema already avoids redundancy and enforces proper dependencies.

