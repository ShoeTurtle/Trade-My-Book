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
String imagesrc="";
String title="";
String sellerprice="";
String marketprice="";

//Database connection
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL,"root","dakgator123");
statement = connection.createStatement();

//Print the data in the table
rs = statement.executeQuery("SELECT * FROM Books");
%>

<%
out.println("<ul class="+"bestsellerlist"+">");
	out.println("<div class="+"box-heading"+">Best Seller</div>");
	out.println("<div class="+"box-content"+">");
		out.println("<div class="+"box-product-2"+">");
while (rs.next()) {
			imagesrc=rs.getString("image");
			title=rs.getString("Title");
			sellerprice=rs.getString("SellerPrice");
			marketprice=rs.getString("MarketPrice");

			out.println("<li>");
				out.println("<div align="+"center"+">");
				out.println("<div class="+"image"+">");
				out.println("<a href="+"#"+">");
					out.println("<img alt="+title+" src='"+imagesrc+"'>");
						out.println("</a>");
				out.println("</div>");
				
				out.println("<div class="+"extra-wrap"+">");
					out.println("<div class="+"name maxheight-best"+" style="+"height: 57px;"+">");
						out.println("<a href="+"#>"+title+"</a>");
					out.println("</div>");
				out.println("</div>");
				
				out.println("<div class="+"price"+">");
					out.println("<span class="+"price-new"+">Rs "+sellerprice+"</span>");
					out.println("<span class="+"price-old"+">Rs "+marketprice+"</span>");
				out.println("</div>");
				
				out.println("<div class="+"cart"+">");
					out.println("<a class="+"button addToCart"+" data-id="+"48;"+">");
						out.println("<span>Add to cart</span>");
					out.println("</a>");
				out.println("</div>");
				out.println("<div>");
			out.println("</li>");                           

}
		out.println("</div>");
	out.println("</div>");
out.println("</ul>");
rs.close();
%>

<% 

%>