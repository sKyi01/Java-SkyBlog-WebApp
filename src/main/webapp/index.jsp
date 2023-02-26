<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SkyBlog</title>
<!-- CSS link -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link href="css/MyStyle.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Page</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.banner-background{
clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 93%, 65% 87%, 31% 96%, 0 88%, 0 0);}

</style>
</head>
<body>
	<%@include file="Navbar.jsp"%>

	<div class="container-fluid  p-0 m-0">

		<div class="jumbotron bg-primary text-white banner-background">
			<div class="container">
				<h3 class="display-3">Welcome to SkyBlog</h3>
				<h3>TechBlog</h3>
				<p>A programming language is a system of notation for writing
					computer programs.[1] Most programming languages are text-based
					formal languages, but they may also be graphical. They are a kind
					of computer language. The description of a programming language is
					usually split into the two components of syntax (form) and
					semantics (meaning), which are usually defined by a formal
					language. Some languages are defined by a specification document
					(for example, the C programming language is specified by an ISO
					Standard) while other languages (such as Perl) have a dominant
					implementation that is treated as a reference. Some languages have
					both, with the basic language defined by a standard and extensions
					taken from the dominant implementation being common.</p>
				<button class="btn btn-outline-light btn-lg">
					<span class="	fa fa-user-plus"></span> Let's Start
				</button>
				<a href="login.jsp" class="btn btn-outline-light btn-lg">
					<span class="		fa fa-user-circle-o fa-spin"></span> Login
				</a>

			</div>
		</div>

	</div>
	<!-- ***cards***-->

	<div class="container">
		<div class="row mb-2">

			<div class="col-md-4">
				<div class="card" style="width: 18rem;">

					<div class="card-body">
						<h5 class="card-title">Java Programming Language</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary bg-primary">Read more..</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card" style="width: 18rem;">

					<div class="card-body">
						<h5 class="card-title">Java Programming Language</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary bg-primary">Read more..</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card" style="width: 18rem;">

					<div class="card-body">
						<h5 class="card-title">Java Programming Language</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary bg-primary">Read more..</a>
					</div>
				</div>
			</div>
		</div>
	
			<div class="row mb-2" >

			<div class="col-md-4">
				<div class="card" style="width: 18rem;">

					<div class="card-body">
						<h5 class="card-title">Java Programming Language</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary bg-primary">Read more..</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card" style="width: 18rem;">

					<div class="card-body">
						<h5 class="card-title">Java Programming Language</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary bg-primary">Read more..</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card" style="width: 18rem;">

					<div class="card-body">
						<h5 class="card-title">Java Programming Language</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary bg-primary">Read more..</a>
					</div>
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

</body>

</html>