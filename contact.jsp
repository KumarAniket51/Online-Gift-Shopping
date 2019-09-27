<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%> 
<!DOCTYPE html>
<html lang="en">
<body background="images/Admin.jpg">
<head>
  <title>Admin panel</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
	#log{
                padding: 60px 40px;
                margin-top: 80px;
                -webkit-box-shadow: -webkit-box-shadow: 7px 2px 48px 2px rgba(0,0,0,0.55);
-moz-box-shadow: 7px 2px 48px 2px rgba(0,0,0,0.55);
box-shadow: 7px 2px 48px 2px rgba(0,0,0,0.55);
            }
	</style>
</head>
<body>

<div class="container">
<div class="row">
<div class="col-sm-12 col-md-3 col-lg-3"></div>
<div class="col-sm-12 col-md-6 col-lg-6">
<div class="card" id="log" style="width:100%;height:600px;">
  <h2>Contact US</h2>
 <form action="ContactController" method="post">
  <div class="form-group">
    <label for="text">Name:</label>
    <input type="text" class="form-control" id="text" name="name">
  </div>
  <div class="form-group">
    <label for="pwd">Email:</label>
    <input type="email" class="form-control" id="pwd" name="email">
  </div>
  <div class="form-group">
  <label for="comment">Message:</label>
  <textarea class="form-control" rows="5" id="comment" name="message"></textarea>
</div>
  <div class="form-group form-check">
    <label class="form-check-label">
      <input class="form-check-input" type="checkbox"> Remember me
    </label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
</div>
<div class="col-sm-12 col-md-3 col-lg-3"></div>
</div>
</div>
</body>
</html>
