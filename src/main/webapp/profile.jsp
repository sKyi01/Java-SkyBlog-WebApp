
    <%@page import="com.tech.blog.entities.User" %>
<%@page errorPage="error.jsp" %>
<%@page import="com.tech.blog.entities.Message" %>
  <%
  User user=(User)session.getAttribute("currentuser");
  if(user==null){
	  response.sendRedirect("login.jsp");
  }
 
  %>
  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS link -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link href="css/MyStyle.css" rel="stylesheet" type="text/css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Start Navbar
 -->
 <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="index.jsp"><span class="fa fa-asterisk"></span> SkyBlog</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#"><span class="	fa fa-bell-o"></span> LearnCode With Sky <span class="sr-only">(current)</span></a>
      </li>
     
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <span class="	fa fa-bars"> </span> Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Java</a>
          <a class="dropdown-item" href="#">Python</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">DataStructure</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"><span class="	fa fa-address-book-o"></span> Contact us</a>
      </li>
      <!--  <li class="nav-item">
        <a class="nav-link" href="login.jsp"><span class="	fa fa-user-circle-o"></span> Login</a>
      </li> -->
       <!-- <li class="nav-item">
        <a class="nav-link" href="register.jsp"><span class="	fa fa-user-plus"></span>log out</a>
      </li> -->
    </ul>
    <ul class="navbar-nav mr-right">
    
    <li class="nav-item">
        <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal"><span class="	fa fa-user-circle"></span> <%= user.getName() %></a>
      </li>
    
    
    <li class="nav-item" >
        <a class="nav-link" href="LogOutServlet" ><span class="	fa fa-user-plus"></span> Log Out</a>
      </li>
    
    
    
    </ul>
  </div>
</nav>


 <%
					Message msg=(Message)session.getAttribute("msg");
					if(msg!=null){
						
					%>
					<div class="alert <%=msg.getCssClass() %>" role="alert">
  <%=msg.getContent() %>
</div>
					<%
					}
					session.removeAttribute("msg");
					
					
					%>
<!--  End Navbar -->


<!-- Start profile model
 -->
 
 

 <!-- Button trigger modal -->
<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#profile-modal">
  Launch demo modal
</button> -->

<!-- Modal -->
<div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header  bg-primary text-white">
        <h5 class="modal-title" id="exampleModalLabel">SkyBlog</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
<div class="container text-center">

<div>
  <img src="profilepics/<%=user.getProfile() %>" style="border-radius:150px;max-width:100px;" class="img-fluid" style="border-radius:50px;max-width:100;;">
  </div>
  <br/>
  <div>
                <h5 class="modal-title mt-3" id="exampleModalLabel"><%= user.getName() %></h5>
<!--                 details
 -->
 <div id="profile-details">
 <table class="table">
  
  <tbody>
    <tr>
      <th scope="row">ID</th>
      <td><%= user.getId() %></td>
      
    </tr>
    <tr>
      <th scope="row">Email Address</th>
      <td><%= user.getEmail() %></td>
    
    </tr>
    <tr>
      <th scope="row">Gender</th>
      <td><%= user.getGender() %></td>
     
    </tr>
    
    <tr>
      <th scope="row">Status</th>
      <td><%= user.getAbout() %></td>
     
    </tr>
     <tr>
      <th scope="row">Register Date</th>
      <td><%= user.getDate().toString() %></td>
     
    </tr>
    
  </tbody>
</table>
</div>

<!-- Edit profile process page
 --> 
 
 <div id="profile-edit-process" style="display:none;">
 
 <h3 class="mt-2">You can edit now</h3>
 
 <form action="EditServlet" method="post" enctype="multipart/form-data">
 <table class="table">
   
 <tr>
 
 <td>ID</td>
 <td><%= user.getId() %></td>
 
 </tr>
 <tr>
 
 <td>Email</td>
 <td><input type="email" class="form-control" name="user_email" value="<%= user.getEmail() %>"></td>
 
 </tr>
  <tr>
 
 <td>Name</td>
 <td><input type="text" class="form-control" name="user_name" value="<%= user.getName() %>"></td>
 
 </tr>
  <tr>
 
 <td>Password</td>
 <td><input type="password" class="form-control" name="user_password" value="<%= user.getPassword() %>"></td>
 
 </tr>
  <tr>
 
 <td>Gender</td>
 <td><input type="text" class="form-control text-center" name="gender" value="<%= user.getGender().toUpperCase() %>"></td>
 
 </tr>
  <tr>
 
 <td>About</td>
 <td>
 <textarea  class="form-control" name="user_about"><%= user.getAbout() %></textarea>
 
 </td>
 
 
 </tr>
   <tr>
 
 <td>New Profile</td>
 <td>
 <input type="file" class="form-control" name="profile"  >
 
 </td>
 
 
 </tr>
 
 
  
 
 </table>
 <div class="container">
 <button type="submit" class="btn btn-outline-primary">Save</button>
 
 </div>
 </form>
 
 
 
 
 
 
 
 </div>
 
 
 
</div>
</div>        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button id="edit-profile-button"   type="button" class="btn btn-primary">Edit</button>
      </div>
    </div>
  </div>
</div>
 
 
 
 <!-- JS link -->
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"
		integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
		crossorigin="anonymous"></script>
	<!-- <script src="js/MyJs.js" type="text/javascript"></script>
 -->
	<!-- jQuery and Bootstrap JavaScript -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
		
		<script>
		$(document).ready(function(){
			
			let editStatus=false
			$('#edit-profile-button').click(function(){
				
				if(editStatus==false){
					$('#profile-details').hide()
					$('#profile-edit-process').show()
					editStatus=true
					$(this).text("Back")
				}
				else{
					$('#profile-details').show()
					$('#profile-edit-process').hide()
					editStatus=false
					$(this).text("Edit")
				}
				
			
			
			})
			
			
		})
		
		
		</script>
		
		

</body>
</html>