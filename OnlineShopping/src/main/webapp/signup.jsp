<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
<style>
body{
	background-image:url("https://spy.com/wp-content/uploads/2019/02/AdobeStock_366785399.jpeg?w=958&h=599&crop=1");
width: 400px;
  height: 380px;

}
.whysign{

	background-image:url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdqmhD7DI58bPQULgoTLE5y4RGalJynZXRbQ&usqp=CAU);
	 width: 400px;
  height: 380px;
}


</style>

</head>
<h1 style="color: Violet"> Welcome To Trippy Shopping </h1>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signupaction.jsp" method ="post">
    <input type= "text" name = "name" placeholder= "Enter Name" required><br></br>
    <input type= "email" name = "email" placeholder= "Enter Email" required><br></br>
    <input type= "number" name = "mobilenumber" placeholder= "Enter Mobile Number" required><br></br>
    <select name= "securityQuestion"  required>
<option value= "What was your first Bike?">What was your first Bike?</option>    
<option value= "What is your Pet Name?">What is your Pet Name?</option>    
<option value= "What is your Best Friend Name?">What is your Best Friend Name?</option>   
    </select>
    <input type = "text" name = "answer" placeholder= " Enter Answer " required><br></br>
    <input type = "password" name = "password" placeholder= " Enter Password" required><br></br>
     <input type = "submit" value= "Signup"> 
    </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'> 
<% 
String msg = request.getParameter("msg");
if("valid".equals(msg))
{
%>	
<h1 style ="color: black">Successfully Registered$$</h1>
<%} %>
	<% 
	if("invalid".equals(msg))
	{
		%>
<h1 style="color:Red">Some thing Went Wrong! Try Again !</h1>
<%} %>

    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>