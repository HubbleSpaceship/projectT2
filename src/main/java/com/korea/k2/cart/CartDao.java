package com.korea.k2.cart;

import java.util.List;

public interface CartDao {
	//1. 장바구니 추가
	void insert(CartVO vo);
	
	//2. 장바구니 목록보기
	List<CartVO> selectAll(CartVO vo);
	
	//3. 장바구니 삭제
	void delete(CartVO vo);
	
	//4. 장바구니 전체 삭제
	void deleteAll(CartVO vo);
	
	//5. 장바구니 업데이트
	void updateCart(CartVO vo);
	
	//6. 주문서 저장하기
	void insertOrderDoc(OrderDocVO vo);
	
	//주문그룹 추가하기
	int orderG(OrderMoneyVO vo);
		
	//7. 주문금액 저장하기
	void insertOrderMoney(OrderMoneyVO vo);
	
	//8. 전체주문목록보기
	List<OrderMoneyVO> orderList(OrderMoneyVO vo);
	
	//9. 주문목록을 이용한 주문서 출력
	List<OrderOneVO>orderOne(OrderOneVO vo);
}
