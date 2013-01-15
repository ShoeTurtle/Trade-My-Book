<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="java.lang.String" %>


<% //Write code to fetch data from the backend %>

<%
	String bookID = request.getParameter("bookID");

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
	
	String sellerPrice = "";
	String marketPrice = "";	
	String author = "";
	String publisher = "";
	String edition = "";
	String condition = "";
	String isbn = "";
	
	String sellerID = "";
	
	String address = "";
	

	
	//Database connection
	Class.forName("com.mysql.jdbc.Driver").newInstance ();
	connection = DriverManager.getConnection(connectionURL,"root","dakgator123");
	statement = connection.createStatement();
		
	//Print the data in the table
	rs = statement.executeQuery("SELECT * FROM Books WHERE BookID='" + bookID + "'");
		
%>

<% while (rs.next()) {	
			
			imagesrc=rs.getString("image");
			title=rs.getString("Title");
			sellerprice=rs.getString("SellerPrice");
			marketprice=rs.getString("MarketPrice");
			description = rs.getString("Description");
			bookID = rs.getString("BookID");
			isbn = rs.getString("isbn");
			condition = rs.getString("Condtn");
			edition = rs.getString("Edition");
			publisher = rs.getString("publisher");
			author = rs.getString("author");
			sellerID = rs.getString("UserID").trim();
}

	
	String myQuery = "select * from user where email = '" + sellerID + "'";
	
	rs = statement.executeQuery(myQuery);
	
	while(rs.next()) {
		address = rs.getString("Address") + " <br>" + rs.getString("City");
	}
	

	//Checking the Status of the Book//
	String bookStatus = "SELECT * FROM Transaction WHERE BookID = '" + bookID + "'";
	rs = statement.executeQuery(bookStatus);
	
	String flg = "";
	
	while(rs.next()) {
		flg = rs.getString("Status").trim();
	}
	

%>

<div class="product-info">        
        <div class="wrapper indent-bot">            
            <div class="fleft left spacing">                               
                <div class="image">
                        <img src="<%out.print(imagePath + imagesrc); %>" title="Acals sit conse ctetur adipisi set" alt="Acals sit conse ctetur adipisi set" style="width: 260px; height: 388px;"/>                                         
                </div>                                   
            </div>
            
            <div class="extra-wrap">
                    <h1><% out.print(title); %></h1>
                    <div class="description">
                    	<div class="sub_description">
                    		<table>
                    			<tr>
                    				<td><h2>Author: </h2></td>
                    				<td style="padding-left: 25px;"><label><%out.print(author); %></label></td>
                    			</tr>
								<tr>
									<td><h2>Edition: </h2></td>
									<td style="padding-left: 25px;"><label><%out.print(edition); %></label></td>								
								</tr>
                    			<tr>
                    				<td><h2>Isbn: </h2></td>
                    				<td style="padding-left: 25px;"><label><%out.print(isbn); %></label></td>
                    			</tr>
                    			<tr>
                    				<td><h2>Condition: </h2></td>
                    				<td style="padding-left: 25px;"><label><%out.print(condition); %></label></td>
                    			</tr>
                    			<tr>
                    				<td><h2>Location: </h2></td>
                    				<td style="padding-left: 25px;"><label><%out.print(address); %></label></td>
                    			</tr>
                    		</table>
                    	</div>     						
                            
                            <br><br>
                            <div class="price">
                            <span class="text-price" style="padding-left: 20px;">Price:</span>
                            <span class="price-new" style="color:#a4381f; padding-left: 10px">Rs&nbsp;<%out.print(sellerprice); %></span>
                            <span class="price-old" style="color:#b7b6b6; padding-left: 5px;">Rs&nbsp;<%out.print(marketprice); %></span> 
                            <br />
                    </div>
                    
                    <div class="cart">																			
                        <div class="prod-row">
                            <div class="cart-top">                                
                                <a id="button-cart" class="button-prod" style="color:#ffffff;" onclick="emailNotify('<%out.print(sellerID); %>', '<%out.print(bookID); %>');"><% if(flg.equals("pending")) {out.print("Already Booked");} else {out.print("Buy This Book");};%></a>
                            </div>
                        </div>
                        <div class="extra-button">
                            
                        </div>
                    </div>
                    
                    <!-- 
                    <div class="review">
                        <div><img src="images/stars-0.png" alt="0 reviews" />&nbsp;&nbsp;
                            <div class="btn-rew">
                                <a onclick="$('a[href=\'#tab-review\']').trigger('click');">0 reviews</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');">Write a review</a>
                            </div>
                        </div>                        
                    </div>
                    -->
                </div>
            </div>
    
                
            <!-- Top Heading Of the Tabbed Display -->
            <div class="wrapper mb-1">
                <!-- 
                <div id="tabs" class="htabs">
                    <a href="#tab-description">Description</a>
                    <a href="#tab-attribute">Specification</a>
                    <a href="#tab-review">Reviews (0)</a>
                </div>
                 -->
            </div>

            <!-- This Warps the Content of the tabbed display -->
            <div class="wrapper">
                <!-- Tab Description -->
                
                <br><br>
                <div id="tab-description" class="tab-content">
                    <div class="std">
                        <h2>About The Book</h2><br>
                        <div class="std">                            
                            <div class="std">
                                    <%out.print(description); %>
                            </div>
                        </div>
                    </div>
              
                </div>
                
             
                <!-- 
                <div id="tab-review" class="tab-content">
                    <div id="review"> </div>
                        <h2 id="review-title">Review The Seller</h2>
                        <b>Your Name:</b><br />
                        <input type="text" name="name" value="" />
                        <br />
                        <br />
                        <b>Your Review:</b>
                        <textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
                        <br />
                        <b>Rating:</b> <span>Bad</span>&nbsp;
                        <input type="radio" name="rating" value="1" />
                        &nbsp;
                        <input type="radio" name="rating" value="2" />
                        &nbsp;
                        <input type="radio" name="rating" value="3" />
                        &nbsp;
                        <input type="radio" name="rating" value="4" />
                        &nbsp;
                        <input type="radio" name="rating" value="5" />
                        &nbsp; <span>Good</span><br />
                        <br />
                        
                        <div class="buttons">
                            <div class="right"><a id="button-review" class="button"><span>Continue</span></a></div>
                        </div>
                </div>
             -->
            </div>
          
        </div>        
    </div>
