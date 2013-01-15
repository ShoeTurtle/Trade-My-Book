<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<% 
String connectionURL = "jdbc:mysql://localhost:3306/trademybook?user=root@localhost";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;

String uname;
String password;
String pswd="";

//Database connection
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL,"root","dakgator123");
statement = connection.createStatement();
uname=request.getParameter("email");
password=request.getParameter("password");

//Print the data in the table
rs = statement.executeQuery("SELECT * FROM user WHERE email='"+uname+"'");
%>

<html><body>

<%
while (rs.next()) {
			pswd=rs.getString("password");
}
	if(pswd.equals(password)){
		//out.println("Login Successful");			
		session.setAttribute("username", uname);	    
		
		String redirectURL = "http://localhost:8080/trademybook.in/index.html";
	    response.sendRedirect(redirectURL);
	}
	else{
		session.setAttribute( "username", "null");
		session.invalidate();
		
		String redirectURL = "http://localhost:8080/trademybook.in/index.html";
	    response.sendRedirect(redirectURL);		
	}
rs.close();
%>

</body></html>