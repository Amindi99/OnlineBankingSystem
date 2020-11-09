package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PaymentInsertServlet")
public class PaymentInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cid = request.getParameter("cid");
		String invoiceid = request.getParameter("invoiceid");
		String cusname = request.getParameter("cusname");
		String amount = request.getParameter("amount");
		String pdate = request.getParameter("pdate");
		
boolean isTrue;
		
		isTrue = CustomerDB.insertcustomer(cid, invoiceid, cusname, amount, pdate);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("billShow.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccesspayment.jsp");
			dis2.forward(request, response);
		}
		
	}
		
	}
