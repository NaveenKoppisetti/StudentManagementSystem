<%@ page import = "model.Student" language="java" contentType="text/html; charset=UTF-8"
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
<title>Student Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="css/style.css">
</head>
<body class="bg-light">

<div class="container mt-5">

    <div class="card shadow">

        <div class="card-header bg-info text-white text-center">

            <h3>Student Details</h3>

        </div>

        <div class="card-body">

            <table class="table table-bordered table-hover">

                <tr>
                    <th>ID</th>
                    <td><%= student.getId() %></td>
                </tr>

                <tr>
                    <th>Name</th>
                    <td><%= student.getName() %></td>
                </tr>

                <tr>
                    <th>Email</th>
                    <td><%= student.getEmail() %></td>
                </tr>

                <tr>
                    <th>Phone</th>
                    <td><%= student.getPhone() %></td>
                </tr>

                <tr>
                    <th>Course</th>
                    <td><%= student.getCourse() %></td>
                </tr>

                <tr>
                    <th>City</th>
                    <td><%= student.getCity() %></td>
                </tr>

            </table>

            <div class="text-center">

                <a href="home.jsp" class="btn btn-primary">

                    Back to Dashboard

                </a>

            </div>

        </div>

    </div>

</div>
<%@ include file="footer.jsp" %>
</body>
</html>