
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
<style>
body{
	background-image:url(https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1); 
	width: 400px;
  height: 380px;
	

}
.whysignLogin{
background-color: white;
  width: 250px;
  height: 300px;
  
}

</style>

</head>

<div id='container'>
  <div class='signup'>
     <form action="loginAction.jsp" method ="post">
     <input type="email" name= "email" placeholder= "Enter Email"required><br></br>
     <input type="password" name= "password" placeholder= "Enter Password"required><br></br>
     <input type= "Submit" value = "Login">
     </form>
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin'>
  <%
  String msg =request.getParameter("msg");
  if("notexist".equals(msg))
  {
  
  %>
  <h1>Incorrect Username or Password</h1>
<% }%>
<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
    
    
  

  </div>
</div>

</body>
</html>