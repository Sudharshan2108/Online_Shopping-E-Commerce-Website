<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%

String id =request.getParameter("id");
String name =request.getParameter("name");
String category =request.getParameter("category");
String price =request.getParameter("price");
String active =request.getParameter("active");



try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","");
	 PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?)");
	 ps.setString(1,id);
	 ps.setString(2,name);
	 ps.setString(3,category);
	 ps.setString(4,price);
	 ps.setString(5,active);
	 ps.executeUpdate();
	 response.sendRedirect("addNewProduct.jsp?msg=done");

}
catch(Exception e){
	 response.sendRedirect("addNewProduct.jsp?msg=wrong");

}


%>
