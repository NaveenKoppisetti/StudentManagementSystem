package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import dao.StudentDAO;
import model.Student;
import util.PasswordUtil;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        Student student = new Student();

        student.setName(req.getParameter("name"));
        student.setEmail(req.getParameter("email"));

        // Hash the password before storing
        String hashedPassword = PasswordUtil.hashPassword(req.getParameter("password"));
        student.setPassword(hashedPassword);

        student.setPhone(req.getParameter("phone"));
        student.setCourse(req.getParameter("course"));
        student.setCity(req.getParameter("city"));

        StudentDAO dao = new StudentDAO();

        HttpSession session = req.getSession();

        if (dao.emailExists(student.getEmail())) {

            session.setAttribute("errorMessage", "Email already registered.");

            res.sendRedirect("register.jsp");
            return;
        }

        boolean result = dao.registerStudent(student);

        if (result) {

            session.setAttribute("successMessage",
                    "Registration Successful. Please Login.");

            res.sendRedirect("login.jsp");

        } else {

            session.setAttribute("errorMessage",
                    "Registration Failed.");

            res.sendRedirect("register.jsp");
        }
    }
}