package database;

import java.sql.*;
public class DBConnection {
	
	protected Connection con;
	
	public DBConnection() {
		String url = "jdbc:mysql://localhost:3306/StudentManagementSystem";
		String username = "root";
		String password = "naveen";
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url,username,password);
			System.out.println("Connection Succesfully");
		} catch(Exception e){
			e.printStackTrace();
		}
	}

}
