package controller;

import java.io.IOException;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import model.Student;
import dao.StudentDAO;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        HttpSession session = req.getSession(false);

        if (session == null) {
            res.sendRedirect("login.jsp");
            return;
        }

        Student student = (Student) session.getAttribute("student");

        StudentDAO dao = new StudentDAO();

        boolean result = dao.deleteStudent(student.getEmail());

        if (result) {

            session.invalidate();

            res.sendRedirect("login.jsp");

        } else {

            res.getWriter().println("<h2>Delete Failed</h2>");

        }
    }
}