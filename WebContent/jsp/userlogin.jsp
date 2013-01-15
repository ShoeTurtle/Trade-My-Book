<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
//out.println("<ul>");
//	out.println("<div class="+"box-heading"+">User Login</div>");
//	out.println("<div class="+"box-content"+">");
//		out.println("<div class="+"box-product"+">");
		//out.println("Hello World");
%>		
	<!-- 
	<div class="login-content">
                        	<div class="left">
                            	<h2>New Customer</h2>
                                <div class="content">
                                	<p><b>Register Account</b></p>
                                    <a href="#" onclick="loadLogin('box-prod','jsp/userregister.jsp')" class="button"><span>Continue</span></a>
                                </div>
                            </div>
                            <div class="right">
                            	<h2>Existing Account</h2>
                            	<form name="loginfrm" method="post" action="jsp/login.jsp" id="login">
                                	<div class="content">
                                    	<p>Please login with your existing account</p>
                                        <b class="padd-form">Email Address:</b>
                                        <input class="q1 margen-bottom" type="text" name="email" value=""/>
                                    	<b class="padd-form">Password:</b>
                                        <input class="q1 margen-bottom" type="password" name="password" value=""/>
                                        <br />
                                    	<div>
                                        	<a class="link-login" href="#">Forgot Password</a>
                                        </div>
                                        <br />
                                    	<a href="javascript: loginSubmitform()" class="button"><span>Login</span></a>
                                    </div>
                                </form>      
                       -->     
                                
                                <!--**********************Validation test********************
                                ***********Note: replace form action="jsp/login.jsp" with "login.jsp"
                                <script>
									function validateForm()
									{
									var x=document.forms["loginfrm"]["email"].value;
									if (x==null || x=="")
									  {
									  alert("Email must be filled out");
									  return 0;
									  }
									var y=document.forms["loginfrm"]["password"].value;
									if (y==null || y=="")
									  {
									  alert("password must be filled out");
									  return 0;
									  }
									return 1;
									}
								</script>
								<script>	
									function loginSubmitform(){
										var valid;
										valid=validateForm();
										if (valid==1){
											document.loginfrm.submit();
										}
									}
								</script> 
								
								</div>
                        </div>
								-->
							
<%											
						//out.println("</div>");
						//out.println("</div>");
					//out.println("</div>");	
					//out.println("</div>");
			//out.println("</ul>");
%>


<div class="box-container">
	<div class="login-content">
		<div class="left">
			<h2>New Member Register</h2>
        	<div class="content">
          		<p><b>Register Account</b></p>
          		<p>By creating an account you will be able to trade faster, be smart to get hold of the best deal, and earn a little extra by selling your used books.</p>
          		<a href="#" class="button"><span>Continue</span></a>
          	</div>
      	</div>
      		
  		<div class="right">
    		<h2>Existing Member Login</h2>
    		<form name="loginfrm" method="post" action="jsp/login.jsp" id="login">
      			<div class="content">
        			<p>Trade My Book Online</p>
        			<b class="padd-form">E-Mail Address:</b>
        			<input class="q1 margen-bottom" type="text" name="email" value="">
        
        			<b class="padd-form">Password:</b>
        			<input class="q1 margen-bottom" type="password" name="password" value="">
         			<br><br><br>        			
        			<a href="javascript: loginSubmitform()" class="button"><span>Login T-M-B</span></a>
            	</div>
    		</form>
  		</div>
    	</div>
</div>
