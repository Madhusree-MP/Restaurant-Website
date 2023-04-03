package com.servlet.admin.dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.servlet.admin.bean.Admin;

public class AdminDao {
	private String jdbcURL = "jdbc:mysql://localhost:3306/admin?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "root";
	private String jdbcDriver = "com.mysql.jdbc.driver";
	
	private static final String INSERT_QUERY ="INSERT INTO menu" + " (name, price) VALUES " + " (?,?);";
	private static final String SELECT_QUERY = "SELECT id,name,price from  where id=?";
	private static final String SELECT_ALL_QUERY = "select * from ";
	private static final String DELETE_QUERY = "delete from  where id=?;";
	private static final String UPDATE_QUERY = "update  set name=?, price=? where id=?;";
	public AdminDao() {
		
	}
	
	protected Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("jdbcDriver");
			con = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch(SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public void insert(Admin admin) throws SQLException {
		System.out.println(INSERT_QUERY);
		try(Connection con = getConnection();
				PreparedStatement ps = con.prepareStatement(INSERT_QUERY)){
			ps.setString(1,admin.getName());
			ps.setString(2,admin.getPrice());
			System.out.println(ps);
			ps.executeUpdate();
		}
		catch(SQLException e) {
			printSQLException(e);
		}
	}
	
	public Admin Select(int id) {
		Admin admin = null;
		try( Connection con = getConnection();
				PreparedStatement ps = con.prepareStatement(SELECT_QUERY);){
			ps.setInt(1,id);
			System.out.println(ps);
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				String name = rs.getString("name");
				String price = rs.getString("price");
				admin = new Admin(id,name,price);
			}
			} catch(SQLException e) {
				printSQLException(e);
			}
			return admin;
		
	}
	
	public List<Admin> SelectAllQuery(){
		List<Admin> admins = new ArrayList<>();
		try(Connection con = getConnection();
				PreparedStatement ps = con.prepareStatement(SELECT_ALL_QUERY);){
			System.out.println(ps);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String price = rs.getString("price");
				admins.add(new Admin(id,name,price));
			}
			}catch(SQLException e) {
				printSQLException(e);
		}
		return admins;
	}
	
	public boolean update(Admin admin) throws SQLException{
		boolean rowUpdated;
		try (Connection con = getConnection();
				PreparedStatement statement = con.prepareStatement(UPDATE_QUERY);){
			System.out.println("updated menu:"+statement);
			statement.setString(1, admin.getName());
			statement.setString(2, admin.getPrice());
			
			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}
	
	public boolean delete(int id) throws SQLException{
		boolean rowDeleted;
		try(Connection con = getConnection();
				PreparedStatement statement = con.prepareStatement(DELETE_QUERY);){
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate()>0;
		}
		return rowDeleted;
	}

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex ) {
			if(e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t!=null) {
					System.out.println("Cause: " + t);
					t =t.getCause();
				}
			}
		}
		
	}
 
	
}
