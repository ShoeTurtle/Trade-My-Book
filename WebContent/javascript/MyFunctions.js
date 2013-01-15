function test() {	

}


//Function to send a email Notification//
function emailNotify(sellerID, bookID) {
		
	$.ajax({
		async: false,
		type: "POST",		
		url: 'jsp/sendMail.jsp',
		data: { para1: sellerID, para2: bookID},
		success: function(val){
			var result = $.trim(val);
			alert(result);
		}
	});
	
	//alert("Your Request Is Being Processed");
	
}

//Function to populate the category//
function loadCategory(cattype){
		var xmlhttp;
		var url='jsp/subcat.jsp';
		if (window.XMLHttpRequest){// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp=new XMLHttpRequest();
			}
		else{// code for IE6, IE5
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange=function(){
			if (xmlhttp.readyState==4 && xmlhttp.status==200){
		    	document.getElementById("box-cat").innerHTML=xmlhttp.responseText;
			}
			};
			
		switch(cattype){
		case 'Academic and Professional':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/academic.jsp",true);
			//loadBooks('box-prod','jsp/loadbooks.jsp',cattype);
			loadBooks('box-prod', 'jsp/testLoadBooks.jsp', cattype);
			break;
		case 'Biographies and Autobiographies':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/biography.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Business, Investing and Management':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/business.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Children and Teens':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/children.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Coffee Table':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/coffee.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'College Text and Reference':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/college.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Comics and Graphic Novels':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/novels.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Computers and Internet':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/computers.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Dictionaries':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/dictionaries.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Entrance Exams Preparation':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/exams.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Literature and Fiction':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/literature.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Religion and Spirituality':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/religion.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Science and Technology':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/science.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Arts, Photography and Design': 
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/arts.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Cooking, Food and Wine':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/foods.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Crafts and Hobbies':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/hobbies.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Families and Relationships':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/family.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Health and Fitness':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/health.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'History and Politics':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/history.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Home and Garden':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/home.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Humor':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/humor.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Music, Films and Entertainment':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/entertainment.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Outdoors and Nature':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/outdoors.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Philosophy':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/philosophy.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Refrence':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/refrence.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Self Help':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/self.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Sports and Games':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/sports.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			break;
		case 'Travel':
			xmlhttp.open("GET",url+"?cat="+cattype,true);
			//xmlhttp.open("GET","jsp/travel.jsp",true);
			loadBooks('box-prod','jsp/testLoadBooks.jsp',cattype);
			//loadDetailedView();
			break;    
		}
		
		xmlhttp.send();
	}

//Function to show sub category//
function showSubcat(cat){
	//alert(cat);
	var xmlhttp;
	var div='subcat';
	var url='jsp/show_subcat_in_seller.jsp';
	 if (window.XMLHttpRequest)
	   {// code for IE7+, Firefox, Chrome, Opera, Safari
	   xmlhttp=new XMLHttpRequest();
	   }
	 else
	   {// code for IE6, IE5
	   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	   }
	 xmlhttp.onreadystatechange=function()
	   {
	   if (xmlhttp.readyState==4 && xmlhttp.status==200)
	     {
	     document.getElementById(div).innerHTML=xmlhttp.responseText;
	     }
	   };
	 xmlhttp.open("GET",url+"?cat="+cat,true);
	 xmlhttp.send(null);
}

//Function to load books under any main category, calls loadbooks.jsp
function loadBooks(div,url,category){	
	var xmlhttp;
	 if (window.XMLHttpRequest)
	   {// code for IE7+, Firefox, Chrome, Opera, Safari
	   xmlhttp=new XMLHttpRequest();
	   }
	 else
	   {// code for IE6, IE5
	   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	   }
	 xmlhttp.onreadystatechange=function()
	   {
	   if (xmlhttp.readyState==4 && xmlhttp.status==200)
	     {
	     document.getElementById(div).innerHTML=xmlhttp.responseText;
	     }
	   };
	   
	 xmlhttp.open("GET", url+"?cat="+category, true);
	 xmlhttp.send(null);
}

//New Seller form Validation and submit
function validateForm(){

	var title=document.forms["sellbooksfrm"]["title"].value;
	var isbn=document.forms["sellbooksfrm"]["isbn"].value;
	var author=document.forms["sellbooksfrm"]["author"].value;
	var publisher=document.forms["sellbooksfrm"]["publisher"].value;
	var edition=document.forms["sellbooksfrm"]["edition"].value;
	var sellerprice=document.forms["sellbooksfrm"]["sellerprice"].value;
	var marketprice=document.forms["sellbooksfrm"]["marketprice"].value;
	var condtn=document.getElementById("condtn");
	var condition=condtn.options[condtn.selectedIndex].value;
	var cat=document.getElementById("cat");
	var category=cat.options[cat.selectedIndex].value;
	var subcat=document.getElementById("subcat");
	var subcategory=subcat.options[subcat.selectedIndex].value;
	
	var description = document.forms["sellbooksfrm"]["description"].value;
	

	
	if (title==null || title==""){
		  alert("Please Enter Book's Title");
		  return 0;
	  }
	
	if (isbn==null || isbn==""){
		  alert("Please Enter ISBN Number");
		  return 0;
	  }
	
	
	if(isNaN(isbn)|| isbn.indexOf(" ")!=-1){
        alert("Enter a 10 digit ISBN Version");
        	return 0;
		}
	
	if (isbn.length > 10){
          alert("Enter a 10 digit ISBN Version"); 
          return 0;
	}
	
	if (isbn.length < 10){
		alert("Enter a 10 digit ISBN Version"); 
		return 0;
	}	
	
	
	if (author==null || author==""){
		  alert("Please Enter The Author of the Book");
		  return 0;
	  }
	if (publisher==null || publisher==""){
		  alert("Please Enter The Publisher of the Book");
		  return 0;
	  }
	if (edition==null || edition==""){
		  alert("Please Enter Book's Edition");
		  return 0;
	  }
	if (sellerprice==null ||sellerprice==""){
		  alert("Please Enter Your Price for the Book");
		  return 0;
	  }
	
	if(isNaN(sellerprice)|| sellerprice.indexOf(" ")!=-1){
        alert("Seller Price Should Be a Numeric Value");
        return 0;
	}
		
	if (marketprice==null || marketprice==""){
		  alert("Please specify the price you bought the book in");
		  return 0;
	  }
	
	
	if(isNaN(marketprice)|| marketprice.indexOf(" ")!=-1){
        alert("Market Price Should Be a Numeric Value");
        return 0;
	}
		
	if (condition==null || condition=="#"){
		  alert("Please choose the Condition of the Book");
		  return 0;
	  }
	if (category==null || category=="#"){
		  alert("Please choose the Category the Book Belongs to");
		  return 0;
	  }
	if (subcategory==null || subcategory=="#"){
		  alert("Please choose the Sub Category of the Book");
		  return 0;
	  }
	
	if (description==null || description==""){
		  alert("Please Enter Book's Description");
		  return 0;
	  }

	return 1;
}

//Registration Form Validation//
function registrationValidateForm(){
	
	var fname=document.forms["registrationfrm"]["firstname"].value;
	var lname=document.forms["registrationfrm"]["lastname"].value;
	var email=document.forms["registrationfrm"]["email"].value;
	var ph=document.forms["registrationfrm"]["telephone"].value;
	//var fax=document.forms["registrationfrm"]["fax"].value;
	var co=document.forms["registrationfrm"]["company"].value;
	var add=document.forms["registrationfrm"]["address"].value;
	var city=document.forms["registrationfrm"]["city"].value;
	var pin=document.forms["registrationfrm"]["postcode"].value;
	var cntry=document.forms["registrationfrm"]["country"].value;
	var state=document.forms["registrationfrm"]["state"].value;
	var pswd1=document.forms["registrationfrm"]["password1"].value;
	var pswd2=document.forms["registrationfrm"]["password2"].value;
	
	
	
	if (fname==null || fname=="")
	  {
	  alert("Please Enter Your First Name");
	  return 0;
	  }
	
	if (lname==null || lname=="")
	  {
	  alert("Please Enter Your Last Name");
	  return 0;
	  }
	if (email==null || email=="")
	  {
	  alert("Please Enter Your Email address");
	  return 0;
	  }
	if (ph==null || ph=="")
	  {
	  alert("Please Enter Your Phone Number");
	  return 0;
	  }	
	if (co==null || co=="")
	  {
	  alert("Please Enter Your Company");
	  return 0;
	  }
	if (add==null || add=="")
	  {
	  alert("Please Enter Your Address");
	  return 0;
	  }
	if (city==null || city=="")
	  {
	  alert("Please Enter Your City");
	  return 0;
	  }
	if (pin==null || pin=="")
	  {
	  alert("Please Enter Your Pin Code");
	  return 0;
	  }
	if (cntry==null || cntry=="")
	  {
	  alert("Please Enter Your Country");
	  return 0;
	  }
	if (state==null || state=="")
	  {
	  alert("Please Enter Your State");
	  return 0;
	  }
	if (pswd1==null || pswd1=="")
	  {
	  alert("Enter Password");
	  return 0;
	  }
	if (pswd2==null || pswd2=="")
	  {
	  alert("Confirm Password");
	  return 0;
	  }
	if(pswd1 != pswd2)
		{
		alert("Password Does Not Match");
		return 0;
		}
	
	return 1;
	}

//login submit
function loginSubmitform(){
	var valid;
	valid=loginValidateForm();
	if (valid==1){
		document.loginfrm.submit();
	}
}

//registration using ajax call from the jQuery library
function registrationSubmitform(){

	var valid;
    var emailverfy=1;
    var phverfy=1;
    var emailexist=1;
    
    valid=registrationValidateForm();
    emailverfy=verifyEmail();
    emailexist=verfyEmailExist();
    phverfy=verifyPh(); 
    
    //alert(valid + " " + emailverfy + " " + emailexist + " " + phverfy);
    
    if (valid==1 && emailverfy==1 && phverfy==1 && emailexist==1){

    	//document.registrationfrm.submit();
		//Write a AJAX Code to submit the items here//
		
		//firstname lastname email telephone fax company address city postcode country state password1 password2
		
		var fname=document.forms["registrationfrm"]["firstname"].value;
		var lname=document.forms["registrationfrm"]["lastname"].value;
		var email=document.forms["registrationfrm"]["email"].value;
		var ph=document.forms["registrationfrm"]["telephone"].value;
		var fax="NIL";   //document.forms["registrationfrm"]["fax"].value;
		var co=document.forms["registrationfrm"]["company"].value;
		var add=document.forms["registrationfrm"]["address"].value;
		var city=document.forms["registrationfrm"]["city"].value;
		var pin=document.forms["registrationfrm"]["postcode"].value;
		var cntry=document.forms["registrationfrm"]["country"].value;
		var state=document.forms["registrationfrm"]["state"].value;
		var pswd1=document.forms["registrationfrm"]["password1"].value;
		var pswd2=document.forms["registrationfrm"]["password2"].value;
		
		var dataString = 'firstname='+ fname + '&lastname=' + lname + '&email=' + email +
		'&telephone=' + ph + '&fax=' + fax + '&company=' + co + '&address=' + add +
		'&city=' + city + '&postcode=' + pin + '&country=' + cntry + '&state=' + state + 
		'&password1=' + pswd1 + '&password2=' + pswd2;  
		//alert (dataString);return false;  
		
		
		$.ajax({  
		  type: "POST",  
		  url: "jsp/register.jsp",  
		  data: dataString,  
		  success: function() { 
		    //$('#contact_form').html("<div id='message'></div>");  
		    //$('#message').html("<h2>Contact Form Submitted!</h2>")  
		    //.append("<p>We will be in touch soon.</p>")  
		    //.hide()  
		    //.fadeIn(1500, function() {  
		    //  $('#message').append("<img id='checkmark' src='images/check.png' />");  
		    //});  
			  alert('Registration Successful');
			  myStatus('jsp/login.jsp');
		  },
		  error: function() {
			  alert('Error');
		  }
		});		
	}

}



//Function to load books on page load
function loadBooksOnPageLoad(div,page){
	 var xmlhttp;
	 if (window.XMLHttpRequest)
	   {// code for IE7+, Firefox, Chrome, Opera, Safari
	   xmlhttp=new XMLHttpRequest();
	   }
	 else
	   {// code for IE6, IE5
	   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	   }
	 
	 xmlhttp.onreadystatechange=function()
	   {
	   if (xmlhttp.readyState==4 && xmlhttp.status==200)
	     {
	     document.getElementById(div).innerHTML=xmlhttp.responseText;
	     }
	   };
	 xmlhttp.open("GET", page, true);
	 xmlhttp.send();
}

//This function is called when seller clicks on submit//
function sellbooksSubmitform(){	
	
	var valid;
	valid=validateForm();
	
	if (valid==1) {
		alert('Uploading The Books');
		document.sellbooksfrm.submit();		
	}
	
}

//Function to call the same function with different parameter to load books at two diff divs
function pageLoad(){
	 //loadBooksOnPageLoad('box-bestseller','jsp/bestsellers.jsp');
	 //loadBooksOnPageLoad('box-prod','jsp/featuredbooks.jsp')
	loadBooksOnPageLoad('box-prod', 'jsp/loadbooks.jsp');
	 
	 checkStatus();			 
}

//Checks the query string if login is validated or not//
function checkStatus() {			 
	 /*var vars = [], hash=null;
	 var q = document.URL.split('?')[1];
	    
	 if(q != undefined){
	 	q = q.split('&');
		for(var i = 0; i < q.length; i++){
	    	hash = q[i].split('=');
	        vars.push(hash[1]);
	        vars[hash[0]] = hash[1];
	    }
		status = vars[hash[0]];
	 }*/
	$.ajax({
		url: 'jsp/checkStatus.jsp',
		success: function(data){
			var flg = data;
			
			if((flg == 'null') || (flg == null)){						
				document.getElementById("welcome").innerHTML = "Welcome To Trade My Book " + 
					"<a href=\"javascript:loadLogin('box-prod', 'jsp/userlogin.jsp');\">Login</a> Or <a href=\"javascript:loadLogin('box-prod', 'jsp/userregister.jsp')\">Create Account</a>";
			}
			else {
				document.getElementById("welcome").innerHTML="You are successfully logged in "
					 + "<b>(</b> <a href=\"javascript: logMeOut()\">Logout</a> <b>)</b>";
			}
		}
	}); 
}

//Logging out//
function logMeOut() {	
	 $.ajax({
		url: 'jsp/test.jsp',
		success: function(data) {			
			window.location.href = "http://localhost:8080/trademybook.in/index.html";
		},
		error: function(e) {
			alert('error');
		}
	});
}

function loadDetailedView(bookID) {
	 //box-prod is the div i would want to insert the detailed view//
	var xmlhttp;
	xmlhttp = new XMLHttpRequest();
	
	
	xmlhttp.onreadystatechange = function() {
		if(xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('box-prod').innerHTML = xmlhttp.responseText;
		}	
	};
	
	xmlhttp.open('GET', 'jsp/detailedBookView.jsp?bookID='+bookID, true);
	xmlhttp.send();
	
}

//Adding the content to the div//
function loadLogin(div,url){	
	var xmlhttp;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
		}
	 else
	   {// code for IE6, IE5
	   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	   }
	 
	
	xmlhttp.onreadystatechange=function() {
	   
		if (xmlhttp.readyState==4 && xmlhttp.status==200)
	     {
			document.getElementById(div).innerHTML=xmlhttp.responseText;		   
	     }
	   };
	 
	   xmlhttp.open("GET",url,true);
	 
	   xmlhttp.send(null);
}

