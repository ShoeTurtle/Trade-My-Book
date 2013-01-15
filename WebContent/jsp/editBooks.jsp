<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<% 
String connectionURL = "jdbc:mysql://localhost:3306/trademybook?user=root@localhost";
Connection connection = null;
Statement statement = null;
ResultSet rs_cat = null;


//Database connection
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL,"root","dakgator123");
statement = connection.createStatement();


String flg = (String)session.getAttribute("username");
String bookID = request.getParameter("bookID");


//Extracting Book Information//
rs_cat = statement.executeQuery("SELECT * FROM Books where BookID =" + bookID);

String title = "", author = "", isbn = "", publisher = "", edition = "", sellerprice = "", marketprice = "", condition = "";
String category = "", subcategory = "", image = "", userID = "", description = "";


while(rs_cat.next()) {

	category = rs_cat.getString("category");
	subcategory = rs_cat.getString("subcategory");
	
	title = rs_cat.getString("title");
	author = rs_cat.getString("author");
	isbn = rs_cat.getString("isbn");
	publisher = rs_cat.getString("publisher");
	edition = rs_cat.getString("edition");
	sellerprice = rs_cat.getString("sellerprice");
	marketprice = rs_cat.getString("marketprice");
	condition = rs_cat.getString("Condtn");
	
	image = rs_cat.getString("image");
	userID = rs_cat.getString("userID");
	description = rs_cat.getString("description");
}



//Print the data in the table
rs_cat = statement.executeQuery("SELECT distinct category FROM category");


%>



<%
out.println("<ul>");
	out.println("<div class="+"box-heading"+">Update My Book Details</div>");
	out.println("<div class="+"box-content"+">");
		out.println("<div class="+"box-product"+">");
		//out.println("Hello World");
%>		
						<!-- updatebooksfrm -->
                        <form name="sellbooksfrm" method="post" id="updatebooks" action="jsp/updatebooksSubmit.jsp" enctype="multipart/form-data">
                        	<h2>Enter Book Details</h2>
                            <div class="content">
                            	<table class="form">
                                	<tbody>
                                    	<tr>
                                        	<td><span class="required">*</span>Title:</td>
                                            <td><input class="q1" type="text" name="title" value="<%out.print(title); %>" style="width:250px;" /></td>	
                                        </tr>
                                        <tr>
	                                        <td><span class="required">*</span>ISBN Number:</td>
                                            <td><input class="q1" type="text" name="isbn" value="<%out.print(isbn); %>" style="width:250px;" /></td>                                        
                                        </tr>                                        <tr>
                                        	<td><span class="required">*</span>Author:</td>
                                            <td><input class="q1" type="text" name="author" value="<%out.print(author); %>" style="width:250px;" /></td>
                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>Publisher:</td>
                                            <td><input class="q1" type="text" name="publisher" value="<%out.print(publisher); %>" style="width:250px;" /></td>
                                        </tr>
                                        <tr>	
                                            <td><span class="required">*</span>Edition:</td>
                                            <td><input class="q1" type="text" name="edition" value="<%out.print(edition); %>" style="width:250px;" /></td>
                                      	</tr>      
                                      	<tr>	
                                            <td><span class="required">*</span>Your Price:</td>
                                            <td><input class="q1" type="text" name="sellerprice" value="<%out.print(sellerprice); %>" style="width:250px;" /></td>
                                      	</tr>            
                                      	<tr>	
                                            <td><span class="required">*</span>Market Price:</td>
                                            <td><input class="q1" type="text" name="marketprice" value="<%out.print(marketprice); %>" style="width:250px;" /></td>
                                      	</tr>          
                                      	<tr>	
                                            <td><span class="required">*</span>Condition:</td>
                                            <td>
                                            	<select name="condition" id="condtn">
												  <option value="#">Select</option>
												  <option <%if(condition.equals("New")) {out.print("Selected");} %> value="New">New</option>
												  <option <%if(condition.equals("Moderate")) {out.print("Selected");} %> value="Moderate">Moderate</option>
												  <option <%if(condition.equals("Old")) {out.print("Selected");} %> value="Old">Old</option>
												</select> 
											</td>
                                      	</tr>              
                                    </tbody>
                                </table>
                            </div>
                            <h2>Select Following</h2>
                            <div class="content">
                            	<table class="form">
                                	<tbody>
                                    	<tr>
                                        	<td><span class="required">*</span>Category</td>
                                            <td><select name="category" id="cat" onchange="showSubcat(this.value)">
                                            		<option value="#">Select</option>
 											<%
													String chk = "false";
 													String myCat = "";
 													while (rs_cat.next()) {
														String cat=rs_cat.getString("category");
														if(category.equals(cat)) { chk = "true"; myCat = cat; }
											%>
													<option <%if(chk.equals("true")) {out.print("Selected"); } %> value="<%=cat%>"><%=cat%></option>
											<%	
													chk = "false";
 													}
											%>
												</select> 
											</td>
                                        </tr>
                    
                                        <tr>
                                        <%
                                      		//Print the data in the table
                                        	rs_cat=  statement.executeQuery("SELECT SubCategory FROM category WHERE category ='"+ myCat +"'");
                                        %>

                                        	<td><span class="required">*</span>Sub Category</td>
                                            <td><select name="subcategory" id="subcat" >
                                            		<option value="#">Select</option>
                                            		<%
                                        				chk = "false";
                                            			while (rs_cat.next()) {
                                        					String subcat=rs_cat.getString("SubCategory");
                                        					if(subcategory.equals(subcat)) { chk = "true";}
                                        			%>
                                        			<option <%if(chk.equals("true")) {out.print("Selected"); } %> value="<%=subcat%>"><%=subcat%></option>
                                        	<%	
                                        				chk = "false";
                                            			}										
                                        		rs_cat.close();
                                        	%>
												  <!-- auto fill -->
												</select> 
											</td> 
                                        </tr>
                                    </tbody>
                                
                                </table>
                            </div>
                            <h2>Upload a Picture</h2>
                            <div class="content">
                            	<table class="form">
                            		<tr>
                            			<td>Select Picture </td>
                            			<td><input type="file" name="file" size="50" /></td>                            			
                            		</tr>
                            	</table>
                            	<input type="hidden" name="userID" value="<%out.println(bookID);%>">
                            </div>                           
                              
                        	<h2>Book Description</h2>
                            <div class="content">
                            	<table class="form">
                            		<tr>                            			
                            			<td><textarea name = "description" style="width: 420px; height: 80px"><%out.print(description); %></textarea></td>                            			
                            		</tr>
                            	</table>                            	
                            </div> 
                        	
                        	
                        	
                        	<div class="buttons">
                            	<div class="right">
                                    <a id = "updatedbooks" href="javascript: updatebooksSubmit()" class="button"><span>Update Book Details</span></a>
                                </div>
                            </div>                        
                        </form>             
                                
                               
<%											
						out.println("</div>");
						out.println("</div>");
					out.println("</div>");	
					out.println("</div>");
			out.println("</ul>");
%>



