package com.korea.k2.guestbook;

import java.util.List;

public interface GuestbookDao {
	void insert(GuestbookVO vo);
	List<GuestbookVO> list(GuestbookVO vo);
	int totalcount(GuestbookVO vo);
}
