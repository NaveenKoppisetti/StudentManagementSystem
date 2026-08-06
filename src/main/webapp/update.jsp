<%@page import="model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
Student student = (Student)session.getAttribute("student");

if(student == null){
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student</title>
</head>
<body>

<body class="bg-light">

<%@ include file="header.jsp" %>

<div class="container mt-5">

    <div class="card shadow">

        <div class="card-header bg-warning text-dark text-center">

            <h3>Update Profile</h3>

        </div>

        <div class="card-body">

            <form action="UpdateServlet" method="post">

                <div class="mb-3">
                    <label class="form-label">Name</label>
                    <input type="text"
                           class="form-control"
                           name="name"
                           value="<%= student.getName() %>"
                           required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <input type="email"
                           class="form-control"
                           name="email"
                           value="<%= student.getEmail() %>"
                           readonly>
                </div>

                <div class="mb-3">
                    <label class="form-label">Phone</label>
                    <input type="text"
                           class="form-control"
                           name="phone"
                           value="<%= student.getPhone() %>"
                           required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Course</label>
                    <input type="text"
                           class="form-control"
                           name="course"
                           value="<%= student.getCourse() %>"
                           required>
                </div>

                <div class="mb-3">
                    <label class="form-label">City</label>
                    <input type="text"
                           class="form-control"
                           name="city"
                           value="<%= student.getCity() %>"
                           required>
                </div>

		               <div class="row mt-3">
		
		    <div class="col-6">
		
		        <button type="submit" class="btn btn-warning w-100">
		
		            Update Profile
		
		        </button>
		
		    </div>
		
		    <div class="col-6">
		
		        <a href="home.jsp" class="btn btn-secondary w-100">
		
		            Back
		
		        </a>
		
		    </div>

		</div>

        </div>

    </div>

</div>
<%@ include file="footer.jsp" %>
</body>

</html>