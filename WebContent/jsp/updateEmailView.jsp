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


%>


<%
out.println("<ul>");
	out.println("<div class="+"box-content"+">");
		out.println("<div class="+"box-product"+">");		
%>		
	        <form name="updateregistrationfrm_2" method="post" id="updateAccount" action="jsp/updateEmailModel.jsp">
                        	<h2>Update Your Email</h2>
                            <br>
                            <div class="content">
                            	<table class="form">
                                	<tbody>
                                    	<tr>
                                        	<td><span class="required">*</span>Email:</td>
                                            <td><input class="q1" type="text" name="email" id="regemail" value="<%=oldUserID %>" style="width: 200px;" /></td>
                                        </tr>
                                                                               
                                    </tbody>
                                </table>
                            </div>
                            
                        	<div class="buttons">
                            	<div class="right">
                                    <a href="javascript: updateEmail();" class="button" id="regSubButton"><span>Update My Email</span></a> 
                                	
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




