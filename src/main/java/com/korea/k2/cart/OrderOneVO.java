package com.korea.k2.cart;

import java.sql.Date;

import lombok.Data;

@Data
public class OrderOneVO {
	
	private int shipping;
	private int totalmoney;
	private Date getdate;
	private String custname;
	private String phone;
	private String address;
	private int orderG;
	private int idx;
	private String productname;
	private int productid;
	private int amount;

}
