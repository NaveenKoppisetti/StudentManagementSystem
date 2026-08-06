<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>LOGIN FROM</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="css/style.css">
	</head>
	
	<body class="bg-light">
	
	<div class="container">
	
	    <div class="row justify-content-center mt-5">
	
	        <div class="col-md-5">
	
	            <div class="card shadow">
	
	                <div class="card-header text-center bg-primary text-white">
	
	                    <h3>Student Management System</h3>
	
	                </div>
	
	                <div class="card-body">
	
	                    <h4 class="text-center mb-4">Login</h4>
	
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
	
	                    <form action="LoginServlet" method="post">
	
	                        <div class="mb-3">
	
	                            <label class="form-label">Email</label>
	
	                            <input type="email"
	                                   name="email"
	                                   class="form-control"
	                                   required>
	
	                        </div>
	
	                        <div class="mb-3">
	
	                            <label class="form-label">Password</label>
	
	                            <input type="password"
	                                   name="password"
	                                   class="form-control"
	                                   required>
	
	                        </div>
	
	                        <div class="d-grid">
	
	                            <button type="submit"
	                                    class="btn btn-primary">
	
	                                Login
	
	                            </button>
	
	                        </div>
	
	                    </form>
	
	                    <div class="text-center mt-3">
	
	                        New User?
	
	                        <a href="register.jsp">
	
	                            Register Here
	
	                        </a>
	
	                    </div>
	
	                </div>
	
	            </div>
	
	        </div>
	
	    </div>
	
	</div>
	
	</body>
</html>