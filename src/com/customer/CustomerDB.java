package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDB {
	
	//instance variable
	private static boolean isSuccess; 
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
//------------------------------------------------------------------------------------------------------------------------------	
	  //INSERT
    public static boolean insertcustomer(String cid, String invoiceid, String cusname, String amount, String pdate) {
    	
    	try {
    		
    		con = DBconnetion.getConnection();
			stmt = con.createStatement();
    	    
    	    String sql = "insert into payment values ('"+cid+"','"+invoiceid+"','"+cusname+"','"+amount+"','"+pdate+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }

//--------------------------------------------------------------------------------------------------------------------------
    
    //SELECT
    public static List<Customer> validate(String cid,String invoiceid){
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		
		//validation
		try {
			
			con = DBconnetion.getConnection();
			stmt = con.createStatement();
				
		    String sql = "select * from payment where CustomerId='"+cid+"' and InvoiceNo='"+invoiceid+"'";	    
		    rs = stmt.executeQuery(sql);
		    
		    if(rs.next()) {
			String Cid = rs.getString(1);
			String Invoiceid = rs.getString(2);
			String Cusname = rs.getString(3);
			String Amount = rs.getString(4);
			String Pdate = rs.getString(5);
			
			
			Customer c = new Customer(Cid ,Invoiceid ,Cusname,Amount,Pdate);
			cus.add(c);
		    }
		    
		}
		catch(Exception e) {
		    e.printStackTrace();
		}
		
		return cus;
	}
    
//-------------------------------------------------------------------------------------------------------------------------------------
    
    //UPDATE
public static boolean updatePayment(String cid,String invoiceid,String cusname,String amount,String pdate) {
    	
    try {
    	con = DBconnetion.getConnection();
    	stmt = con.createStatement();
    	String sql = "update payment set InvoiceNo = '"+invoiceid+"' , CustomerName = '"+cusname+"' , Amount = '"+amount+"' , Date = '"+pdate+"'"
    			+"where CustomerId = '"+cid+"'";
    	int rs = stmt.executeUpdate(sql);
    	
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    }
    catch(Exception e) {
    	e.printStackTrace();
    }
    	 	
return isSuccess;	
    }
	
//-------------------------------------------------------------------------------------------------------------------------------------

	//RETRIEVE
public static List<Customer> getPaymentDetails(String Cid){
	
	ArrayList<Customer> cus = new ArrayList<>();
	
	try {
		con = DBconnetion.getConnection();
		stmt = con.createStatement();
		String sql = "select * from payment where CustomerId = '"+Cid+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			String cid = rs.getString(1);
			String invoiceid = rs.getString(2);
			String cusname = rs.getString(3);
			String amount = rs.getString(4);
			String pdate = rs.getString(5);	
			
			Customer c = new Customer(cid,invoiceid,cusname,amount,pdate);
			cus.add(c);
			
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
		
	}
	return cus;
}

//-------------------------------------------------------------------------------------------------------------------------------------
//DELETE

public static boolean deletePayment(String cid) {
	
	try {
		con = DBconnetion.getConnection();
    	stmt = con.createStatement();
    	String sql ="delete from payment where CustomerId = '"+cid+"'";
    	int rs = stmt.executeUpdate(sql);
    	
    	if (rs > 0) {
    		isSuccess = true;
    	}
    	
    	else 
    	{
    		isSuccess = false;
    	}
			
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
	
}

}














