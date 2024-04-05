<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<% 
String name = request.getParameter("name");
String email= request.getParameter("email");
String mobilenumber= request.getParameter("mobilenumber");
String  securityQuestion= request.getParameter("securityQuestion");
String answer = request.getParameter("answer");
String password= request.getParameter("password");
String address = "";
String city = "";
String state = "";
String country= "";
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","");
PreparedStatement ps= con.prepareStatement("insert into time values(?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,mobilenumber);
ps.setString(4,securityQuestion);
ps.setString(5,answer);
ps.setString(6,password);
ps.setString(7,address);
ps.setString(8,city);
ps.setString(9,state);
ps.setString(10,country);
ps.executeUpdate();
response.sendRedirect("signup.jsp?msg=valid");

}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("signup.jspmsg=invalid");
	
}



%>






