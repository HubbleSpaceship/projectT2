package com.korea.k2.cart;

import java.util.List;

public interface CartService {
	void insert(CartVO vo);
	List<CartVO> selectAll(CartVO vo);
	void delete(CartVO vo);
	void deleteAll(CartVO vo);
	
	void updateCart(CartVO vo);
		

	void insertOrderDoc(OrderDocVO vo);
	void insertOrderMoney(OrderMoneyVO vo);
	int orderG(OrderMoneyVO vo);
	
	List<OrderMoneyVO> orderList(OrderMoneyVO vo);
	List<OrderOneVO>orderOne(OrderOneVO vo);
}
