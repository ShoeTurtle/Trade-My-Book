<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 


<%
	String SearchInput = request.getParameter("SearchInput");

	String connectionURL = "jdbc:mysql://localhost:3306/trademybook?user=root@localhost";
	Connection connection = null;
	Statement statement = null;
	ResultSet rs = null;
	
	String title = "";
	String author = "";
	String bookID = "";	
	String dispString = "";
	
	
	//Database connection
	Class.forName("com.mysql.jdbc.Driver").newInstance ();
	connection = DriverManager.getConnection(connectionURL,"root","dakgator123");
	statement = connection.createStatement();
	
	
	//Print the data in the table
	String myQuery = "select * from books where title like \"%" + SearchInput + 
		"%\" or author like \"%" + SearchInput + "%\" or category like \"%" + SearchInput + "%\"" +
	 	" order by title limit 10";
	
	rs = statement.executeQuery(myQuery);
	
	if(SearchInput != "") {
		while(rs.next()) {
			title = rs.getString("title");
			author = rs.getString("author");
			bookID = rs.getString("bookID");
			
			dispString = "<a class=\"books\" id=\"" + bookID + "\" href=\"#\">" + title +
					"&nbsp;(" + author + ")</a>";
			
			out.print(dispString);
			out.print("<br>");
		}
	}

%> 