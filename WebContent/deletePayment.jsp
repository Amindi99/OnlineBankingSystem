<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<script>

function done() {
  alert("Your online Payment is cancled!");
  window.location.href = "PaymentCategory.jsp";
}
</script>

<head>
<meta charset="ISO-8859-1">
<title>Delete payment</title>
<link href="Style.css" rel="stylesheet" type="text/css">
</head>
<body>


       <div id="welcome_notice">Welcome to E-Banking System</div>
       <br><br><br>
       
        <img class="img1" src="Images/payment.png"  width="45%" height="420"> 
       
       <h1>CANCEL ONLINE PAYMENT</h1>

<%
	String cid = request.getParameter("cid");
	String invoiceid = request.getParameter("invoiceid");
	String cusname = request.getParameter("cusname");
	String amount = request.getParameter("amount");
	String pdate = request.getParameter("pdate");

%>

<form action = "/banking/DeletePaymentServlet" method = "post">

	Customer ID : <br><input type = "text" name = "cid" value = "<%=cid%>" readonly ><br>
	Invoice Number :<br><input type = "text" name = "invoiceid" value = "<%=invoiceid%>" readonly><br>
	Customer Name :<br><input type = "text" name = "cusname" value = "<%=cusname%>" readonly><br>
	Amount :<br><input type = "text" name = "amount" value = "<%=amount%>" readonly><br>
	Date of payment :<br><input type = "text" name = "pdate" value = "<%=pdate %>" readonly><br><br>
	
	<input type = "submit" name = "submit" value = "Delete my data"  onclick="done()"><br>

</form>



</body>
</html>