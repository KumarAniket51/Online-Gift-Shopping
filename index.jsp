<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<body background="images/index.png">
<head>
 <title>HOME</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="style.css" rel="stylesheet" type="text/css">
    <!---w3css link-------------------->
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    
    
    <!-----end------------------------->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!---css link----->
    <link rel="stylesheet" href="footer.css">
<style>
    body{
	
    }
	
    </style>
</head>
<body background-image="images/Z1.jpg">
    <div class="container-fluidckg top-bar">
    <div class="row">
          <div class="col-md-6">
  
        </div>
            </div>
    </div>
    <!--create logo and menu--------------------------------->
    <div class="container">
    <div class="row">
    <div class="col-md-3">
        
       <div class="w3-container w3-center w3-animate-zoom"> 
   <h3 style="font-style:serif;font-weight:100
   0;margin-right:800px"> <h1><p class="text-left" style="color:white;font-size:200">online GIFT SHOPPING</h></p></h1> 
        </div>
		 </div> 
        <div class="col-md-9 my-menu">
        <nav class="navbar navbar-default">
              <div class="container-fluid">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#dev">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="row">
                <div class="collapse navbar-collapse" id="dev"> 
                <ul class="nav navbar-nav pull-right">
                    <li class="active" style="margin-top:14px;">HOME</li>
                    <li><a href="ABOUT.jsp">ABOUT</a></li>
                    
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">SERVICES <span class="caret"></span></a>
        <ul class="dropdown-menu">
         
          <li><a href="category.jsp">CATEGORY</a></li>
		 
        </ul>
      </li>
         <li><a href="UserLogin.jsp">CUSTOMER LOGIN</a></li>
		          <li><a href="UserRegistration.jsp">CUSTOMER REGISTRATION</a></li>
		          <li><a href="AdminLogin.jsp">AdminPanel</a></li>
				   
				     <form class="form-inline my-lg-0" action="category.jsp">
   
                        <input class="form-control mr-sm-2" type="search" placeholder="Search">
                        <button class="btn" type="submit">Search</button>
                     </form>
                   
                    
                    </ul>
                </div>
            </div>
            </div>
            </div>
            </nav>
        </div>
    </div>
    </div>
    <!----create banner image-------------------------------------------->
    
<div class="container">  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images/A2.jpg" alt="hotel img"  style="height:480px;width:100%;">
      </div>

      <div class="item">
        <img src="images/A3.jpg" alt="petorl" style="height:480px;width:100%;">
      </div>
    
      <div class="item">
        <img src="images/A5.jpg" alt="toll img" style="height:480px; width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
                <!--end----------->
            

    <br>
    <div class="row">
    <div class="col-md-12">
        <center><b><strong class="heading"><span style="color: white;font-size:320%">WELCOME <span style="color: white;">T0 </span><span style="color: white">Online Gift Shopping</span></strong></b></center>
        
    <!------our services div start-------------------------->

       
            <div class="col-lg-4">
            <p class="text-right-side" style="color:black;font-size:150%">CONTACT TEAM CLICKESTERS </p>
              <p class="text-right-side" style="color:blue;font-size:150%">KUMAR ANIKET </p>
               <p class="text-right-side" style="color:blue;font-size:150%">PRANAY KASHYAP </p>
                <p class="text-right-side" style="color:blue;font-size:150%">DEVANSH SHAHI </p>
                 <p class="text-right-side" style="color:blue;font-size:150%">KESHAV SHARMA </p>
                  <p class="text-right-side" style="color:blue;font-size:150%">ROHIT PAL </p>
                   <p class="text-right-side" style="color:blue;font-size:150%">REHAN RAZA </p>
             <a href="contact.jsp">  <p class="text-right-side" style="color:red;font-size:150%">PLEASE CLICK HERE(If Any Query or Feedback)</p></a>
             
             
                
                
                </div>
            </div>
                </div>
            <div class="sub"></div>
            </footer>

    
    </body>
</html>