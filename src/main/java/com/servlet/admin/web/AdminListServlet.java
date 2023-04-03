package com.servlet.admin.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;

import com.servlet.admin.bean.Admin;
import com.servlet.admin.dao.AdminDao;

@WebServlet("/list")
public class AdminListServlet extends HttpServlet {
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
			listMenu(request, response);
		} catch (SQLException | IOException | ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void listMenu(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		try {
			List<Admin> listMenu = adminDao.SelectAllQuery();
			request.setAttribute("listMenu", listMenu);
			jakarta.servlet.RequestDispatcher dispatcher = request.getRequestDispatcher("menu-list.jsp");
			dispatcher.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}
	
}
}
