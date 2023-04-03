package com.servlet.signup;

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

/**
 * Servlet implementation class SignuppageServlet
 */
@WebServlet("/signup")
public class SignuppageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String newpwd = request.getParameter("newpwd");
		String cnfpwd = request.getParameter("cnfpwd");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup?useSSL=false","root","root");
			PreparedStatement pst = con.prepareStatement("insert into users(fname,lname,email,newpwd,cnfpwd) values(?,?,?,?,?)");
			pst.setString(1, fname);
			pst.setString(2, lname);
			pst.setString(3, email);
			pst.setString(4, newpwd);
			pst.setString(5, cnfpwd);
			
			int count = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("index.jsp");
			if (count > 0) {
				request.setAttribute("status", "success");
			}else {
				request.setAttribute("status", "failed");
			}
			
			dispatcher.forward(request, response);
		}catch(Exception e){
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
