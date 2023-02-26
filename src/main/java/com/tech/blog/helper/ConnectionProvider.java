package com.tech.blog.helper;
import java.sql.*;
public class ConnectionProvider {
	private static Connection con;
	public static Connection getConn() {
		
		try {
		if (con == null) {	
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","akash");
		}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	
	

}
