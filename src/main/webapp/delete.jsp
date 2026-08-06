<%@ page import="model.Student"%>

<%
Student student = (Student) session.getAttribute("student");

if(student == null){
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Delete Account</title>

</head>

<body class="bg-light">

<%@ include file="header.jsp" %>

<div class="container mt-5">

    <div class="card shadow">

        <div class="card-header bg-danger text-white text-center">

            <h3>Delete Account</h3>

        </div>

        <div class="card-body text-center">

            <h4 class="mb-4">

                Are you sure you want to delete your account?

            </h4>

            <div class="row">

                <div class="col-6">

                    <form action="DeleteServlet" method="post">

                        <button class="btn btn-danger w-100">

                            Yes, Delete

                        </button>

                    </form>

                </div>

                <div class="col-6">

                    <a href="home.jsp"
                       class="btn btn-secondary w-100">

                        Cancel

                    </a>

                </div>

            </div>

        </div>

    </div>

</div>
<%@ include file="footer.jsp" %>
</body>

</html>