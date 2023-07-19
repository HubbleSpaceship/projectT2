<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/include/top.jsp" />
<section>
 <br>
 <div align="center">
 <h2> 주문서 출력하기 </h2>

<form method = "post" name = "f1" >

 <table border=1 width = 800>
  <tr align="center" > 
	 <td> 순번 </td> <td> 구매자코드 </td>
	 <td> 배송비 </td> <td> 주문금액 </td> <td> 날짜 </td> 
	 </tr>    

	 <c:forEach items="${li}"  var="c" >
		 <tr align = center >
		    <td>  
		    
		    ${c.idx } 
		    </td> 
		    <td>  ${c.ocustNo } </td> 
		    <td>  ${c.shipping } </td> 
		    <td>  ${c.totalMoney } </td> 
		    <td>  ${c.getDate } </td> 
		 </tr>   
	  </c:forEach>

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