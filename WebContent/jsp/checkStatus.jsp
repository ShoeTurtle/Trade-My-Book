<%
	String username = (String)session.getAttribute("username");
	out.print(username);
%>