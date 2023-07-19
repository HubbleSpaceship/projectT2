package com.korea.k2.openApi;

import java.util.List;


public interface CompanyDao {
	void insert(CompanyVO vo);
	void insertEv(EvSearchVO vo);
	CompanyVO  SelectOne(CompanyVO vo);
	EvSearchVO  EvSelectOne(EvSearchVO vo);
	List<CompanyVO> list(CompanyVO vo);
	List<EvSearchVO> listEv(EvSearchVO vo);
}
