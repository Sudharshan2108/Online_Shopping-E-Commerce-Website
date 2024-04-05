<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String email= request.getParameter("email");
String password= request.getParameter("password");
if("admin@gmail.com".equals(email)&& "admin".equals(password))
{
	session.setAttribute("email", email);
	response.sendRedirect("admin/adminHome.jsp");
}

else
{
	int S=0;
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","");
		 Statement st = con.createStatement();
		 ResultSet rs= st.executeQuery("select *from time where email= '"+email+ "'and password='"+password+"'");
		 while (rs.next())
		 {    S=1;
			 session.setAttribute("email", email);
			 response.sendRedirect("home.jsp");
			 
		 }
		 if(S==0);
		response.sendRedirect("login.jsp?msg=notexist");
	}
	catch(Exception e)
	{
		System.out.println(e);
		//response.sendRedirect("login.jsp?msg=invalid");

	}
}






%>





