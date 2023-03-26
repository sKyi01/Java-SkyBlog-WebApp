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

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

@MultipartConfig
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 response.setContentType("text/html;charset=UTF-8");
		  try(PrintWriter out=response.getWriter()){
		
		
		
				
				  out.println("<html>");
				  out.println("<head>");
				  
				  out.println("<title>HelloServlet</title>");
				  out.println("</head>");
				  out.println("<body>");
				 
		    
		    //fetch all data
		    String email=request.getParameter("email");
		   out.println(email);
		    
		    String userpassword=request.getParameter("password");
		  out.println(userpassword);
		    UserDao dao=new UserDao(ConnectionProvider.getConn());
		    out.println(dao);
		    
		    User u=dao.getUserByEmailAndPassword(email, userpassword);
		      out.println(u);
		    
		    if(u==null) {
		    	
		    	
		    	//out.println("invalid details! try another...");
		    	Message msg=new Message("invalid details! try another...","error","alert-danger");
		    	HttpSession s=request.getSession();
		    	s.setAttribute("msg",msg);
		    	response.sendRedirect("login.jsp");
		    }
		    else {
		    	HttpSession s=request.getSession();
		    	s.setAttribute("currentuser", u);
		    	response.sendRedirect("profile.jsp");
		    }
		 
			
			// out.println("<h1>Im sky</h1>");
			 out.println("</body>");
			 out.println("</html>");
			 
		    
		  }
	}
	

}
