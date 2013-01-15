
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

String bookID = request.getParameter("bookID");


%>


<!-- Inserting the data onto the database -->

<%
	
String delete = "DELETE FROM Books where bookID = '" + bookID + "'";

PreparedStatement ps = connection.prepareStatement(delete);
ps.executeUpdate();
connection.close();

out.print("The Selected Book Has Been Removed!!!");

%>
