# 🗃️ Airbnb Clone – ERD Requirements

## 📌 Purpose

This document outlines the **Entity-Relationship Diagram (ERD)** used in the Airbnb Clone project. It defines the database structure by describing the key entities, their fields, and how they are related to each other in a relational database model.

---

## 📋 Entities and Their Attributes

### 1. 🧑 User
Represents all users of the platform, including guests and property owners.

| Field Name      | Type       | Description                        |
|------------------|------------|------------------------------------|
| id               | int (PK)   | Unique identifier for the user     |
| full_name        | string     | User’s full name                   |
| email            | string     | Unique email address               |
| password_hash    | string     | Hashed password for authentication |
| created_at       | datetime   | Account creation timestamp         |

---

### 2. 🏠 Property
Represents a listing that users can rent.

| Field Name      | Type       | Description                              |
|------------------|------------|------------------------------------------|
| id               | int (PK)   | Unique identifier for the property       |
| owner_id         | int (FK)   | References `user.id` (property owner)    |
| title            | string     | Title of the property                    |
| location         | string     | Property address or city                 |
| price_per_night  | float      | Price per night for the listing          |

---

### 3. 📅 Booking
Represents a reservation made by a user for a property.

| Field Name      | Type       | Description                                 |
|------------------|------------|---------------------------------------------|
| id               | int (PK)   | Unique identifier for the booking           |
| user_id          | int (FK)   | References `user.id` (guest)                |
| property_id      | int (FK)   | References `property.id`                    |
| check_in         | date       | Check-in date                               |
| check_out        | date       | Check-out date                              |

---

### 4. ⭐ Review
Represents a review left by a user after a stay.

| Field Name      | Type       | Description                                 |
|------------------|------------|---------------------------------------------|
| id               | int (PK)   | Unique identifier for the review            |
| user_id          | int (FK)   | References `user.id`                        |
| property_id      | int (FK)   | References `property.id`                    |
| rating           | int        | Rating out of 5                             |
| comment          | text       | Optional written feedback                   |

---

### 5. 💳 Payment
Captures payment information for bookings.

| Field Name      | Type       | Description                                 |
|------------------|------------|---------------------------------------------|
| id               | int (PK)   | Unique identifier for the payment           |
| booking_id       | int (FK)   | References `booking.id`                     |
| amount           | float      | Amount paid                                 |
| status           | string     | Payment status (e.g., success, failed)      |
| payment_date     | datetime   | Timestamp of when the payment was made      |

---

## 🔗 Entity Relationships Summary

- A **User** can:
  - Own many **Properties**
  - Make many **Bookings**
  - Leave many **Reviews**

- A **Property**:
  - Belongs to one **User**
  - Can have many **Bookings**
  - Can have many **Reviews**

- A **Booking**:
  - Belongs to one **User**
  - Belongs to one **Property**
  - Has one **Payment**

- A **Review**:
  - Belongs to one **User**
  - Belongs to one **Property**

- A **Payment**:
  - Belongs to one **Booking**

---

## 📎 ER Diagram File

See the diagram in this folder: `airbnb_erd.png`

(Optional) You can edit the diagram using the file: `airbnb_erd.drawio`

---
