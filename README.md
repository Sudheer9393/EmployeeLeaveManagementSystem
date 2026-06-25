# Employee Leave Management System

A simple **Java Full Stack Mini Project** developed using **JSP, Servlets, JDBC, MySQL, HTML, and CSS** for managing employee leave requests online. The system allows employees to apply for leave and track their leave status, while administrators can approve or reject leave requests.

---

## 📌 Project Overview

The Employee Leave Management System automates the process of managing employee leave applications. It replaces the traditional paper-based leave management process with a web-based system that is easy to use and maintain.

---

## ✨ Features

### Employee Module

* Secure Login
* Apply for Leave
* View Leave Status
* Track Approved or Rejected Requests

### Admin Module

* Secure Login
* View All Leave Requests
* Approve Leave Requests
* Reject Leave Requests
* Manage Employee Leave Records

---

## 🛠 Technologies Used

### Frontend

* HTML
* CSS
* JSP (Java Server Pages)

### Backend

* Java Servlets
* JDBC

### Database

* MySQL

### Server

* Apache Tomcat 9

### Development Tools

* Visual Studio Code
* JDK 8+

---

## 🏗 System Architecture

Employee → JSP Pages → Servlets → JDBC → MySQL Database

Admin → JSP Pages → Servlets → JDBC → MySQL Database

---

## 📂 Project Structure

```text
EmployeeLeaveManagementSystem
│
├── src
│   └── com
│       └── elms
│           ├── DBConnection.java
│           ├── LoginServlet.java
│           ├── ApplyLeaveServlet.java
│           ├── ViewLeaveServlet.java
│           └── UpdateStatusServlet.java
│
├── WebContent
│   ├── index.jsp
│   ├── employeeHome.jsp
│   ├── adminHome.jsp
│   ├── applyLeave.jsp
│   ├── viewLeave.jsp
│   ├── style.css
│   └── WEB-INF
│       └── web.xml
│
└── database.sql
```

---

## 🗄 Database Schema

### users Table

| Column   | Type        |
| -------- | ----------- |
| id       | INT         |
| username | VARCHAR(50) |
| password | VARCHAR(50) |
| role     | VARCHAR(20) |

### leaves Table

| Column     | Type         |
| ---------- | ------------ |
| leave_id   | INT          |
| username   | VARCHAR(50)  |
| leave_date | DATE         |
| reason     | VARCHAR(200) |
| status     | VARCHAR(20)  |

---

## 🚀 Installation and Setup

### Step 1: Clone the Repository

```bash
git clone https://github.com/your-username/EmployeeLeaveManagementSystem.git
cd EmployeeLeaveManagementSystem
```

### Step 2: Create Database

```sql
CREATE DATABASE employee_leave_db;
USE employee_leave_db;

CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50),
    password VARCHAR(50),
    role VARCHAR(20)
);

CREATE TABLE leaves(
    leave_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50),
    leave_date DATE,
    reason VARCHAR(200),
    status VARCHAR(20)
);
```

### Step 3: Insert Sample Data

```sql
INSERT INTO users(username,password,role)
VALUES
('admin','admin123','admin'),
('venkat','1234','employee'),
('kumar','1234','employee');
```

### Step 4: Configure Database Connection

Open `DBConnection.java` and update:

```java
DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/employee_leave_db",
    "root",
    "your_password"
);
```

### Step 5: Add MySQL JDBC Driver

Download MySQL Connector/J and place the JAR file inside:

```text
WebContent/WEB-INF/lib/
```

### Step 6: Run the Project

1. Start MySQL Server.
2. Start Apache Tomcat Server.
3. Deploy the project on Tomcat.
4. Open your browser:

```text
http://localhost:8080/EmployeeLeaveManagementSystem/
```

---

## 🔑 Sample Login Credentials

### Admin

```text
Username: admin
Password: admin123
```

### Employee

```text
Username: venkat
Password: 1234
```

---

## 📸 Project Modules

* Login Module
* Employee Dashboard Module
* Leave Application Module
* Leave Status Module
* Admin Dashboard Module
* Database Connectivity Module
* Session Management Module

---

## 🎯 Advantages

* Easy to use interface
* Reduces paperwork
* Fast leave processing
* Secure data management
* Centralized leave records
* Improved organizational efficiency

---

## 🔮 Future Enhancements

* Email Notifications
* Password Encryption
* Leave Balance Management
* Attendance Integration
* Report Generation
* Mobile Application Support

---

## 📄 License

This project is developed for educational and learning purposes as a Java Full Stack Mini Project.
