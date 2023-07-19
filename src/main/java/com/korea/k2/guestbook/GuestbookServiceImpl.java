package com.korea.k2.guestbook;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GuestbookServiceImpl implements GuestbookService {
	@Autowired
	private GuestbookDao dao;

	@Override
	public void insert(GuestbookVO vo) {
		dao.insert(vo);
		
	}

	@Override
	public List<GuestbookVO> list(GuestbookVO vo) {
		// TODO Auto-generated method stub
		return dao.list(vo);
	}

	@Override
	public int totalcount(GuestbookVO vo) {
		// TODO Auto-generated method stub
		return dao.totalcount(vo);
	}

}
