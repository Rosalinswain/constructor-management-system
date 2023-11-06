package com.org.servlet.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dto.User;

@WebServlet("/admin_login")
public class AdminLogin extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		HttpSession session = req.getSession();
		
		if("admin@gmail.com".equals(email)&&"admin".equals(password)) {
			session.setAttribute("adminObj", new User());
			resp.sendRedirect("admin/admin_home.jsp");
		}
		else {
			session.setAttribute("failed", "Invalid Email or Password");
			resp.sendRedirect("AdminLogin.jsp");
		}
	}
}
