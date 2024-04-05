<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String email= session.getAttribute("email").toString();
String product_id=request.getParameter("id");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","");
	 Statement st = con.createStatement();
	 st.executeUpdate("delete from cart where email='"+email+"'and product_id='"+product_id+"' and address is Null");
	 response.sendRedirect("myCart.jsp?msg=removed");
	
}
catch(Exception e){
	System.out.print(e);
}

%>