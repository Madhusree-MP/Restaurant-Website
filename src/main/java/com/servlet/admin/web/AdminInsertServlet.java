package com.servlet.admin.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import com.servlet.admin.bean.Admin;

import com.servlet.admin.dao.AdminDao;

/**
 * Servlet implementation class AdminInsertServlet
 */
@WebServlet("/insert")
public class AdminInsertServlet extends HttpServlet {
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
		try {
			insert(request, response);
		} catch (SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		
		Admin newMenu = new Admin(name, price);
		adminDao.insert(newMenu);
		response.sendRedirect("list");
	}
	
}
