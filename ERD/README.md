# AirBnB Clone Project

Welcome to the **AirBnB Clone** project – a foundational part of the ALX Software Engineering program.

## 🧠 Project Overview

This project is a **full-stack clone** of the AirBnB web application, built step-by-step to demonstrate understanding of core backend and frontend development concepts. The goal is to rebuild AirBnB’s core functionality and design using a modular and scalable architecture.

## 🎯 Project Goals

- Build a flexible and reusable backend system in Python
- Create a functional command interpreter (console)
- Implement object-relational mapping (ORM) from scratch
- Connect a backend to a dynamic front-end using Flask and HTML/CSS
- Deploy a fully working web application

## ⚙️ Tech Stack

- **Programming Language:** Python 3
- **Frameworks:** Flask, Jinja2
- **Storage Engine:** File Storage & MySQL DB (ORM abstraction)
- **Frontend:** HTML5, CSS3
- **Deployment:** Linux / Ubuntu, Nginx, Gunicorn
- **Version Control:** Git & GitHub

## 👥 Contributors

This project is part of the ALX SE curriculum and will be developed in multiple phases as a team.

---


👥 Team Roles

This project involves collaboration among various team members, each with specific responsibilities. Below are the roles and their key duties:
🔹 Backend Developer

    Responsible for building the core logic of the application.

    Implements models, APIs, business logic, and integrates the database with the app.

    Ensures clean, testable, and scalable backend code.

🔹 Frontend Developer

    Designs and develops the user interface using HTML, CSS, and JavaScript (or frontend frameworks).

    Connects frontend with backend via API endpoints.

    Focuses on responsive, user-friendly, and accessible UI design.

🔹 Database Administrator (DBA)

    Manages the data layer: setting up databases, optimizing queries, ensuring data integrity.

    Designs schemas and relationships for models (e.g., User, Place, Review).

    Handles data backup, migration, and performance tuning.

🔹 DevOps Engineer

    Sets up version control, CI/CD pipelines, deployment environments, and monitors system health.

    Ensures the app is smoothly deployed to production using tools like Docker, Nginx, and Gunicorn.

    Manages server environments and scaling strategies.

🔹 QA Engineer / Tester

    Writes and runs unit, integration, and end-to-end tests to ensure code correctness.

    Finds and documents bugs or performance issues.

    Ensures reliability and compliance with project requirements.

🔹 Project Manager / Scrum Lead (optional role in larger teams)

    Coordinates between different team members.

    Tracks task progress, manages deadlines, and removes blockers.

    Ensures project is aligned with goals and learning outcomes.


🧰 Technology Stack

This project uses a collection of technologies across backend, frontend, and deployment layers. Each tool plays a critical role in building and running the AirBnB clone.

| Technology              | Description                                                  |
| ----------------------- | ------------------------------------------------------------ |
| **Python**              | The core programming language used to build the backend logic and data models. |
| **Flask**               | A lightweight Python web framework used to create RESTful APIs and serve dynamic web pages. |
| **MySQL**               | Relational database used to store user, property, booking, and review data. |
| **SQLAlchemy**          | ORM (Object-Relational Mapper) used to interact with the database using Python objects instead of raw SQL. |
| **HTML/CSS**            | Used to build and style the user interface of the website.   |
| **Jinja2**              | Templating engine integrated with Flask to dynamically generate HTML pages from Python. |
| **JavaScript**          | Enables client-side interactivity, form validation, and dynamic page behavior. |
| **Git**                 | Version control system for tracking source code changes and enabling team collaboration. |
| **GitHub**              | Online Git repository hosting platform used for source control and project collaboration. |
| **Linux/Ubuntu**        | Operating system used for deployment and testing of the project in a production-like environment. |
| **Nginx**               | A web server used as a reverse proxy to serve the Flask app in production. |
| **Gunicorn**            | A WSGI HTTP server for running Python web applications in production with high performance. |
| **Docker** *(optional)* | Containerization platform that ensures consistency across development and production environments. |




### 🗃️ Database Design

The AirBnB clone project relies on a relational database structure. Below are the core entities (tables), key fields, and how they relate to each other.

------

#### 🔸 **User**

Represents registered users of the platform.

**Key Fields:**

- `id` (Primary Key)
- `full_name`
- `email`
- `password_hash`
- `created_at`

A user can:

- Own multiple properties
- Create multiple bookings
- Leave reviews

------

#### 🔸 **Property**

Represents listings that users can rent.

**Key Fields:**

- `id` (Primary Key)
- `owner_id` (Foreign Key → User)
- `title`
- `location`
- `price_per_night`

A property:

- Belongs to one user (owner)
- Can have many bookings and reviews

------

#### 🔸 **Booking**

Represents a reservation made by a user for a property.

**Key Fields:**

- `id` (Primary Key)
- `user_id` (Foreign Key → User)
- `property_id` (Foreign Key → Property)
- `check_in_date`
- `check_out_date`

A booking:

- Is linked to one user
- Is linked to one property

------

#### 🔸 **Review**

Captures feedback from users who have stayed at properties.

**Key Fields:**

- `id` (Primary Key)
- `user_id` (Foreign Key → User)
- `property_id` (Foreign Key → Property)
- `rating` (e.g., 1 to 5)
- `comment`

