# Airbnb Clone – Sample Data Seeding

This dataset provides **initial sample data** for development and testing of the Airbnb Clone project.

## 📌 Inserted Entities

### 👤 Users
- 3 users: Alice (host), Bob (guest), Charlie (guest)

### 🏠 Properties
- 3 properties listed in Egypt, owned by users 1 and 2

### 📅 Bookings
- 3 bookings across different properties and dates

### ⭐ Reviews
- Each guest leaves feedback after their stays

### 💳 Payments
- Two successful and one pending payment related to bookings

## ⚙️ Usage

You can load this seed data after initializing your schema by running:

```bash
psql -U <your_user> -d <your_db> -f database-script-0x02/seed.sql
