package com.korea.k2.cart;

import java.sql.Date;

import lombok.Data;

@Data
public class OrderMoneyVO {
	   private int idx;
	   private int OcustNo;
	   private int shipping;
	   private int totalMoney;
	   private Date getDate;

}
