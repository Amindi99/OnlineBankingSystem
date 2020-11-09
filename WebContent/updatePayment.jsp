<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update details</title>
<link href="Style.css" rel="stylesheet" type="text/css">
</head>
<body>


       <div id="welcome_notice">Welcome to E-Banking System</div>
       <br><br><br><br> 
       
        <img class="img1" src="Images/money.png"  width="45%" height="420"> 

<%
	String cid = request.getParameter("cid");
	String invoiceid = request.getParameter("invoiceid");
	String cusname = request.getParameter("cusname");
	String amount = request.getParameter("amount");
	String pdate = request.getParameter("pdate");

%>

<form action = "/banking/UpdatePaymentServlet" method = "post">

	Customer ID : <br><input type = "text" name = "cid" value = "<%=cid%>" readonly ><br>
	Invoice Number :<br><input type = "text" name = "invoiceid" value = "<%=invoiceid%>"><br>
	Customer Name :<br><input type = "text" name = "cusname" value = "<%=cusname%>"><br>
	Amount :<br><input type = "text" name = "amount" value = "<%=amount%>"><br>
	Date of payment :<br><input type = "text" name = "pdate" value = "<%=pdate %>"><br><br>
	
	<input type = "submit" name = "submit" value = "Update my data"><br>

</form>



</body>
</html>