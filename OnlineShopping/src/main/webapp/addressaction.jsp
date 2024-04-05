<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String email= session.getAttribute("email").toString();
String address =request.getParameter("address");
String city =request.getParameter("city");
String country=request.getParameter("country");
String state =request.getParameter("state");
String mobilenumber =request.getParameter("mobilenumber");
String paymentmethod =request.getParameter("paymentmethod");
String trasactionId ="";
 trasactionId=request.getParameter("trasactionId ");
 String status="Bill";
 
 try{
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","");
	 PreparedStatement ps= con.prepareStatement("update time set address=?, city=?,country=?, state=?,mobilenumber=?where email=?");
	 
	 ps.setString(1, address);
	 ps.setString(2, city);
	 ps.setString(3, country);
	 ps.setString(4, state);
	 ps.setString(5, mobilenumber);
	 ps.setString(6, email);
	 ps.executeUpdate();
	  PreparedStatement ps1=con.prepareStatement("update cart set address=?, city=?,country=?, state=?,mobilenumber=?,paymentmethod=?,trasactionId=?,status=? where email=? and address is null");
	     ps1.setString(1, address);
		 ps1.setString(2, city);
		 ps1.setString(3, country);
		 ps1.setString(4, state);
		 ps1.setString(5, mobilenumber);
		 ps1.setString(6, paymentmethod);
		 ps1.setString(7, trasactionId);
	ps1.setString(8, status);
	ps1.setString(9, email);

	ps1.executeUpdate();
	response.sendRedirect("bill.jsp");

		} catch (Exception e) {
	System.out.println(e);
		}
%>