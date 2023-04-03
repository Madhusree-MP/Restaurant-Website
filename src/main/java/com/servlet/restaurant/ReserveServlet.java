package com.servlet.restaurant;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/reserve")
public class ReserveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String noOfPeople = request.getParameter("noOfPeople");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","root");
			PreparedStatement pst = con.prepareStatement("insert into reserve(noOfPeople,date,time) values(?,?,?)");
			pst.setString(1, noOfPeople);
			pst.setString(2, date);
			pst.setString(3, time);
			dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	}
}
