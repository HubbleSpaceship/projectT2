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
  <tr align="center" > 
	 <td> 장바구니 ID </td> <td> 상품이름 </td>
	 <td> 상품가격 </td> <td> 수량 </td> <td> 상품이미지 </td> 
	  <td> 주문취소 </td>
	 </tr>    

	 <c:forEach items="${li}"  var="p" >
	 	
	 	<input type = hidden name = cartId value = "${p.cartId }" > 
		<input type = hidden name = custNo value = "${m.custno }" >
		<input type = hidden name = productId value = "${p.productId }" >
		<input type = hidden name = productName value = "${p.productName }" >
		 <tr align = center >
		    <td>  ${p.cartId } </td> 
		    <td>  ${p.productName } </td>
		 	<td>  <fmt:formatNumber value="${p.productPrice}" pattern ="#,##0"/> </td>   
		 	<td>  
		 	<input type = number value = "${p.amount }" name = amount >
		 	 </td>   
		 	<td> <img src= "${path }/product/files/${p.productImgStr}" name="ProductImg" width = 70 height = 70> </td> 
		 	<td> 
		 		<input type = button value = "삭 제" onClick="delK('${p.cartId }')"/> </td> 
		 </tr>   
		 <c:set var= "sum" value = "${p.productPrice * p.amount }" > </c:set>
	   	<c:set var= "tc" value = "${sum + tc}" > </c:set> <br>
	  </c:forEach>
	  
	   <tr> 
	   		<td colspan = 6 align = left> 

	   		<c:if test = "${tc < 30000}">
	   			배송비 : <c:set var = "shipping" value="3000"/> <br>
	   			장바구니 금액합계 : 
	   			<fmt:formatNumber value="${tc}" pattern ="#,##0"/>
	   			
	   		</c:if>
	   		
	   		<c:if test = "${tc  >= 30000}">
	   			배송비 : <c:set var = "shipping" value="0"/>  <br>
	   			장바구니 금액합계 : 
	   			<fmt:formatNumber value="${tc}" pattern ="#,##0"/>
	   		</c:if>	
	   </tr>
	   		
	   <tr>
	   		<td colspan = 6 align = center> 
	   		<input type = text name=shipping value = "${shipping }" /> 
	   		<input type = text name=totalMoney value = "${tc }" /> 
	   		<input type = submit value = "주문하기" onClick="javaScript:action='${path}/cartOrder.do'"/> &emsp;
	   		<input type = submit value = "수정하기" onClick="javaScript:action='${path}/cartUpdate.do'"/> &emsp;
	   		<input type = button value = "전체삭제" onClick="delALL()"/> &emsp;</td>
	   </tr>
	  
	 </table>
	 </form>
 </div>
 <br>
</section>

<script>
	function delK(k){
		//alert("k : " + k);
		location.href = "cartDelete.do?cartId=" + k + "&custNo=" +  ${m.custno};
		
	}
	
	function delALL(){
		alert("전체 삭제 하시겠습니까?");
		location.href = "cartDeleteAll.do";
		
	}
</script>
<c:import url="/include/bottom.jsp" />