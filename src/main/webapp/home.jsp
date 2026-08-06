<%@ page import="model.Student"%>

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
<title>Home</title>
</head>

<body class="bg-light">
<%@ include file="header.jsp" %>

<div class="container mt-5">

    <div class="card shadow">

        <div class="card-header bg-primary text-white text-center">



        </div>

        <div class="card-body">

            <h2 class="text-center mb-4">
                Welcome, <%= student.getName() %>
            </h2>

            <div class="row">

                <div class="col-md-6 mb-3">

                    <form action="details.jsp" method="get">

                        <button class="btn btn-info w-100">
                            Student Details
                        </button>

                    </form>

                </div>

                <div class="col-md-6 mb-3">

                    <form action="update.jsp" method="get">

                        <button class="btn btn-warning w-100">
                            Update Profile
                        </button>

                    </form>

                </div>

                <div class="col-md-6 mb-3">

                    <form action="delete.jsp" method="get">

                        <button class="btn btn-danger w-100">
                            Delete Account
                        </button>

                    </form>

                </div>

                <div class="col-md-6 mb-3">

                    <form action="LogoutServlet" method="post">

                        <button class="btn btn-secondary w-100">
                            Logout
                        </button>

                    </form>

                </div>

            </div>

        </div>

    </div>

</div>
<%@ include file="footer.jsp" %>
</body>
</html>