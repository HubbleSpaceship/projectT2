package com.korea.k2.cart;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartDaoImpl implements CartDao {
	
	@Autowired
	private SqlSessionTemplate  mybatis;

	@Override
	public void insert(CartVO vo) {
		//System.out.println("======> insert : " + vo);
		mybatis.insert("CART.INSERT",vo);
		
	}

	@Override
	public List<CartVO> selectAll(CartVO vo) {
		//System.out.println("======> selectAll : " + vo);
		return mybatis.selectList("CART.SELECT",vo);
	}

	@Override
	public void delete(CartVO vo) {
		//System.out.println("======> delete : " + vo);
		mybatis.delete("CART.DELETE",vo);
		
	}

	@Override
	public void deleteAll(CartVO vo) {
		mybatis.delete("CART.DELETEALL",vo);
		
	}

	@Override
	public void updateCart(CartVO vo) {
		mybatis.update("CART.CARTUPDATE",vo);
		
	}

	@Override
	public void insertOrderDoc(OrderDocVO vo) {
		mybatis.insert("CART.OrderDoc",vo);
		
	}

	@Override
	public void insertOrderMoney(OrderMoneyVO vo) {
		mybatis.insert("CART.OrderMoney",vo);
		
	}

	@Override
	public int orderG(OrderMoneyVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("CART.orderG",vo);
	}

	@Override
	public List<OrderMoneyVO> orderList(OrderMoneyVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectList("CART.orderList", vo);
	}

	@Override
	public List<OrderOneVO> orderOne(OrderOneVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectList("CART.orderOne", vo);
	}

	

}
