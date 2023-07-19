package com.korea.controller;

import java.io.File;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.korea.k2.product.ProductService;
import com.korea.k2.product.ProductVO;

@Controller
public class ProductController {
	
	 @Autowired
	   private ProductService service;
	 	
	 private String path = "";
	private String  onlyFilename ="";
	private String  extension="";


	 
	 @RequestMapping("/insertProduct.do")
	   String insertProduct(Model model, ProductVO vo, HttpServletRequest request) throws Exception{
		 
		 path = request.getSession().getServletContext().getRealPath("/product/files/");
		 
		 long time = System.currentTimeMillis();
		SimpleDateFormat daytime =new SimpleDateFormat("HHmmss");
		String timeStr=daytime.format(time);
		 
		 MultipartFile updateFile = vo.getProductImg();
		 String fileName=updateFile.getOriginalFilename();
	     File f = new File(path+fileName) ;
	     
			if (!updateFile.isEmpty()) { //  파일이 있으면 ...
				if (f.exists()) {
				// 기본 파일명과 중복이 되면 ...	
				 onlyFilename = fileName.substring(0, fileName.indexOf("."));
				 extension=fileName.substring(fileName.indexOf("."));
				 fileName =onlyFilename + "_" + timeStr +	extension;
				 updateFile.transferTo(new File(path+fileName));	
				}else {
				  // 기본 파일과 중복이 되지 않으면 ..	
				  updateFile.transferTo(new File(path+fileName));	
				}
				
				vo.setProductImgStr(fileName);
			}else {
				fileName = "space.jpg";
				vo.setProductImgStr(fileName);
			}		


		 vo.setProductName(vo.getProductName());
		 vo.setProductPrice(vo.getProductPrice());
		 vo.setProductDesc(vo.getProductDesc());
		 vo.setProductImgStr(fileName);
		 vo.setProductDate(vo.getProductDate());
		
		 System.out.println("====> " + path);
		 service.insert(vo);
		return "/ProductSelectAll.do";
		
		 
		
	   }
	 
	 @RequestMapping("/ProductSelectAll.do")
	   String selectAll(Model model, ProductVO vo)  {
		   
		   model.addAttribute("li", service.selectAll(vo))  ; 
		   
		   return "/product/productSelectAll.jsp";	   
		
	   }
	 
	 @RequestMapping("/ProductSelectONE.do")
	   String SelectONE(Model model, ProductVO vo)  {
		   
		   model.addAttribute("p", service.selectOne(vo))  ; 
		   
		   return "/product/ProductEdit.jsp";	   
		
	   }
	 
	 @RequestMapping("/ProductDelete.do")
	   String ProductDelete(Model model, ProductVO vo)  throws Exception{
		  
		   service.delete(vo);
		   System.out.println("====> " + "삭제하기" + vo);
		   return "/ProductSelectAll.do";	   
		
	   }
	 
	
}
