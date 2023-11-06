package com.org.servlet.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.UserDao;
import com.org.dto.User;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		
		User u = new User();
		u.setEmail(email);
		u.setName(name);
		u.setPassword(password);
		
		UserDao dao = new UserDao();
		dao.registerUser(u);
		
		HttpSession session = req.getSession();
		session.setAttribute("success", "Registered Succcessfully");
		resp.sendRedirect("user_login.jsp");
		
	}
}