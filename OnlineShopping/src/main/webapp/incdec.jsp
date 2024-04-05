<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String email =session.getAttribute("email").toString();
String id=request.getParameter("id");
String incdec =request.getParameter("quantity");
int price=0;
int total=0;
int quantity=0;
int final_total=0;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","");
	 Statement st = con.createStatement();
	 ResultSet rs= st.executeQuery("select *from cart where email='"+email+"'and product_id='"+id+"' and address is Null");
	 while(rs.next())
	 {
		 price = rs.getInt(4);
		 total= rs.getInt(5);
		 quantity = rs.getInt(3);
	 }
	if(quantity==1 && incdec.equals("dec"))
		response.sendRedirect("myCart.jsp?msg=notPossible");
	else if(quantity !=1 && incdec.equals("dec"))
	{
		total=total-price;
		quantity=quantity-1;
		st.executeUpdate("update cart set total='"+total+"',quantity='"+quantity+"' where email='"+email+"'and product_id='"+id+"' and address is Null");
		response.sendRedirect("myCart.jsp?msg=dec");
	}
	else
	{
		total=total+price;
		quantity=quantity+1;
		st.executeUpdate("update cart set total='"+total+"',quantity='"+quantity+"'where email='"+email+"'and product_id='"+id+"' and address is Null");
		response.sendRedirect("myCart.jsp?msg=inc");
	}
	
}
catch(Exception e)
{
	System.out.println(e);
	
}
%>