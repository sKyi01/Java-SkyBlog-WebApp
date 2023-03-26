package com.tech.blog.dao;
import java.sql.*;

import org.springframework.stereotype.Component;

import com.tech.blog.entities.User;




public class UserDao {
	
	private Connection con;
	
	public UserDao(Connection con) {
		this.con=con;
		
	}
	public boolean saveUser(User user) {
		boolean f=false;
		try {
			
			String query="insert into techblog(name,email,password,gender,about) values (?,?,?,?,?)";
			PreparedStatement pstmt=con.prepareStatement(query);
			pstmt.setString(1,user.getName());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getPassword());
			pstmt.setString(4, user.getGender());
			pstmt.setString(5,user.getAbout());
			pstmt.executeUpdate();
			f=true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	
	
	//get user by email and password
	public User getUserByEmailAndPassword(String email,String password) {
		
		User user=null;
		
		try {
			String useremail = email;
			String userpassword =password;

			PreparedStatement pstmt = con.prepareStatement("SELECT * FROM techblog WHERE email = ? AND password = ?");
			pstmt.setString(1, useremail);
			pstmt.setString(2, userpassword);

			ResultSet rs = pstmt.executeQuery();
			
			
			
			if(rs.next()) {
				user=new User();
				
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setGender(rs.getString("gender"));
			    user.setAbout(rs.getString("about"));
			    user.setDate(rs.getTimestamp("regdate"));
				user.setProfile(rs.getString("profile"));
				user.setId(rs.getInt("id"));
				
			}
			
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	
	public boolean updateUser(User user) {
		boolean f=false;
		
		try {
			
			String query="update techblog set name=?,email=?,password=?,gender=?,about=?,profile=? where id=?";
			PreparedStatement psmt=con.prepareStatement(query);
			psmt.setString(1, user.getName());
			psmt.setString(2,user.getEmail());
			psmt.setString(3, user.getPassword());
			psmt.setString(4, user.getGender());
			psmt.setString(5, user.getAbout());
			
			psmt.setString(6, user.getProfile());
			psmt.setInt(7, user.getId());
			
			psmt.executeUpdate();
			f=true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	

}
