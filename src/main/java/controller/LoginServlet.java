package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import dao.StudentDAO;
import model.Student;
import util.PasswordUtil;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String email = req.getParameter("email");

        // Hash the entered password
        String password = PasswordUtil.hashPassword(req.getParameter("password"));

        StudentDAO dao = new StudentDAO();

        Student student = dao.loginStudent(email, password);

        HttpSession session = req.getSession();

        if (student != null) {

            session.setAttribute("student", student);

            Cookie cookie = new Cookie("studentEmail", student.getEmail());
            cookie.setMaxAge(60 * 2);
            res.addCookie(cookie);

            res.sendRedirect("home.jsp");

        } else {

            session.setAttribute("errorMessage",
                    "Invalid Email or Password.");

            res.sendRedirect("login.jsp");
        }
    }
}