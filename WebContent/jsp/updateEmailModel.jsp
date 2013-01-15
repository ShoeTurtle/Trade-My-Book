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

String oldUserID = (String)session.getAttribute("username");

String email = request.getParameter("email");


%>


<!-- Inserting the data onto the database -->

<%



String myQuery1 = "UPDATE Books SET UserID = '" + email + "' where UserID = '" + oldUserID + "'";
PreparedStatement ps1 = connection.prepareStatement(myQuery1);
ps1.executeUpdate();

String myQuery2 = "UPDATE transaction SET SellerID = '" + email + "' where SellerID = '" + oldUserID + "'";
PreparedStatement ps2 = connection.prepareStatement(myQuery2);
ps2.executeUpdate();

String myQuery3 = "UPDATE transaction SET BuyerID = '" + email + "' where BuyerID = '" + oldUserID + "'";
PreparedStatement ps3 = connection.prepareStatement(myQuery3);
ps3.executeUpdate();

String myQuery4 = "UPDATE user SET email = '" + email + "' where email = '" + oldUserID + "'";
PreparedStatement ps4 = connection.prepareStatement(myQuery4);
ps4.executeUpdate();



connection.close();

%>


<%
	String redirectURL = "http://localhost:8080/trademybook.in/index.html?updated=true";
	response.sendRedirect(redirectURL);
%>		


