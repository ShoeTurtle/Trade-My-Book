<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
out.println("<ul>");
	out.println("<div class="+"box-heading"+">Register Here</div>");
	out.println("<div class="+"box-content"+">");
		out.println("<div class="+"box-product"+">");		
%>		
	<p>If you already have an account please go to the <a href="#" onclick="loadLogin('box-prod','jsp/userlogin.jsp')">login page</a></p>
                        <form name="registrationfrm" method="get" id="register" action="jsp/register.jsp">
                        	<h2>Your Personal Details</h2>
                            <div class="content">
                            	<table class="form">
                                	<tbody>
                                    	<tr>
                                        	<td><span class="required">*</span>First Name:</td>
                                            <td><input class="q1" type="text" name="firstname" id="regfirstname" value="" /></td>	
                                        </tr>
                                        <tr>
	                                        <td><span class="required">*</span>Last Name:</td>
                                            <td><input class="q1" type="text" name="lastname" id="reglastname" value="" /></td>                                        
                                        </tr>                                        <tr>
                                        	<td><span class="required">*</span>Email:</td>
                                            <td><input class="q1" type="text" name="email" id="regemail" value="" /></td>
                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>Telephone:</td>
                                            <td><input class="q1" type="text" name="telephone" id="regtelephone" value="" /></td>
                                        </tr>                               
                                    </tbody>
                                </table>
                            </div>
                            <h2>Your Address</h2>
                            <div class="content">
                            	<table class="form">
                                	<tbody>
                                    	<tr>
                                        	<td><span class="required">*</span>Institution</td>
                                            <td><input class="q1" type="text" name="company" id="regcompany" value="" /></td>
                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>Address</td>
                                            <td><input class="q1" type="text" name="address" id="regaddress" value=""  /></td>                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>City</td>
                                            <td><input class="q1" type="text" name="city" id="regcity" value="" /></td>
                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>Post Code</td>
                                            <td><input class="q1" type="text" name="postcode" id="regpostcode" value=""  /></td>
                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>Country</td>
                                            <td><input class="q1" type="text" name="country" id="regcountry" value=""  /></td>
                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>Region/State</td>
                                            <td><input type="text" class="q1" name="state" id="regstate" value="" /></td>
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
                                            <td><input type="password" class="q1" name="password1" id="regpassword1" value=""  /></td>
                                        </tr>
                                        <tr>
                                        	<td><span class="required">*</span>Password Confirm</td>
                                            <td><input type="password" class="q1" name="password2" id="regpassword2" value="" /></td>
                                        </tr>
                                    </tbody>                                    
                                </table>
                            </div>                            
                       
                        	<div class="buttons">
                            	<div class="right">
                                    <a href="javascript: registrationSubmitform();" class="button" id="regSubButton"><span>Create T-M-B Account</span></a>
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

