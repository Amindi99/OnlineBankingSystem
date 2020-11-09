<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>	

<script>

function done() {
  alert("Your online Payment is successfully done!");
  window.location.href = "PaymentCategory.jsp";
}
</script>
 
<head>
<meta charset="ISO-8859-1">
<title>Final Bill</title>
<link href="Style.css" rel="stylesheet" type="text/css">
</head>
<body>

       <div id="welcome_notice">Welcome to E-Banking System</div>
       <br><br><br>  

<center>
<H1>PAYMENT DETAILS</H1>

	<table>
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var = "cid" value = "${cus.cid}"/>
	<c:set var = "invoiceid" value = "${cus.invoiceid}"/>	
	<c:set var = "cusname" value = "${cus.cusname}"/>
	<c:set var = "amount" value = "${cus.amount}"/>
	<c:set var = "pdate" value = "${cus.pdate}"/>

	
	<tr>
		<td>Customer ID </td>
		<td>${cus.cid}</td>
	</tr>
		<tr>
		<td>Invoice Number </td>
		<td>${cus.invoiceid}</td>
	</tr>
	<tr>
		<td>Customer Name </td>
		<td>${cus.cusname}</td>
	</tr>
	<tr>
		<td>Amount </td>
		<td>${cus.amount}</td>
	</tr>
	<tr>
		<td>Date of payment </td>
		<td>${cus.pdate}</td>
	</tr>
	
	<tr>	
	</c:forEach>
	</table>
	<br>
	
	<!-- Update details -->
	<c:url value = "updatePayment.jsp" var = "paymentUpdate">
		<c:param name = "cid" value = "${cid}"/>
		<c:param name = "invoiceid" value = "${invoiceid}"/>
		<c:param name = "cusname" value = "${cusname}"/>
		<c:param name = "amount" value = "${amount}"/>
		<c:param name = "pdate" value = "${pdate}"/>
	
	</c:url>
	
	<a href = "${paymentUpdate}">
	<input  type = "submit" name = "update" value = "Update my data">
	</a>
	
	
	<!-- Delete details -->
	<c:url value = "deletePayment.jsp" var = "paymentDelete">
		<c:param name = "cid" value = "${cid}"/>
		<c:param name = "invoiceid" value = "${invoiceid}"/>
		<c:param name = "cusname" value = "${cusname}"/>
		<c:param name = "amount" value = "${amount}"/>
		<c:param name = "pdate" value = "${pdate}"/>
		
	</c:url>
	
	<a href = "${paymentDelete}">
	<input  type = "submit" name = "delete" value = "Delete my data">
	</a>
	
	<h2>If your payment details are correct, Just click on Accept payment</h2>
	<input type = "submit" name = "done" value = "Accept Payment"  onclick="done()">
</center>


</body>
</html>