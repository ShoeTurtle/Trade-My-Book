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


//Database connection
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL,"root","dakgator123");
statement = connection.createStatement();


String oldUserID = (String)session.getAttribute("username");


//Extracting Book Information//
rs = statement.executeQuery("SELECT * FROM User where email ='" + oldUserID + "'");

String name = "", email = "", phone = "", fax = "", company = "", address = "", city = "", pincode = "";
String country = "", state = "", password = "";


while(rs.next()) {

	name = rs.getString("name");
	phone = rs.getString("phone");
	
	fax = rs.getString("fax");
	company = rs.getString("company");
	address = rs.getString("address");
	city = rs.getString("city");
	pincode = rs.getString("pincode");
	country = rs.getString("country");
	state = rs.getString("state");
	password = rs.getString("password");
	
}


%>


<%
out.println("<ul>");
	out.println("<div class="+"box-heading"+">Update My Account</div>");
	out.println("<div class="+"box-content"+">");
		out.println("<div class="+"box-product"+">");		
%>		
	        <form name="updateregistrationfrm" method="post" id="updateAccount" action="jsp/updateAccount.jsp">
                        	<h2>Your Personal Details</h2>
                            <div class="content">
                            	<table class="form">
                                	<tbody>
                                    	<tr>
                                        	<td><span class="required">*</span>Name:</td>
                                            <td><input class="q1" type="text" name="name" id="regname" value="<%=name %>" /></td>	
                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>Email:</td>
                                            <td><input class="q1" type="text" name="email" id="regemail" value="<%=oldUserID %>" /></td>
                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>Telephone:</td>
                                            <td><input class="q1" type="text" name="telephone" id="regtelephone" value="<%=phone %>" /></td>
                                        </tr>
                                        <tr>	
                                            <td>Fax:</td>
                                            <td><input class="q1" type="text" name="fax" id="regfax" value="<%=fax %>" /></td>
                                      	</tr>                                       
                                    </tbody>
                                </table>
                            </div>
                            <h2>Your Address</h2>
                            <div class="content">
                            	<table class="form">
                                	<tbody>
                                    	<tr>
                                        	<td>Company:</td>
                                            <td><input class="q1" type="text" name="company" id="regcompany" value="<%=company %>" /></td>
                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>Address</td>
                                            <td><input class="q1" type="text" name="address" id="regaddress" value="<%=address %>"  /></td>                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>City</td>
                                            <td><input class="q1" type="text" name="city" id="regcity" value="<%=city %>" /></td>
                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>Post Code</td>
                                            <td><input class="q1" type="text" name="postcode" id="regpostcode" value="<%=pincode %>"  /></td>
                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>Country</td>
                                            <td><input class="q1" type="text" name="country" id="regcountry" value="<%=country %>"  /></td>
                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>Region/State</td>
                                            <td><input type="text" class="q1" name="state" id="regstate" value="<%=state %>" /></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <h2>Your Password</h2>
	                        <div class="content">
                            	<table class="form">
                                	<tbody>
                                    	<tr>
                                        	<td><span class="required">*</span>Password</td>
                                            <td><input type="password" class="q1" name="password1" id="regpassword1" value="<%=password %>"  /></td>
                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>Password Confirm</td>
                                            <td><input type="password" class="q1" name="password2" id="regpassword2" value="<%=password %>" /></td>
                                        </tr>
                                    </tbody>                                    
                                </table>
                            </div>                            
                       
                        	<div class="buttons">
                            	<div class="right">
                                    <a href="#;" class="button" id="regSubButton"><span>Update My Account</span></a> 
                                	
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




