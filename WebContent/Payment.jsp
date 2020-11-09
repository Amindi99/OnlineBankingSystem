<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>

<script>
function f()
{
if(document.payment.cid.value.length!=5)
	{ alert("Customer Id should contain 5 numbers");
     return false;
	}
if(document.payment.invoiceid.value.length!=5)
	{ alert("Invoice number should contain 5 numbers");
     return false;
	}
if(document.payment.cusname.value.length==0)
	{ alert("Customer name is Mandatory");
return false;
	}
if(document.payment.amount.value.length==0)
	{ alert("Amount is Mandatory");
return false;
	}
if(document.payment.pdate.value.length!=10||document.payment.pdate.value.charAt(2)!='/'||document.payment.pdate.value.charAt(5)!='/')
{
  alert("Date should be in dd/mm/yyyy format");
   return false;
}
document.payment.accept.value="Accept payment";
return true;
}
</script>

<head>
	
<meta charset="ISO-8859-1">
	<title>Online Payment</title>
<link href="Style.css" rel="stylesheet" type="text/css">
</head>

<body>
		
       <div id="welcome_notice">Welcome to E-Banking System</div>
       <br><br>                  
    
       <br>                           
	 <div id="note2">
		Add your correct details to success your payment.
	</div>	
	
	<div class="detailinput">
	
	
	 <img class="img1" src="Images/banking5.jpeg"  width="45%" height="420">
	
	<div style="text-align: left;">
              <img src="Images/master_icon.png" />
              <img src="Images/visa_icon.png"/>
   </div>
		
		<form action="/banking/PaymentInsertServlet" method="post" name="payment" onsubmit="return f()">
		<input type="hidden" name="accept" value="Accept payment">
		 
			 Customer Id :<br>
			 <input type="text" name="cid" >
			 
			
			 Invoice Number :<br>
			 <input type="text" name="invoiceid" >
			 <br>
			 
			 
			 Customer Name :<br>
			 <input type="text" name="cusname" >
			 <br>
			 
			 
			 Amount :<br>
			 <input type="text" name="amount" >
			 <br>
			 
			  
			 Date of payment :<br>
			 <input type="text" name="pdate" >
			 <br>
		
			 
			<input type="submit" name="submit" value="Accept payment" >
			<input type="reset"  value="Clear" name="Reset" class="button"/>
		
		</form>
</div>		
		
</body>
</html>