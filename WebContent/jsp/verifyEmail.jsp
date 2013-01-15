<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%
String connectionURL = "jdbc:mysql://localhost:3306/trademybook?user=root@localhost";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
String email;//="abc@ymail.com";
String name="";
String valid="";

//Database connection
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL,"root","dakgator123");
statement = connection.createStatement();
email=request.getParameter("email");

//Print the data in the table
rs = statement.executeQuery("SELECT * FROM User WHERE email='"+email+"'");
while(rs.next()){
       name=rs.getString("Name");
}
if (name !=""){
       valid="exist";
}
else
       valid="doesnotexist";
%>

<% 
out.println(valid);
%>