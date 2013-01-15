<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>

<% 
	String connectionURL = "jdbc:mysql://localhost:3306/trademybook?user=root@localhost";
	Connection connection = null;
	Statement statement = null;
	ResultSet rs = null;
	
	
	//Database connection
	Class.forName("com.mysql.jdbc.Driver").newInstance ();
	connection = DriverManager.getConnection(connectionURL,"root","dakgator123");
	statement = connection.createStatement();
	
	
	String oldUserID = (String)session.getAttribute("username");


	String name = "", email = "", phone = "", fax = "", company = "", address = "", city = "", pincode = "";
	String country = "", state = "", password = "";


	name = request.getParameter("name");
	phone = request.getParameter("telephone");
	email = request.getParameter("email");
	fax = request.getParameter("fax");
	company = request.getParameter("company");
	address = request.getParameter("address");
	city = request.getParameter("city");
	pincode = request.getParameter("postcode");
	country = request.getParameter("country");
	state = request.getParameter("state");
	password = request.getParameter("password2");
	
	
	
	
	
	if(oldUserID.equals(email)) {
		String myQuery = "UPDATE user SET name = '" + name + "', phone = '" + phone + "'," +
				" fax = '" + fax + "', company = '" + company + "', address = '" + address + "', city = '" + city + "', pincode = '" + pincode + "', " +
				"country = '" + country + "', state = '" + state + "', password = '" + password + "'" +
				" WHERE email = '" + oldUserID + "'";
		
		//PreparedStatement ps = connection.prepareStatement(insert);
		//ps.executeUpdate();
		//connection.close();
		out.print(myQuery);
		
	}
	else {
		
		//Change the email at all the possible tables//
		
			
		String myQuery1 = "UPDATE Books SET UserID = '" + email + "' where UserID = '" + oldUserID + "'";
		out.print(myQuery1);
		out.print("<br>");
		
		String myQuery2 = "UPDATE transaction SET SellerID = '" + email + "' where SellerID = '" + oldUserID + "'";
		out.print(myQuery2);
		out.print("<br>");
		
		String myQuery3 = "UPDATE transaction SET BuyerID = '" + email + "' where BuyerID = '" + oldUserID + "'";
		out.print(myQuery3);
		out.print("<br>");
		
		String myQuery4 = "UPDATE user SET email = '" + email + "' where email = '" + oldUserID + "'";
		out.print(myQuery4);
		out.print("<br>");
		
		
		String myQuery5 = "UPDATE user SET name = '" + name + "', phone = '" + phone + "'," +
				" fax = '" + fax + "', company = '" + company + "', address = '" + address + "', city = '" + city + "', pincode = '" + pincode + "', " +
				"country = '" + country + "', state = '" + state + "', password = '" + password + "'" +
				" WHERE email = '" + email + "'";
		
		out.print(myQuery5);
		out.print("<br>");
		
		
	}
	

%>

<%
	//String redirectURL = "http://localhost:8080/trademybook.in/index.html?updated=true";
	//response.sendRedirect(redirectURL);
%>