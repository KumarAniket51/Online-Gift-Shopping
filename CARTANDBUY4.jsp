<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}
</style>
</head>
<body style="background-color: white">

<h2 style="text-align:center">Product Cart</h2>

<div class="card">
  <img src="images/AB4.jpg" alt="CAR" style="width:100%">
  <h1>PRICE</h1>
  <p class="price">Rs 500</p>
  <p>Some text about the car. Good Material With High Speed.</p>
  <button onclick="myFunction()"><li><a href="index.jsp">BUY LATER</button></a></li>
  <h1><button onclick="myFunction()"><li><a href="CheckOut.jsp">BUY  NOW</button><h1></a></li>
  
 

</div>

</body>
</html>
