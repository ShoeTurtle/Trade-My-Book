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

//Print the data in the table
rs_cat = statement.executeQuery("SELECT distinct category FROM category");

String flg = (String)session.getAttribute("username");

%>



<%
out.println("<ul>");
	out.println("<div class="+"box-heading"+">Sell Your Books Here</div>");
	out.println("<div class="+"box-content"+">");
		out.println("<div class="+"box-product"+">");
		//out.println("Hello World");
%>		
	
                        <form name="sellbooksfrm" method="post" id="sellbooks" action="jsp/sellbooksubmit.jsp" enctype="multipart/form-data">
                        	<h2>Enter Book Details</h2>
                            <div class="content">
                            	<table class="form">
                                	<tbody>
                                    	<tr>
                                        	<td><span class="required">*</span>Title:</td>
                                            <td><input class="q1" type="text" name="title" value="" style="width:250px;" /></td>	
                                        </tr>
                                        <tr>
	                                        <td><span class="required">*</span>ISBN Number:</td>
                                            <td><input class="q1" type="text" name="isbn" value="" style="width:250px;" /></td>                                        
                                        </tr>                                        <tr>
                                        	<td><span class="required">*</span>Author:</td>
                                            <td><input class="q1" type="text" name="author" value="" style="width:250px;" /></td>
                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>Publisher:</td>
                                            <td><input class="q1" type="text" name="publisher" value="" style="width:250px;" /></td>
                                        </tr>
                                        <tr>	
                                            <td><span class="required">*</span>Edition:</td>
                                            <td><input class="q1" type="text" name="edition" value="" style="width:250px;" /></td>
                                      	</tr>      
                                      	<tr>	
                                            <td><span class="required">*</span>Your Price:</td>
                                            <td><input class="q1" type="text" name="sellerprice" value="" style="width:250px;" /></td>
                                      	</tr>            
                                      	<tr>	
                                            <td><span class="required">*</span>Market Price:</td>
                                            <td><input class="q1" type="text" name="marketprice" value="" style="width:250px;" /></td>
                                      	</tr>          
                                      	<tr>	
                                            <td><span class="required">*</span>Condition:</td>
                                            <td>
                                            	<select name="condition" id="condtn">
												  <option value="#">Select</option>
												  <option value="New">New</option>
												  <option value="Moderate">Moderate</option>
												  <option value="Old">Old</option>
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
												while (rs_cat.next()) {
														String cat=rs_cat.getString("category");
											%>
													<option value="<%=cat%>"><%=cat%></option>
											<%	
												}										
												rs_cat.close();
											%>
												</select> 
											</td>
                                        </tr>
                                       
                                        <% 
                                        	
                                        %>
                                        <tr>
                                        	<td><span class="required">*</span>Sub Category</td>
                                            <td><select name="subcategory" id="subcat" >
                                            		<option value="#">First Select Category</option>
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
                            	<input type="hidden" name="userID" value="<%out.println(flg);%>">
                            </div>                           
                              
                        	<h2>Book Description</h2>
                            <div class="content">
                            	<table class="form">
                            		<tr>                            			
                            			<td><textarea name = "description" style="width: 420px; height: 80px"></textarea></td>                            			
                            		</tr>
                            	</table>                            	
                            </div> 
                        	
                        	
                        	
                        	<div class="buttons">
                                    <a href="javascript: sellbooksSubmitform()" class="button"><span>Upload The Book For Sale</span></a>
                            </div>                        
                        </form>             
                                
                               
<%											
						out.println("</div>");
						out.println("</div>");
					out.println("</div>");	
					out.println("</div>");
			out.println("</ul>");
%>



