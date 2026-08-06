package controller;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException{
				
			HttpSession session = req.getSession(false);
			if(session != null) {
				session.invalidate();
			}
			Cookie cookie = new Cookie("studentEmail", "");

			cookie.setMaxAge(0);

			res.addCookie(cookie);
			res.sendRedirect("login.jsp");
	}

}
