package com.tech.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tech.blog.entities.Message;

/**
 * Servlet implementation class LogOutServlet
 */
@WebServlet("/LogOutServlet")
public class LogOutServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		 response.setContentType("text/html;charset=UTF-8");
		  try(PrintWriter out=response.getWriter()){
		
		
		
				
				  out.println("<html>");
				  out.println("<head>");
				  
				  out.println("<title>HelloServlet</title>");
				  out.println("</head>");
				  out.println("<body>");
				 
				     HttpSession s=request.getSession();
				     s.removeAttribute("currentuser");
				  Message msg=new Message("Logout Successfully","success","alert-success");
				  
				  s.setAttribute("msg",msg);
				  response.sendRedirect("login.jsp");
				  out.println("</body>");
					 out.println("</html>");
		
		
	}

}
}