package com.tech.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

@MultipartConfig
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 response.setContentType("text/html;charset=UTF-8");
		  try(PrintWriter out=response.getWriter()){
		
		
		
				/*
				 * out.println("<html>"); out.println("<head>");
				 * out.println("<title>HelloServlet</title>"); out.println("</head>");
				 * out.println("<body>");
				 */
		    
		    //fetch all data
		    
		    String check=request.getParameter("check");
		    if(check==null) {
		    	out.println("box not checked");
		    }
		    else {
		    	String name=request.getParameter("user_name");
		    	
		    	
		    	String email=request.getParameter("user_email");
		    	String password=request.getParameter("user_password");
		    	String gender=request.getParameter("gender");
		    	String about=request.getParameter("about");
		    	User user=new User(name,email,password,gender,about);
		    	
		    	UserDao dao=new UserDao(ConnectionProvider.getConn());
		    	if(dao.saveUser(user)) {
		    		out.println("done");
		    	}
		    	else {
		    		out.println("Email already exist! try another one");
		    	}
		    	

		    }
			/*
			 * out.println("<h1></h1>"); out.println("</body>"); out.println("</html>");
			 */
		  }
		  catch(Exception e) {
			  e.printStackTrace();
			  
		  }
	}
	/*
	 * protected void processRequest(HttpServletRequest request,HttpServletResponse
	 * response)throws ServletException, IOException {
	 * 
	 * 
	 * }
	 */

}
