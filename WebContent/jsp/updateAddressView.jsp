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


//Extracting User Information//
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
	out.println("<div class="+"box-content"+">");
		out.println("<div class="+"box-product"+">");		
%>		
	        <form name="updateregistrationfrm_4" method="post" id="updateAccount" action="jsp/updateAddressModel.jsp">
                        	<h2>Update Your Address</h2>
                        	<br>
                        	<div class="content">
                            	<table class="form">
                                	<tbody>
                                    	<tr>
                                        	<td><span class="required">*</span>Company/Institute</td>
                                            <td><input class="q1" type="text" name="company" id="regcompany" value="<%=company %>" style="width: 200px;" /></td>
                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>Address</td>
                                            <td><input class="q1" type="text" name="address" id="regaddress" value="<%=address %>" style="width: 200px;" /></td>                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>City</td>
                                            <td><input class="q1" type="text" name="city" id="regcity" value="<%=city %>" style="width: 200px;" /></td>
                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>Post Code</td>
                                            <td><input class="q1" type="text" name="postcode" id="regpostcode" value="<%=pincode %>" style="width: 200px;" /></td>
                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>Country</td>
                                            <td><input class="q1" type="text" name="country" id="regcountry" value="<%=country %>" style="width: 200px;" /></td>
                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>Region/State</td>
                                            <td><input type="text" class="q1" name="state" id="regstate" value="<%=state %>" style="width: 200px;" /></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                           
                            
                       
                        	<div class="buttons">
                            	<div class="right">
                                    <a href="javascript: updateAddress();" class="button" id="regSubButton"><span>Update My Address</span></a> 
                                	
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




