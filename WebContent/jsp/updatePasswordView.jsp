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
	        <form name="updateregistrationfrm_3" method="post" id="updateAccount" action="jsp/updatePasswordModel.jsp">
                        	<h2>Update Your Password</h2>
                        	<br>
                            <div class="content">
                            	<table class="form">
                                	<tbody>
                                    	<tr>
                                        	<td><span class="required">*</span>Password</td>
                                            <td><input type="password" class="q1" name="password1" id="regpassword1" value="<%=password %>" style="width: 200px;" /></td>
                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>Password Confirm</td>
                                            <td><input type="password" class="q1" name="password2" id="regpassword2" value="<%=password %>" style="width: 200px;" /></td>
                                        </tr>
                                    </tbody>                                    
                                </table>
                            </div>                      
                       
                        	<div class="buttons">
                            	<div class="right">
                                    <a href="javascript: updatePassword()" class="button" id="regSubButton"><span>Update My Password</span></a> 
                                	
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




