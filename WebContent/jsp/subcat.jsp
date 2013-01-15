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
String category;
String subcat="";
//Database connection
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL,"root","dakgator123");
statement = connection.createStatement();
category=request.getParameter("cat");

//Print the data in the table
rs = statement.executeQuery("SELECT * FROM Category WHERE Category='"+category+"'");
%>

<%

while (rs.next()) {
	subcat=rs.getString("SubCategory");
	out.println("<ul>");
		out.println("<li onclick = \"javascript: loadBooks('box-prod', 'jsp/testLoadBooks.jsp', '"+ subcat +"')\">");
			out.println("<a href=#>");			
			out.println(subcat);
			out.println("</a>");
		out.println("</li>");
	out.println("</ul>");
}
rs.close();
%>

