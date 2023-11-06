package com.org.servlet.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.UserDao;

@WebServlet("/user_login")
public class UserLogin extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		HttpSession session = req.getSession();
		UserDao dao= new UserDao();
		
		if(dao.loginUser(email, password) != null)
		{
			
			session.setAttribute("user", dao.loginUser(email, password));
			resp.sendRedirect("user/user_home.jsp");
		}
		else 
		{
			session.setAttribute("failed", "invalid mail or password");
			resp.sendRedirect("user_login.jsp");
		}
	}
}
