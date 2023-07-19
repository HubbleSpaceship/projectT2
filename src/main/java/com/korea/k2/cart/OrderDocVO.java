package com.korea.k2.cart;

import java.sql.Date;

import lombok.Data;

@Data
public class OrderDocVO {
	
	   private int idx;
	   private int custNo;
	   private int cartId;
	   private int productId;
	   private String productName;
	   private int amount;
	   private Date getDate;
	   
	   private int orderG;
	   

}