A review:

- Is written by a user
- Is linked to a specific property

------

#### 🔸 **Payment**

Records payments for bookings.

**Key Fields:**

- `id` (Primary Key)
- `booking_id` (Foreign Key → Booking)
- `amount`
- `payment_status`
- `timestamp`

A payment:

- Belongs to one booking
- Ensures traceability of financial transactions

------

### 🔗 Entity Relationships Summary

- A **User** can own many **Properties**
- A **Property** can have many **Bookings** and **Reviews**
- A **Booking** is linked to one **User** and one **Property**
- A **Review** is tied to one **User** and one **Property**
- A **Payment** is tied to one **Booking**
- 


### 🧩 Feature Breakdown

This section outlines the key features implemented in the AirBnB Clone project. Each feature contributes to building a realistic, end-to-end accommodation booking platform.

------

#### 🔐 **User Management**

Enables users to register, log in, and manage their profile securely. This includes password hashing, authentication mechanisms, and session handling to ensure user data is protected.

------

#### 🏠 **Property Management**

Allows users to list properties with details like title, location, price, and description. Property owners can update or delete listings, giving them full control over their rental offerings.

------

#### 📅 **Booking System**

Enables guests to book available properties by selecting check-in and check-out dates. It checks for availability, calculates total cost, and prevents double bookings.

------

#### 💳 **Payment Integration**

Handles payments for confirmed bookings, simulating or integrating real-world payment processing. This ensures financial transactions are logged, secured, and associated with each booking.

------

#### ⭐ **Review and Rating System**

Allows users to leave reviews and ratings after a stay. This helps build trust, encourages transparency, and gives property owners feedback to improve.

------

#### 🌐 **Web Interface (Frontend)**

Provides a responsive and user-friendly interface for browsing properties, managing accounts, and making bookings. Built using HTML, CSS, and JavaScript, and rendered with Jinja2 templates.

------

#### 🛠️ **Command-Line Console (for Admin/Dev Use)**

A CLI tool to interact with the application’s models and storage engine directly. It allows creating, reading, updating, and deleting (CRUD) operations during development or testing.

------



### 🔐 API Security

Securing backend APIs is essential for protecting user data, ensuring platform integrity, and building trust in the system. The AirBnB Clone project will implement several critical security measures:

------

#### ✅ **Authentication**

All sensitive routes will require user authentication (e.g., via token-based methods like JWT). This ensures that only verified users can access protected resources such as bookings or payment history.

**Why it matters:** Prevents unauthorized access to user accounts and protects personal data.

------

#### ✅ **Authorization**

Role-based access control will be enforced to restrict actions based on user roles (e.g., only property owners can update/delete their listings).

**Why it matters:** Maintains platform integrity and prevents misuse of privileged features.

------

#### ✅ **Rate Limiting**

Limits the number of requests a client can make to the API within a specific time frame. Helps protect against brute-force attacks and abuse of public endpoints.

**Why it matters:** Enhances system stability and protects from denial-of-service (DoS) threats.

------

#### ✅ **Input Validation & Sanitization**

All inputs will be validated on the server side to avoid injection attacks (e.g., SQL injection or XSS). This includes data types, required fields, and format checks.

**Why it matters:** Prevents malicious inputs that can corrupt the database or expose vulnerabilities.

------

#### ✅ **HTTPS (TLS Encryption)**

All API communications will be encrypted using HTTPS to protect data in transit.

**Why it matters:** Ensures that sensitive data like passwords, tokens, and payments are not exposed to attackers during transmission.

------

#### ✅ **Secure Payment Handling**

While using mock or integrated payment services, all transactions will follow industry best practices including tokenization and redirection to secure payment gateways.

**Why it matters:** Protects user financial data and prevents fraud.

------

#### ✅ **Session and Token Expiry**

Session tokens (or access tokens) will expire after a specific time or upon logout to reduce the risk of hijacked sessions.

**Why it matters:** Reduces the chance of long-lived tokens being abused if leaked.


### 🔄 CI/CD Pipeline

**CI/CD (Continuous Integration and Continuous Deployment)** is a set of practices that automate the process of building, testing, and deploying code. It ensures that changes to the codebase are automatically verified and delivered to production or staging environments in a reliable and repeatable way.

Implementing a CI/CD pipeline in this project helps:

- ✅ Detect bugs early through automated tests on each push or pull request
- ✅ Maintain code quality and consistency across the team
- ✅ Automate deployments, reducing human error
- ✅ Speed up the release cycle for new features and bug fixes

------

#### 🛠️ Tools That Can Be Used

- **GitHub Actions** – Automates build, test, and deploy workflows directly from GitHub.
- **Docker** – Ensures the app runs in a consistent environment across dev/staging/production.
- **Pytest** – For running unit tests in the backend.
- **Flake8 / Black** – For linting and formatting Python code automatically.
- **Heroku / Render / DigitalOcean / AWS EC2** – As potential deployment environments.

------

### 📌 Sample Pipeline Flow (Future Implementation)

```
[ GitHub Push ] → [ Lint & Unit Tests Run via GitHub Actions ] → [ Docker Build ] → [ Staging Deployment ] → [ Production Deployment (Manual or Auto) ]
```
