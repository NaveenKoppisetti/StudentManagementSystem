# 🎓 Student Management System

A secure and responsive **Student Management System** developed using **Java Servlets, JSP, JDBC, MySQL, Bootstrap 5, and Apache Tomcat 11**. The application demonstrates complete user authentication, session management, CRUD operations, form validation, password encryption, and secure access control following the MVC architecture.

This project was developed as a hands-on learning project while exploring Java Full Stack development and serves as a portfolio-ready web application.

---

# 📌 Features

### 👤 User Authentication
- Student Registration
- Secure Login
- Logout Functionality
- Session Management
- Cookie Management

### 🔒 Security
- SHA-256 Password Hashing
- Authentication Filter
- Protected Routes
- Browser Cache Control
- Duplicate Email Validation
- HTML5 Form Validation

### 📋 Student Management
- View Student Details
- Update Student Profile
- Delete Student Account
- Dashboard

### 🎨 User Interface
- Responsive Bootstrap 5 Design
- Professional Dashboard
- Flash Success & Error Messages
- Custom 404 Error Page
- Custom 500 Error Page

---

# 🛠️ Technologies Used

| Technology | Purpose |
|------------|---------|
| Java 21 | Backend Programming |
| Jakarta Servlet 6.0 | Request Processing |
| JSP | Dynamic Web Pages |
| JDBC | Database Connectivity |
| MySQL | Database |
| Apache Tomcat 11 | Web Server |
| Bootstrap 5 | Responsive UI |
| HTML5 | Frontend Structure |
| CSS3 | Styling |

---

# 🏗️ Project Architecture

The project follows the **MVC (Model-View-Controller)** architecture.

```
                Client (Browser)
                        │
                        ▼
                 JSP Pages (View)
                        │
                        ▼
              Servlet Controller
                        │
                        ▼
              StudentDAO (Model)
                        │
                        ▼
                 MySQL Database
```

---

# 📂 Project Structure

```
StudentManagementSystem
│
├── src
│   ├── controller
│   │     ├── LoginServlet.java
│   │     ├── RegisterServlet.java
│   │     ├── UpdateServlet.java
│   │     ├── DeleteServlet.java
│   │     └── LogoutServlet.java
│   │
│   ├── dao
│   │     └── StudentDAO.java
│   │
│   ├── database
│   │     └── DBConnection.java
│   │
│   ├── filter
│   │     ├── AuthenticationFilter.java
│   │     └── CacheControlFilter.java
│   │
│   ├── model
│   │     └── Student.java
│   │
│   └── util
│         └── PasswordUtil.java
│
├── WebContent / webapp
│   ├── login.jsp
│   ├── register.jsp
│   ├── home.jsp
│   ├── details.jsp
│   ├── update.jsp
│   ├── delete.jsp
│   ├── header.jsp
│   ├── footer.jsp
│   ├── 404.jsp
│   ├── 500.jsp
│   └── css
│
├── screenshots
│
├── README.md
│
└── .gitignore
```

---

# 🔐 Security Features

This project implements several security mechanisms commonly used in Java web applications.

- Passwords are encrypted using **SHA-256** before storing them in the database.
- Authentication is handled using **HTTP Sessions**.
- Browser Back Button access after logout is prevented using **Cache-Control Headers**.
- Unauthorized users cannot access protected pages through **Servlet Filters**.
- Duplicate email registration is prevented before inserting records into the database.

---

# 🚀 Application Workflow

### Registration

```
User
   │
   ▼
Register Form
   │
   ▼
Validation
   │
   ▼
SHA-256 Password Hashing
   │
   ▼
Database
```

### Login

```
User
   │
   ▼
Login Form
   │
   ▼
SHA-256 Hash
   │
   ▼
Database Verification
   │
   ▼
Session Created
   │
   ▼
Dashboard
```

---

# 💻 Database

Database Name

```
studentmanagementsystem
```

Table

```
students
```

Columns

| Column | Type |
|---------|------|
| id | INT (Primary Key) |
| name | VARCHAR |
| email | VARCHAR |
| password | VARCHAR |
| phone | VARCHAR |
| course | VARCHAR |
| city | VARCHAR |

---

# 📸 Screenshots

Add screenshots after deployment.

- Login Page
- Registration Page
- Dashboard
- Student Details
- Update Profile
- Delete Confirmation
- Custom Error Pages

---

# 📚 Concepts Covered

This project demonstrates practical implementation of:

- Java Servlets
- JSP
- JDBC
- MVC Architecture
- CRUD Operations
- Sessions
- Cookies
- Servlet Filters
- Exception Handling
- Password Encryption
- Form Validation
- Authentication & Authorization
- Bootstrap Responsive UI

---

# 🔮 Future Enhancements

- Forgot Password
- Email Verification
- Profile Picture Upload
- Admin Panel
- Role-Based Access Control
- Spring Boot Migration
- REST APIs
- JWT Authentication
- Docker Deployment

---

# 👨‍💻 Author

**Naveen Koppisetti**

- 2026 Computer Science Engineering Graduate
- Java Full Stack Developer
- Passionate about Backend Development and Problem Solving

---

# ⭐ Support

If you found this project useful, consider giving it a ⭐ on GitHub.