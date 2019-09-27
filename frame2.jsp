<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%> 
    
<!DOCTYPE html>
<html lang="en">
<head>
<body background="images/Admin.jpg">
  <title>Admin Panel</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
	#log{
                padding: 30px 20px;
                margin-top: 20px;
                -webkit-box-shadow: -webkit-box-shadow: 7px 2px 48px 2px rgba(0,0,0,0.55);
-moz-box-shadow: 7px 2px 48px 2px rgba(0,0,0,0.55);
box-shadow: 7px 2px 48px 2px rgba(0,0,0,0.55);
     height:
            }
			#log:hover{
    -webkit-box-shadow: -1px 3px 14px 2px rgba(0,0,0,0.54);
-moz-box-shadow: -1px 3px 14px 2px rgba(0,0,0,0.54);
box-shadow: -1px 3px 14px 2px rgba(0,0,0,0.54);
} 
#log1:hover{
    -webkit-box-shadow: -1px 3px 14px 2px rgba(0,0,0,0.54);
-moz-box-shadow: -1px 3px 14px 2px rgba(0,0,0,0.54);
box-shadow: -1px 3px 14px 2px rgba(0,0,0,0.54);
} 
	</style>
</head>
<body > 

<div class="container-fluid">
<div class="card" id="log">

     <h1 style="font-style:normal;font-family:serif;font-weight:700;color:#8F230C;margin-top:-30px;padding-bottom:30px;text-align:center;padding:10px 10px 10px 10px;">Admin DashBoard</h1>


<div class="row">
<div class="col-sm-12 col-md-3 col-lg-3">
<div class="card" id="log1"style="height:100px;width:200px;background-color:#884EA0;color:white;text-align:center;padding-top:30px;font-family:serif;font-size:23px">
<p>NAME</p>
</div>
</div>

<div class="col-sm-12 col-md-3 col-lg-3">
<div class="card" id="log1" style="height:100px;width:200px;background-color:#27AE60;color:white;text-align:center;padding-top:30px;font-family:serif;font-size:23px"">
<p>EMAIL</p>
</div>
</div>
<div class="col-sm-12 col-md-3 col-lg-3">
<div class="card" id="log1" style="height:100px;width:200px;background-color:#C0392B;color:white;text-align:center;padding-top:30px;font-family:serif;font-size:23px"">
<p>MESSAGE</p>
</div>
</div>
</div>
</div>
</div>
</br>
</br>
</br>

<!--

guest booking

-->
<div class="container" >
<div class="row">


<div class="col-sm-12 col-md-6 col-lg-6">
<div class="card" id="log" style=";height:617px;padding:10px 10px 10px 10px;margin-top:-20px">

  <h2 style="font-style:normal;font-family:serif;font-weight:600;color:#8F230C;">Contact Details</h2>
 <form action="" method="post">    
  <table class="table">
    <thead>
      <tr>
        <th>Name:</th>
        <th>Email:</th>
		<th>Message:</th>
        
      </tr> 
    </thead>
    <tbody>
	 
   
  
  <table class="table">
  <%
  try{
  Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/giftshop", "root", "iimt");
  PreparedStatement ps = null;
  String sql = "SELECT * FROM contact";
  ps = con.prepareStatement(sql);
  ResultSet rs  = ps.executeQuery(sql);
while(rs.next()){
%>
<tr>
  <td> <%= rs.getString("name") %> </td>  
  <td> <%= rs.getString("email") %> </td>  
  <td> <%= rs.getString("message") %> </td>  
</tr>
<%
}
} catch (Exception ex) {
  System.out.println(ex);
}
%>
  </table>
  
  </form>    
  <ul class="pager" style="text-align:right">
    <li ><a href="#" style="background-color:#9B59B6 ;color:white ">Previous</a></li>
    <li><a href="#" style="background-color:#922B21   ;color:white ">Next</a></li>
  </ul>
</div>
</div>
</div>
</body>
</html>