//login submit
function loginSubmitform(){
	var valid;
	valid=loginValidateForm();
	if (valid==1){
		document.loginfrm.submit();
	}
}


//login form validation
function loginValidateForm()
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

//Function to first perform a check if user is logged in
//if yes then call the loadLogin() function to load the content
//if not display an alert saying login

function myStatus(url) {	
	
	$.ajax({
		url: 'jsp/checkStatus.jsp',
		success: function(val){
			if((val == null) || (val == 'null')) {
				alert('Please Login to view this section!!!');				
				loadLogin('box-prod', 'jsp/userlogin.jsp');
			}
			else {
				loadLogin('box-prod', url);
			}
		}
	});
}


//Edit The Books Details//

function editBooks(bookID) {
	
		$.ajax({
			url: 'jsp/editBooks.jsp',
			data: {bookID : bookID},
			success: function(val) {
				$("#box-prod").html(val);
			}
		});
}


//Submit the Updated Book Details//

function updatebooksSubmit() {

	var valid;
	valid=validateForm();
	
	if (valid==1) {
		alert('Updating The Book');
		document.sellbooksfrm.submit();
	}
}


function updateAccountSubmit() {
	
	alert('Account Updated');
	document.updateregistrationfrm.submit();
	
}

function updateAccountView() {
	$.ajax({
		url: 'jsp/updateAccountView.jsp',
		success: function(val) {
			$('#updateDetails').html(val);
		}
	
	});
	
}

