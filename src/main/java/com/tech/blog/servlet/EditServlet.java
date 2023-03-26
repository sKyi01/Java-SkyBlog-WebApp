package com.tech.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;


@WebServlet("/EditServlet")
@MultipartConfig
public class EditServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 response.setContentType("text/html;charset=UTF-8");
		  try(PrintWriter out=response.getWriter()){
		
		
		
				
				  out.println("<html>");
				  out.println("<head>");
				  
				  out.println("<title>HelloServlet</title>");
				  out.println("</head>");
				  out.println("<body>");
				 
		  String name=request.getParameter("user_name");
		  String email=request.getParameter("user_email");
		  String password=request.getParameter("user_password");
		  String gender=request.getParameter("gender");
		  String about=request.getParameter("user_about");
		  Part part=request.getPart("profile"); 
		  String profileName=part.getSubmittedFileName();
		 
			//getting session 
		  HttpSession s=request.getSession();
		  User user=(User)  s.getAttribute("currentuser");
		  
		  user.setName(name);
		  user.setEmail(email);
		  user.setPassword(password);
		  user.setGender(gender);
		  user.setAbout(about);
		  user.setProfile(profileName);
		  UserDao u=new UserDao(ConnectionProvider.getConn());
		  boolean ans=u.updateUser(user);
		  if(ans==true) {
			  out.println("Updated Succuessfully");
		  }
		  else {
			  out.println("failed updation");
		  }
			 out.println("<h1>Welcome to edit page</h1>");
			 out.println("</body>");
			 out.println("</html>");
			 
		    
		  }
	}
}
