package com.servlet.admin.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.servlet.admin.dao.AdminDao;

/**
 * Servlet implementation class AdminNewServlet
 */
@WebServlet("/new")
public class AdminNewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AdminDao adminDao;
	
	public void init() throws ServletException {
		adminDao = new AdminDao();
		
	}
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		showNewForm(request, response);
	}
	
	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		jakarta.servlet.RequestDispatcher dispatcher = request.getRequestDispatcher("menu-form.jsp");
		dispatcher.forward(request, response);
	}

	

}