function updateEmailView() {
	$.ajax({
		url: 'jsp/updateEmailView.jsp',
		success: function(val) {
			$('#updateDetails').html(val);
		}
	
	});
}


function updatePasswordView() {
	$.ajax({
		url: 'jsp/updatePasswordView.jsp',
		success: function(val) {
			$('#updateDetails').html(val);
		}
	
	});

}

function updateAddressView() {
	$.ajax({
		url: 'jsp/updateAddressView.jsp',
		success: function(val) {
			$('#updateDetails').html(val);
		}
	
	});
}



//Function for email verification//

function verifyEmail(){
    var x=document.forms["registrationfrm"]["email"].value;
    var atpos=x.indexOf("@");
    var dotpos=x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
      {
      alert("Not a valid e-mail address");
      return 0;
      }
    else {
    	return 1;
    }
}


//phone  number verification
function verifyPh(){
   var x = document.forms["registrationfrm"]["telephone"].value;
           if(isNaN(x)|| x.indexOf(" ")!=-1){
                                 alert("Error! Non Numeric Phone Number...");
               return 0;
           	}
                           if (x.length > 10){
                                   alert("Phone Number Should be 10 digits..."); 
                                   return 0;
                           }
                          if (x.length < 10){
                           alert("Phone Number Should be 10 digits..."); 
                           return 0;
                          }
                          return 1;
}
 

