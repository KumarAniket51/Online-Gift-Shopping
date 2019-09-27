<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<body background="images/Admin.jpg">
<head>
  <title>Online Gift Shop</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link href="index.css" rel="stylesheet">
	<style>
	#reg:hover{
    -webkit-box-shadow: -1px 4px 19px 3px rgba(0,0,0,0.75);
-moz-box-shadow: -1px 4px 19px 3px rgba(0,0,0,0.75);
box-shadow: -1px 4px 19px 3px rgba(0,0,0,0.75);
}
	</style>
</head>
<body style="background-color: orange">
<a href="index.jsp"><p class="text-left" style="color: white">HOME</p></a>

    <!--About page start--->
   
    <div class="container">
    <div class="row">
        <div class=" col-sm-12 col-md-3 col-lg-3">
    
            <div class="row">
           
                 </div>
                <div style="font-family: sans-serif;font-style: normal;font-weight: 300;marign:30px 30px 30px 30px">
                <p></p>
                
                    </div>
          
            </div>
        <div class="col-sm-12 col-md-6 col-lg-6">
        
       <div class="row">
        ${msg}
  <div class="card" id="reg" style="height: 880px;width: 600px;margin: 40px 40px 40px 40px;padding: 30px 30px 30px 30px">
      <p style="font-family: sans-serif;font-weight: 700;font-size: 30px;text-align: center;">Admin Register</p>
  <form action="RegistrationController" method="post">
  <div class="form-group">
      <label for="email">Name:</label>
      <input type="text" class="form-control" id="userName" placeholder="Enter Name" name="name">
    </div>
 
	 <div class="form-group">
      <label for="customerid">Email</label>
      <input type="email" class="form-control" id= "customerid" placeholder="Enter EMAIL" name="email">
    </div>
	<div class="form-group">
      <label for="password">Password</label>
      <input type="password" class="form-control" id="password" placeholder="Password" name="password">
    </div> 
	
	
	
      
	
    <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me
      </label>
    </div>
	
<center>  <button type="submit">SUBMIT</button></center>
</form>
	<a href="AdminLogin.jsp"><p>login now?</p></a>
	
	
  </form>
</div>
</div>
        </div>
    </div>
    </div>


    </body>
</html>