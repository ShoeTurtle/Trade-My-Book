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
String imagesrc="";
String title="";
String sellerprice="";
String marketprice="";
String imagePath = "bookimages/";
String description = "";
String bookID = "";

//Database connection
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL,"root","dakgator123");
statement = connection.createStatement();
category=request.getParameter("cat");

//Print the data in the table
rs = statement.executeQuery("SELECT * FROM Books WHERE category='" + category + "' or subcategory = '"+ category +"'");

%>                           

<div class="box-heading">Category View</div>
<div class="product-list" style="overflow: auto; height:800px;">
        
        <% while (rs.next()) { 
   			imagesrc=rs.getString("image");
			title=rs.getString("Title");
			sellerprice=rs.getString("SellerPrice");
			marketprice=rs.getString("MarketPrice");
			description = rs.getString("Description");
			bookID = rs.getString("BookID");
		%>
        <div>
            <div class="right">
                <div class="price" style="margin-bottom: 35px; margin-top: 20px;">
                    <span class="price-new">Rs&nbsp;<% out.print(sellerprice); %></span>
                    <span class="price-old">Rs&nbsp;<% out.print(marketprice); %></span>
                </div>
                <div class="cart"><a onclick="loadDetailedView('<% out.print(bookID);%>');" class="button"><span>Buy This Book</span></a></div>
            </div>
            <div class="left">
                <div class="image">
                    <a href="javascript: loadDetailedView('<% out.print(bookID);%>')">
                        <img src="<% out.print(imagePath + imagesrc); %>" title=" Ipsum dolor sit amet conse" alt=" Ipsum dolor sit amet conse" style="height: 188px; width: 126px;">
                    </a>
                </div>
                <div class="name">
                    <h1><a href="javascript:loadDetailedView()"><% out.print(title); %></a></h1>
                </div>
                <div class="description" style="overflow: hidden;">
                    <% out.print(description); %>
                </div> 
            </div>        	
        </div>
 		<% } %> 
 		
 </div>
                   