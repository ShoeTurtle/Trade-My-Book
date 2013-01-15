<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<% 
String connectionURL = "jdbc:mysql://localhost:3306/trademybook?user=root@localhost";
Connection connection = null;
Statement statement = null;
ResultSet rs_subcat = null;
String cat;

//Database connection
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL,"root","dakgator123");
statement = connection.createStatement();
cat=request.getParameter("cat");

//Print the data in the table
rs_subcat=  statement.executeQuery("SELECT SubCategory FROM category WHERE category ='"+cat+"'");
%>

<option value="#">Select</option>
	<%
		while (rs_subcat.next()) {
			String subcat=rs_subcat.getString("SubCategory");
	%>
			<option value="<%=subcat%>"><%=subcat%></option>
	<%	
		}										
		rs_subcat.close();
	%>


