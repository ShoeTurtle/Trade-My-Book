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
String name=request.getParameter("firstname")+" "+request.getParameter("lastname");
String email=request.getParameter("email");
String telephone=request.getParameter("telephone");
String fax="NIL";
String company=request.getParameter("company");
String address=request.getParameter("address");
String city=request.getParameter("city");
String postcode=request.getParameter("postcode");
String country=request.getParameter("country");
String state=request.getParameter("state");
String password1=request.getParameter("password1");
String password2=request.getParameter("password2");

%>


<!-- Inserting the data onto the database -->

<%
	
String insert = "INSERT INTO User(Name, email, phone, fax, company, address, city, pincode, country, state, password)" +
        "VALUES ('" + name + "','" + email + "','" + telephone + "','" + fax + "','" + company + "','" + address + "','" +
	city + "','" + postcode + "','" + country + "','" + state + "','" + password2 + "')";

PreparedStatement ps = connection.prepareStatement(insert);
ps.executeUpdate();
connection.close();

%>


		