//Function to check if the email exists//
function verfyEmailExist(){
    var email=document.forms["registrationfrm"]["email"].value;
    var tmsg = "";
    //alert(email);
    $.ajax({
              async: false,
    		  type: "POST",
              url: "jsp/verifyEmail.jsp",
              data: { email: email}
            }).done(function( msg ) {
                    tmsg=jQuery.trim(msg);
                    //alert(tmsg);
                    	if (tmsg=="exist") {
                    			alert("Email already Exist");
                    	
                    	}
                    	
              
            });
    	
    if (tmsg=="exist") {
    		//alert("Email already Exist");
    		return 0;
    	}
    	else { return 1;}
}


//Function To Delete Books

function deleteBooks(bookID) {
	
	$.ajax({
		url: "jsp/deleteBooks.jsp",
		data: {bookID: bookID},
		success: function(){
			alert("The Book Has Been Removed");
			myStatus('jsp/uploadedBooks.jsp');
		}
	});
}


//Update Account from UpdateAccountView//

function updateAccount() {
	
	//First Validate Phone And Check if Name is Non Empty//	
		
	var name = document.forms["updateregistrationfrm_1"]["name"].value;
	var x = document.forms["updateregistrationfrm_1"]["telephone"].value;
    
	if(isNaN(x)|| x.indexOf(" ")!=-1) {
    	alert("Error! Non Numeric Phone Number...");
    }
    else if (x.length > 10) {
    	alert("Phone Number Should be 10 digits...");
    }
    else if (x.length < 10) {
    	alert("Phone Number Should be 10 digits...");
    }
    else if (name == "" || name == null){
    	alert("Please Fill In The Name");
    }
    else {
    	//Submitting the form//
    	alert("Updating Account Information");
    	document.updateregistrationfrm_1.submit();
    }
	
    
}


