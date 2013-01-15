<%
	session.setAttribute("username", "null");
	String name = (String)session.getAttribute("username");
	out.print(name);
%>
