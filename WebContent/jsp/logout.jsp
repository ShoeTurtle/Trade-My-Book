<%
	session.setAttribute("username", null);	
	session.invalidate();
	String uname = (String)session.getAttribute("username"); 
	out.print(uname);
%>	


