<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">

</head>

<body class="bg-light">

<div class="container">

    <div class="row justify-content-center mt-5">

        <div class="col-md-6">

            <div class="card shadow">

                <div class="card-header bg-success text-white text-center">

                    <h3>Student Management System</h3>

                </div>

                <div class="card-body">

                    <h4 class="text-center mb-4">
                        Student Registration
                    </h4>

                    <%
                    String successMessage = (String) session.getAttribute("successMessage");

                    if(successMessage != null){
                    %>

                    <div class="alert alert-success">

                        <%= successMessage %>

                    </div>

                    <%
                    session.removeAttribute("successMessage");
                    }

                    String errorMessage = (String) session.getAttribute("errorMessage");

                    if(errorMessage != null){
                    %>

                    <div class="alert alert-danger">

                        <%= errorMessage %>

                    </div>

                    <%
                    session.removeAttribute("errorMessage");
                    }
                    %>

                   <form action="RegisterServlet" method="post">

					    <div class="mb-3">
					
					        <label class="form-label">Name</label>
					
					        <input
					            type="text"
					            name="name"
					            class="form-control"
					            minlength="3"
					            maxlength="50"
					            pattern="[A-Za-z ]+"
					            title="Only letters and spaces are allowed."
					            required>
					
					    </div>
					
					    <div class="mb-3">
					
					        <label class="form-label">Email</label>
					
					        <input
					            type="email"
					            name="email"
					            class="form-control"
					            required>
					
					    </div>
					
					    <div class="mb-3">
					
					        <label class="form-label">Password</label>
					
					        <input
					            type="password"
					            name="password"
					            class="form-control"
					            minlength="8"
					            maxlength="20"
					            required>
					
					    </div>
					
					    <div class="mb-3">
					
					        <label class="form-label">Phone</label>
					
					        <input
					            type="tel"
					            name="phone"
					            class="form-control"
					            pattern="[0-9]{10}"
					            maxlength="10"
					            title="Enter a valid 10-digit phone number."
					            required>
					
					    </div>
					
					    <div class="mb-3">
					
					        <label class="form-label">Course</label>
					
					        <input
					            type="text"
					            name="course"
					            class="form-control"
					            minlength="2"
					            maxlength="50"
					            required>
					
					    </div>
					
					    <div class="mb-3">
					
					        <label class="form-label">City</label>
					
					        <input
					            type="text"
					            name="city"
					            class="form-control"
					            minlength="2"
					            maxlength="50"
					            pattern="[A-Za-z ]+"
					            title="Only letters and spaces are allowed."
					            required>
					
					    </div>
					
					    <div class="d-grid">
					
					        <button
					            type="submit"
					            class="btn btn-success">
					
					            Register
					
					        </button>
					
					    </div>
					
					</form>

                    <div class="text-center mt-3">

                        Already have an account?

                        <a href="login.jsp">

                            Login Here

                        </a>

                    </div>

                </div>

            </div>

        </div>

    </div>

</div>

</body>
</html>