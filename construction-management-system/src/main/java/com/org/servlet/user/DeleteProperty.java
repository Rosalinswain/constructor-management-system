package com.org.servlet.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.org.dao.PropertiesDao;

@WebServlet("/delete_property")
public class DeleteProperty extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String strPropId = req.getParameter("propertyId");
		
		int propId = Integer.parseInt(strPropId);
		
		PropertiesDao dao = new PropertiesDao();
		
		dao.removePropertyById(propId);
		
		resp.sendRedirect("user/view_property.jsp");
	}
	

}
