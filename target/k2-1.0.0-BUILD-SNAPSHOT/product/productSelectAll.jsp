<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/include/top.jsp" />
<section>
 <br>
 <div align="center">
 <h2> 상품 목록 </h2>

 <table border=1  width = 700>
  <tr align="center">
  	 <td>상품번호</td> <td>상품이름</td> <td>상품가격</td> 
  	 <td>상품설명</td> <td>사진첨부</td> <td>등록날짜</td>
  </tr>    
 

 <c:forEach items="${li}"  var="m"  >
 <tr>  
 	 <td align="center"> ${m.productId} </td>
	 <td align="center"><a href = "${path }/ProductSelectONE.do?productId=${m.productId}"> ${m.productName} </a> </td>
	 <td align="center"> <fmt:formatNumber value="${m.productPrice}" pattern="#,###"/>  </td>
	 <td align="center">${m.productDesc} </td>
	 <td align="center"> <img src= "${path }/product/files/${m.productImgStr}" name="ProductImg" width = 100 height = 100></td>
	 <td align="center">${m.productDate} </td>
	 
</tr> 
 
 
 </c:forEach>
 </table>

 
 </div>
 <br>
</section>
<c:import url="/include/bottom.jsp" />