package controller;

import java.io.IOException;

import dao.StudentDAO;
import model.Student;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        Student student = new Student();

        student.setName(req.getParameter("name"));
        student.setEmail(req.getParameter("email"));
        student.setPhone(req.getParameter("phone"));
        student.setCourse(req.getParameter("course"));
        student.setCity(req.getParameter("city"));

        StudentDAO dao = new StudentDAO();

        boolean result = dao.updateStudent(student);

        if (result) {

            HttpSession session = req.getSession();

            session.setAttribute("student", student);

            res.sendRedirect("home.jsp");

        } else {

            res.getWriter().println("<h2>Update Failed</h2>");

        }

    }
}