package com.tech.blog.servlet;

import java.io.File;
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
import com.tech.blog.helper.HelperProfile;

@WebServlet("/EditServlet")
@MultipartConfig
public class EditServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        out.println("<html>");
        out.println("<head>");
       
        out.println("</head>");
        out.println("<body>");
        
        String name = request.getParameter("user_name");
        String email = request.getParameter("user_email");
        String password = request.getParameter("user_password");
        String gender = request.getParameter("gender");
        String about = request.getParameter("user_about");
        Part part = request.getPart("profile");
        
        String profileName = part.getSubmittedFileName();

        // Getting session
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("currentuser");

        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);
        user.setGender(gender);
        user.setAbout(about);
        String oldProfile=user.getProfile();
        user.setProfile(profileName);

        UserDao userDao = new UserDao(ConnectionProvider.getConn());
        boolean updated = userDao.updateUser(user);

        if (updated) {
            // Delete previous profile
           // String previousProfilePath =request.getRealPath("/profilepics") + File.separator + user.getProfile();
        	if(!oldProfile.equals("default.png")){
            String oldProfilePath =request.getRealPath("/profilepics") + File.separator + oldProfile;
        	
            HelperProfile.deleteProfile(oldProfilePath);
        	}
            // Save new profile
        
			String newProfilePath = request.getRealPath("/profilepics") + File.separator + user.getProfile();
            boolean saved = HelperProfile.saveProfile(part.getInputStream(), newProfilePath);

            if (saved) {
              
                out.println("<h1>Profile Updated</h1>");
                Message msg=new Message("Profile successfully updated...","success","alert-success");
		    	
		    	session.setAttribute("msg",msg);
		    	
                
            } else {
               
               
           //
              
            }
        } else {
            
            out.println("<h1>Error updating profile</h1>");
            Message msg=new Message("Something went wrong...","error","alert-danger");
	    	
	    	session.setAttribute("msg",msg);
	    	

        }
        response.sendRedirect("profile.jsp");
        
        out.println("</body>");
        out.println("</html>");
    }
}
