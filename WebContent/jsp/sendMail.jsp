<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>

<%@ page import="java.util.Properties" %>
<%@ page import="javax.mail.Message"%>
<%@ page import="javax.mail.Session"%>
<%@ page import="javax.mail.Transport"%>
<%@ page import="javax.mail.internet.InternetAddress"%>
<%@ page import="javax.mail.internet.MimeMessage"%>

                                                                                                      
<%@page import="javax.mail.Authenticator"%>                                                                                                 
<%@page import="javax.mail.PasswordAuthentication"%>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>                                                                                        
                                                                                                     
                                                                                       
<%

	String buyerID = (String)session.getAttribute("username");
	String sellerID = request.getParameter("para1");
	String bookID = request.getParameter("para2");
	
	String msg2buyer = "", msg2seller = "";
	
	
	String connectionURL = "jdbc:mysql://localhost:3306/trademybook?user=root@localhost";
	Connection connection = null;
	Statement statement = null;
	ResultSet rs = null;
	
	//Database connection
	Class.forName("com.mysql.jdbc.Driver").newInstance ();
	connection = DriverManager.getConnection(connectionURL,"root","dakgator123");
	statement = connection.createStatement();
	
	
	//Extracting Book Information//
	rs = statement.executeQuery("SELECT * FROM Books where BookID =" + bookID);
	
	String title = "", author = "", isbn = "", publisher = "", edition = "", sellerprice = "", marketprice = "", condition = "";
	
	while(rs.next()) {
	
		title = rs.getString("title");
		author = rs.getString("author");
		isbn = rs.getString("isbn");
		publisher = rs.getString("publisher");
		edition = rs.getString("edition");
		sellerprice = rs.getString("sellerprice");
		marketprice = rs.getString("marketprice");
		condition = rs.getString("Condtn");
	
	}
	
	
	//Extracting Seller Information//
	rs = statement.executeQuery("SELECT * FROM user WHERE email=\""+ sellerID +"\"");
	
	String sName = "", semail = "", sphone = "", sfax = "", saddress = "", scity = "", spincode = "", scountry = "", sstate = "";
	
	while(rs.next()) {
		sName = rs.getString("name");
		semail = rs.getString("email");
		sphone = rs.getString("phone");
		sfax = rs.getString("fax");
		saddress = rs.getString("address");
		scity = rs.getString("city");
		spincode = rs.getString("pincode");
		scountry = rs.getString("country");
		sstate = rs.getString("state");
	}
	
	
	
	
	//Extracting Buyer Information//
	rs = statement.executeQuery("SELECT * FROM user WHERE email=\""+ buyerID +"\"");

	String bName = "", bemail = "", bphone = "", bfax = "", baddress = "", bcity = "", bpincode = "", bcountry = "", bstate = "";
	
	while(rs.next()) {
		bName = rs.getString("name");
		bemail = rs.getString("email");
		bphone = rs.getString("phone");
		bfax = rs.getString("fax");
		baddress = rs.getString("address");
		bcity = rs.getString("city");
		bpincode = rs.getString("pincode");
		bcountry = rs.getString("country");
		bstate = rs.getString("state");
	}
	
	
	//Message to the buyer//
	
	msg2buyer = "Greetings from TradeMyBook. <br><br>Please contact the seller to fix the deal. <br><br>The seller details" +
		" are as follows. <br><br>Name: " + sName + " <br>Email: " + semail + " <br>Phone: " + sphone +
		" <br>Address: " + saddress + " <br>City: " + scity + " <br>Pin Code: " + spincode;
	
	msg2buyer = msg2buyer + "<br><br>The details of the book you have ordered are as follows <br><br>Title: " + title + " <br>Author: " + author + 
			" <br>Seller Price: " + sellerprice + " <br>Market Price: " + marketprice;
	
	msg2buyer = msg2buyer + " <br><br>Thank you for your participation. <br>Regards, <br>Team TradeMyBook";
			
	
			
	//Message to the sender//
	
	msg2seller = "Greetings from TradeMyBook. <br><br>The following member has shown interest in buying the book " +
		"you have posted. <br><br>The details of the book you have posted are as follows <br><br>Title: " + title + " <br>Author: " + author + " <br><br>The member details are as follows. " +
		" <br><br>Name: " + bName + " <br>Email: " + bemail + " <br>Phone: " + bphone +
		" <br>Address: " + baddress + " <br>City: " + bcity;
	
	msg2seller = msg2seller + " <br><br>Thank you for your participation. <br>Regards, <br>Team TradeMyBook";
	
	
	
	
	String bookStatus = "SELECT * FROM Transaction WHERE BookID = '" + bookID + "'";
	rs = statement.executeQuery(bookStatus);
	
	String flg = "";
	
	while(rs.next()) {
		flg = rs.getString("Status").trim();
	}
	
	
	if(flg.equals("pending")) {
		out.print("Sorry!! This Book has been booked");
	}
	else if((buyerID == "null") || (buyerID == null)) {
		
		//Do Nothing Authentication Failed//
		out.print("Please Login to buy books!!!");
	}
	else {
		
		out.print("Thanks for your participation. You will receive the sellers detail via Email shortly.");
		
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");
		
		Session mailSession = Session.getInstance(props,
				new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication("trademy3ook@gmail.com","dakgator123");
					}
				});
	 
			try {
						
				Message message = new MimeMessage(mailSession);
				message.setFrom(new InternetAddress("trademy3ook@gmail.com"));
				
				message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(buyerID));
				message.setSubject("TradeMyBook Notification");
				//message.setText(msg2buyer);
				message.setContent(msg2buyer, "text/html; charset=utf-8");
	 
				Transport.send(message);
	 
				message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(sellerID));
				message.setSubject("TradeMyBook Notification");
				//message.setText(msg2seller);
				message.setContent(msg2seller, "text/html; charset=utf-8");
				
				Transport.send(message);
											
				//System.out.println("Done");
				
							
				//Enter into the transaction table//
							    					
		   		String myQuery = "INSERT INTO Transaction(BookID, SellerID, BuyerID, DealDate, Status)" +
		   		        "VALUES ('" + bookID + "','" + sellerID + "','" + buyerID + "', CURDATE(), 'pending')";

		   				
   		   		PreparedStatement ps = connection.prepareStatement(myQuery);
   				ps.executeUpdate();
   				connection.close();			
			
			} catch (MessagingException e) {
				throw new RuntimeException(e);
			}
	}
	
	
	
%>


