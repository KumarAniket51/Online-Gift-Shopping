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
<div class="card" id="log" style="width:150%;height:800px;">
  <h2>View User Details</h2>
  <p>See all the user Details</p>            
  <table class="table">
    <thead>
      <tr>
    
        <th>Name:</th>
        <th>Email:</th>
        <th>Password:</th>
        <th>Mobile No:</th>
        

      </tr>
    </thead>
    <tbody>
	
	
	
	<%
  try{
  Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/giftshop", "root", "iimt");
  PreparedStatement ps = null;
  String sql = "SELECT * FROM userregistration";
  ps = con.prepareStatement(sql);
  ResultSet rs  = ps.executeQuery(sql);
while(rs.next()){
%>

      <tr>
        
        <td><%=rs.getString("Name") %></td>
         <td><%=rs.getString("Email") %></td>
          <td><%=rs.getString("Password") %></td> 
          <td><%=rs.getString("mobileNo") %></td>
          
              </tr>
	  
	  
	  	<%
}
} catch (Exception ex) {
  System.out.println(ex);
}
%>
	
    </tbody>
  </table>
</div>
</div>
</div>
</body>
</html>
