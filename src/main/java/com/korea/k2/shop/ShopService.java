package com.korea.k2.shop;

import java.util.List;

public interface ShopService {
   List<MemberVO> selectAll(MemberVO vo);
 
   void  insert(MemberVO vo);
   MemberVO  edit(MemberVO vo);
   int custno();
   void  update(MemberVO vo);
   
   List<MoneyVO> ShopMoney();
   
   String idCK(MemberVO vo);

}
