<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>

<head>
	
<meta charset="ISO-8859-1">
	<title>Online Payment</title>
<link href="Style.css" rel="stylesheet" type="text/css">
</head>

<body>
		
       <div id="welcome_notice">Welcome to E-Banking System</div>
       <br><br>                  
    
       <br>                           
	 <div id="note2"><br>
		Re enter the details to see the receipt.
	</div>	
	<br>
	
		 <img class="img2" src="Images/online.jpeg"  width="30%" height="300">
	
	<div class="detailinput">
	
	<div style="text-align: left;">
             
   </div>
		
		<form action="/banking/BillShowServlet" method="post">
			 Customer Id :<br>
			 <input type="text" name="cid" >
			 
			 <br>
			 Invoice Number :<br>
			 <input type="text" name="invoiceid" >
			 <br>
		
		
			<input type="submit" name="submit" value="Show Details" >
		
		
		</form>
</div>		
		
</body>
</html>