//Update Address from UpdateAdressView//

function updateAddress() {
	var company = document.forms["updateregistrationfrm_4"]["company"].value;
	var address = document.forms["updateregistrationfrm_4"]["address"].value;
	var city = document.forms["updateregistrationfrm_4"]["city"].value;

	var postcode = document.forms["updateregistrationfrm_4"]["postcode"].value;
	var country = document.forms["updateregistrationfrm_4"]["country"].value;
	var state = document.forms["updateregistrationfrm_4"]["state"].value;
	
	if(company == null || company == "") {
		alert("Company Is Blank");
	}
	else if (address = null || address == "" ) {
		alert("Address Is Empty");
	}
	else if (city == null || city == "") {
		alert("City Is Empty");
	}
	else if (postcode == null || postcode == "") {
		alert("Postcode Is Empty");
	}
	else if (country == null || country == "") {
		alert("Country Is Empty");
	}
	else if (state == null || state == "") {
		alert("State Is Empty");
	}
	else {
		alert("Updating Address Information");
		document.updateregistrationfrm_4.submit();
	}
}


function updatePassword() {
	
	var password1 = document.forms["updateregistrationfrm_3"]["password1"].value;
	var password2 = document.forms["updateregistrationfrm_3"]["password2"].value;
	
	if(password1 != password2) {
		alert("Password Does Not Match!!!");
	}
	else {
		alert("Updating Password");
		document.updateregistrationfrm_3.submit();
	}
		
}


