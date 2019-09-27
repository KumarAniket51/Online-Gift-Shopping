<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body background="images/Admin.jpg">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 2px solid lightgrey;
  border-radius: 4px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 6px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>
<body>
<a href="Logout.jsp">LOGOUT</a>
<h2>CHECKOUT FORM </h2>
<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="CheckOutController" method="post">
      
      
        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="Name" placeholder="NAME">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="Email" placeholder="abc@example.com">
            <label for="adr"><i class="fa fa-Address-card-o"></i> Address</label>
            <input type="text" id="adr" name="Address" placeholder="ADDRESS">
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="City" placeholder="CITY">

            <div class="row">
              <div class="col-50">
                <label for="state">State</label>
                <input type="text" id="state" name="State" placeholder="STATE">
              </div>
              <div class="col-50">
                <label for="Pincode">Pincode</label>
                <input type="text" id="PinCode" name="PinCode" placeholder="XXXXXX">
              </div>
            </div>
          </div>
          <div class="col-50">
           <span class="price" text=center-left style="color:blue">  PAYMENT MODE <i class="fa fa-payment">
           
                <input type="radio" class="form-check-input " name="optradio"  text=center-left style="color:blue">CASH ON DELIVERY<i class="fa fa-payment">
              </div>
            </div>
          </div>
          
        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
        </label>
        <input type="submit" value="SUBMIT" class="btn">
      </form>
    </div>
  </div>
  
  </div>
</div>

</body>
</html>
    