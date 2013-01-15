<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.text.*,java.util.*" %>

<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>

<% 
String connectionURL = "jdbc:mysql://localhost:3306/trademybook?user=root@localhost";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;

//Database connection
Class.forName("com.mysql.jdbc.Driver").newInstance();

connection = DriverManager.getConnection(connectionURL,"root","dakgator123");

statement = connection.createStatement();

String title = "", isbn = "", author = "", publisher = "", edition = "", sellerprice = "", marketprice = "", condition = "", 
	category = "", subcategory = "", filename = "", userID = "", description = "";

	//Once the Data is successfully entered into the database
	//retrieve the book id and use it as a file name to save the picture

	File file;  
	int maxFileSize = 5000 * 1024;
   	int maxMemSize = 5000 * 1024;
   	
   	ServletContext context = pageContext.getServletContext();
   	String filePath = context.getInitParameter("file-upload");
   	
   	DiskFileItemFactory factory = new DiskFileItemFactory();
   	factory.setSizeThreshold(maxMemSize);
   	
   	ServletFileUpload upload = new ServletFileUpload(factory);
   	upload.setFileSizeMax(maxFileSize);
   	
   	try {
   		List<FileItem> items = upload.parseRequest(request);
   		String type;
   		   		
   		title = items.get(0).getString();
   		isbn = items.get(1).getString();
   		author = items.get(2).getString();
   		publisher = items.get(3).getString();
   		edition = items.get(4).getString();
   		sellerprice = items.get(5).getString();
   		marketprice = items.get(6).getString();
   		condition = items.get(7).getString();
   		category = items.get(8).getString();
   		subcategory = items.get(9).getString();	
   		
   		
   		userID = items.get(11).getString().trim();
   		description = items.get(12).getString();
   		
   		
   		
   		FileItem myItem = items.get(10);
   		
   		String fieldName = myItem.getFieldName();
   		String fileName = myItem.getName();
        
   		  		
   		boolean isInMemory = myItem.isInMemory();
   		long sizeInBytes = myItem.getSize();
        
   		file = new File(filePath + "/" + fileName);
   		
   		if(sizeInBytes > 0) {
   			myItem.write(file);
   		}
   		   		
   	
   		
     		
	  	//Query to update book//
		
	  	String myQuery = "";
	  	
	  	if(sizeInBytes > 0) {
	  		myQuery = "UPDATE Books SET category = '" + category + "', subcategory = '" + subcategory + "'," +
					" title = '" + title + "', isbn = '" + isbn + "', author = '" + author + "', publisher = '" + publisher + "', edition = '" + edition + "', " +
					"sellerprice = '" + sellerprice + "', marketprice = '" + marketprice + "', condtn = '" + condition + "', image = '" + fileName + "', " +
					"description = '" + description + "' WHERE bookID = " + userID;
	  	}
	  	else {
	  		myQuery = "UPDATE Books SET category = '" + category + "', subcategory = '" + subcategory + "'," +
					" title = '" + title + "', isbn = '" + isbn + "', author = '" + author + "', publisher = '" + publisher + "', edition = '" + edition + "', " +
					"sellerprice = '" + sellerprice + "', marketprice = '" + marketprice + "', condtn = '" + condition + "', " +
					"description = '" + description + "' WHERE bookID = " + userID;
	  		
	  	}
   	   	
   		PreparedStatement ps = connection.prepareStatement(myQuery);
		ps.executeUpdate();
		connection.close();		
		
		//out.print("Success");
   	}
   	catch(Exception ex) {
   		//out.print(ex.toString());
   	}   
%>

<%
	String redirectURL = "http://localhost:8080/trademybook.in/index.html?updated=true";
	response.sendRedirect(redirectURL);
%>