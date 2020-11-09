package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdatePaymentServlet")
public class UpdatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cid = request.getParameter("cid"); 
		String invoiceid = request.getParameter("invoiceid"); 
		String cusname = request.getParameter("cusname"); 
		String amount = request.getParameter("amount"); 
		String pdate = request.getParameter("pdate"); 
		
		boolean isTrue;
		isTrue = CustomerDB.updatePayment(cid,invoiceid,cusname,amount,pdate);
		
		if(isTrue == true) {
			
			List<Customer> cusDetails = CustomerDB.getPaymentDetails(cid);
			request.setAttribute("cusDetails",cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("finalBill.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Customer> cusDetails = CustomerDB.getPaymentDetails(cid);
			request.setAttribute("cusDetails",cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("finalBill.jsp");
			dis.forward(request, response);
		}
	}
}