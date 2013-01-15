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

//Database connection
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL,"root","dakgator123");
statement = connection.createStatement();

String userID = (String)session.getAttribute("username");

String company = request.getParameter("company");
String address = request.getParameter("address");
String city = request.getParameter("city");
String pincode = request.getParameter("postcode");
String country = request.getParameter("country");
String state = request.getParameter("state");

%>


<!-- Inserting the data onto the database -->

<%
	
String myQuery = "UPDATE user SET company = '" + company + "', address = '" + address + "', city = '" + city + "', pincode = '" + pincode + "', " +
		"country = '" + country + "', state = '" + state + "' WHERE email = '" + userID + "'";

PreparedStatement ps = connection.prepareStatement(myQuery);
ps.executeUpdate();
connection.close();

%>



<%
	String redirectURL = "http://localhost:8080/trademybook.in/index.html";
	response.sendRedirect(redirectURL);
%>