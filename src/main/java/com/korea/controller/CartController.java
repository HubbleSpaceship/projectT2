package com.korea.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.korea.k2.cart.CartService;
import com.korea.k2.cart.CartVO;
import com.korea.k2.cart.OrderDocVO;
import com.korea.k2.cart.OrderMoneyVO;
import com.korea.k2.cart.OrderOneVO;


@Controller
public class CartController {
	 @Autowired
	   private CartService service;
	 
	 @RequestMapping("/orderOne.do")
	   String orderList(Model model, OrderOneVO vo ) throws Exception {
		model.addAttribute("li", service.orderOne(vo))  ; 
		 
		   return "/cart/orderOne.jsp";	   
		
	   }
	 
	 @RequestMapping("/orderList.do")
	   String orderList(Model model) throws Exception {
		model.addAttribute("li", service.orderList(null))  ; 
		 
		   return "/cart/orderList.jsp";	   
		
	   }
	 
	 @RequestMapping("/cartUpdate.do")
	 //웹에서 받은 건 다 String 으로 받아야 함
	   String cartUpdate(
			   @RequestParam String[] cartId, 
			   @RequestParam String[] custNo,
			   @RequestParam String[] productId, 
			   
			   @RequestParam String[] amount)  throws Exception {
		 
		 String custNoStr = "";
		 for(int i =  0; i < cartId.length; i++) {
			 CartVO vo = new CartVO();
			 custNoStr = custNo[i];
			 vo.setCartId(Integer.parseInt(cartId[i]));
			 vo.setAmount(Integer.parseInt(amount[i]));
			 service.updateCart(vo);
		 }
		 
		   return "redirect:/cartList.do?custno=" + custNo;	   
		
	   }
	 
	 @RequestMapping("/cartOrder.do")
	 //웹에서 받은 건 다 String 으로 받아야 함
	   String cartOrder(
			   @RequestParam String[] cartId, 
			   @RequestParam String[] custNo,
			   @RequestParam String[] productId, 
			   @RequestParam String[] productName,
			   @RequestParam String[] amount,
			   OrderMoneyVO mvo
			   )  throws Exception {
		 mvo.setOcustNo(Integer.parseInt(custNo[0]));
		 service.insertOrderMoney(mvo);
		 int orderG = service.orderG(mvo);
		 
		 OrderDocVO ovo = null;
		 int custNoStr = 0;
		 for(int i =  0; i < cartId.length; i++) {
			  ovo = new OrderDocVO();
			 custNoStr = Integer.parseInt(custNo[i]);
			 ovo.setCustNo(Integer.parseInt(custNo[i]));
			 ovo.setCartId(Integer.parseInt(cartId[i]));
			 ovo.setProductId(Integer.parseInt(productId[i]));
			 ovo.setProductName(productName[i]);
			 ovo.setAmount(Integer.parseInt(amount[i]));
			 ovo.setOrderG(orderG);
			 
			 service.insertOrderDoc(ovo);
			 System.out.println("====> ORDER " + ovo);
		 }
		
		 mvo.setOcustNo(custNoStr);
		 mvo.setShipping(mvo.getShipping());
		 mvo.setTotalMoney(mvo.getTotalMoney());
		//service.insertOrderMoney(mvo);
		 
		 CartVO cartVO = new CartVO();
		 cartVO.setCustNo(custNoStr);
		 service.deleteAll(cartVO);
		 	
		String custNoK = String.valueOf(custNoStr);
		   return "redirect:/cartList.do?custno=" + custNoK;	   
		
	   }
	 
	 
	 @RequestMapping("/cartInsert.do")
	   String cartInsert(CartVO vo)  throws Exception {
		 
		 service.insert(vo);
		  // System.out.println("===> CartController: " + vo);
		   return "/cartList.do";	   
		
	   }
	 
	 @RequestMapping("/cartDelete.do")
	   String cartDelete(CartVO vo) throws Exception {
		 
		 service.delete(vo);
		  // System.out.println("===> CartController: " + vo);
		   return "/cartList.do";	   
		
	   }
	 
	 @RequestMapping("/cartDeleteAll.do")
	   String cartDeleteAll(CartVO vo) throws Exception {
		 
		 service.deleteAll(vo);
		  // System.out.println("===> CartController: " + vo);
		   return "/cartList.do";	   
		
	   }
	 
	 @RequestMapping("/cartList.do")
	   String cartList(Model model, CartVO vo) throws Exception {
		 model.addAttribute("li", service.selectAll(vo))  ; 
		 
		   return "/cart/cart_list.jsp";	   
		
	   }
	 
	/* @RequestMapping("/cartOrderAll.do")
	   String cartOrderAll(Model model, OrderMoneyVO vo) throws Exception {
		 model.addAttribute("li", service.selectOrderAll(vo))  ; 
		 
		   return "/cart/cart_list_recept.jsp";	   
		
	   } */
	 
	
}
