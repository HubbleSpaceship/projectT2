package com.korea.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.korea.k2.guestbook.GuestbookService;
import com.korea.k2.guestbook.GuestbookVO;

@Controller
public class GuestbookController {
	
	@Autowired
	   private GuestbookService service;
	
	 @RequestMapping("/getGuestbookInsert.do")
	   String getGuestbookInsert(GuestbookVO vo) {
		//랜덤하게 값 넣기
		String [] str1 = {"박", "기", "김" , "홍", "김" ,"위" , "최" ,"박" ,"조", "이"};
		String [] str2 = {"선주", "정은", "나현" , "유진", "윤영" , "나은" , "성근" ,"준수"  ,"진호", "지수"};
		String [] title = {"더 살게요", "추천합니다" , "많이 파세요", "별로네요" , "보통이에요" , "무난합니다" ,"저렴하고 좋아요" , "굿" ,"배송이 빨라요", "포장이 꼼꼼해요!"};
	   
		for(int i = 1; i<= 555;i++) {
			int k1 = (int)(Math.random() * 10);
			int k2 = (int)(Math.random() * 10);
			int k3 = (int)(Math.random() * 10);
			
			vo.setWriter(str1[k1] + str2[k2]);
			vo.setTitle(title[k3]);
			service.insert(vo);
		}
	   
		return "/guestbook/insertOK.jsp";	   
			
	   }
	
	 @RequestMapping("/GuestbookList.do")
	   String GuestbookSelect(Model model, GuestbookVO vo)  {

		   model.addAttribute("tc", service.totalcount(vo));
		   System.out.println("전체 레코드의 수 : " + vo);
		   model.addAttribute("li", service.list(vo)); 
		  
		   return "/guestbook/GuestbookSelect.jsp";	   
		
	   }
	   
	 

}
