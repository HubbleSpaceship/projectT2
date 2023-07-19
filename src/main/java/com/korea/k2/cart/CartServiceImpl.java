package com.korea.k2.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl implements CartService{
	@Autowired
	private CartDao dao;

	@Override
	public void insert(CartVO vo) {
		dao.insert(vo);
		
	}

	@Override
	public List<CartVO> selectAll(CartVO vo) {
		// TODO Auto-generated method stub
		return dao.selectAll(vo);
	}

	@Override
	public void delete(CartVO vo) {
		dao.delete(vo);
		
	}

	@Override
	public void deleteAll(CartVO vo) {
		dao.deleteAll(vo);
		
	}

	@Override
	public void updateCart(CartVO vo) {
		dao.updateCart(vo);
		
	}

	@Override
	public void insertOrderDoc(OrderDocVO vo) {
		dao.insertOrderDoc(vo);
		
	}

	@Override
	public void insertOrderMoney(OrderMoneyVO vo) {
		dao.insertOrderMoney(vo);
		
	}

	@Override
	public int orderG(OrderMoneyVO vo) {
		// TODO Auto-generated method stub
		return dao.orderG(vo);
	}

	
	@Override
	public List<OrderMoneyVO> orderList(OrderMoneyVO vo) {
		// TODO Auto-generated method stub
		return dao.orderList(vo);
	}

	@Override
	public List<OrderOneVO> orderOne(OrderOneVO vo) {
		// TODO Auto-generated method stub
		return dao.orderOne(vo);
	}

}