function verifyEmail_(x){
    //var x=document.forms["registrationfrm"]["email"].value;
    var atpos=x.indexOf("@");
    var dotpos=x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
      {
      alert("Not a valid e-mail address");
      return 0;
      }
    else {
    	return 1;
    }
}



function verfyEmailExist_(email){
    //var email=document.forms["registrationfrm"]["email"].value;
    var tmsg = "";
    //alert(email);
    $.ajax({
              async: false,
    		  type: "POST",
              url: "jsp/verifyEmail.jsp",
              data: { email: email}
            }).done(function( msg ) {
                    tmsg=jQuery.trim(msg);
                    //alert(tmsg);
                    	if (tmsg=="exist") {
                    			alert("Email already Exist");
                    	
                    	}
                    	
              
            });
    	
    if (tmsg=="exist") {
    		//alert("Email already Exist");
    		return 0;
    	}
    	else { return 1;}
}


function updateEmail() {
    var email=document.forms["updateregistrationfrm_2"]["email"].value;
    
    
    var emailverfy=1;
    //var emailexist=1;
    
    emailverfy=verifyEmail_(email);
    //emailexist=verfyEmailExist_(email);
       
     
    if (emailverfy==1){
    	alert("Updating Email");
    	document.updateregistrationfrm_2.submit();
    }
    

}