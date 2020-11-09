package com.customer;

public class Customer{ 

private String cid;
private String invoiceid;
private String cusname;
private String amount;
private String pdate;


	public String getCid() {
	return cid;
}

public String getInvoiceid() {
	return invoiceid;
}

public String getCusname() {
	return cusname;
}

public String getAmount() {
	return amount;
}

public String getPdate() {
	return pdate;
}

	public Customer(String cid, String invoiceid, String cusname, String amount, String pdate) {
		super();
		this.cid = cid;
		this.invoiceid = invoiceid;
		this.cusname = cusname;
		this.amount = amount;
		this.pdate = pdate;
	}

	
}
