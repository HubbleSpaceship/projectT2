<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/include/top.jsp" />
<section>
 <br>
 <div align="center">
 <h2> 장바구니 </h2>

<form method = "post" name = "f1" >
 <table border=1 width = 800>
	  <tr align="left" > 
	  <td colspan = 4> 
	  	구매자 : ${li[0].custname } <br> 
	  	전화번호 : ${li[0].phone } <br> 
	  	주소 : ${li[0].address } <br>
	  	수량 : ${li[0].amount} <br> 
	  </td>
	</tr>

	 <c:forEach items="${li}"  var="c" >
		 <tr align = center >
		    <td>  ${c.idx } </td> 
		    <td>  ${c.productid } </td> 
		    <td>  ${c.productname } </td> 
		    <td>  ${c.amount } </td> 
		 </tr>   
	  </c:forEach>
	  
		<tr>
	 		<td colspan = 4> 
			  	배송비 : ${li[0].shipping } <br> 
			  	주문금액 : ${li[0].totalmoney } <br> 
			  	주문 날짜 : ${li[0].getdate } <br>
	 		 </td> 
  		</tr>
  		</table>
  		</form>
  		</div>
  		</section>

<c:import url="/include/bottom.jsp" />