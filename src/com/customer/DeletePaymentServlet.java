package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeletePaymentServlet")
public class DeletePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cid = request.getParameter("cid");
		boolean isTrue;
		
		isTrue = CustomerDB.deletePayment(cid);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Payment.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<Customer>  cusDetails  =CustomerDB.getPaymentDetails(cid);
			request.setAttribute(" cusDetails",  cusDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("finalBill.jsp");
			dispatcher.forward(request, response);
		}
	
	}

}
