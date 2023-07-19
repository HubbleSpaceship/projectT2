package com.korea.k2.guestbook;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class GuestbookDaoImpl implements GuestbookDao {
	
	@Autowired
	private SqlSessionTemplate  mybatis;

	@Override
	public void insert(GuestbookVO vo) {
		mybatis.insert("Guestbook.INSERT", vo);
		
	}

	@Override
	public List<GuestbookVO> list(GuestbookVO vo) {
		// TODO Auto-generated method stub 
		return mybatis.selectList("Guestbook.SELECT", vo);
	}

	@Override
	public int totalcount(GuestbookVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("Guestbook.totalCount", vo);
	}

}
