<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/include/top.jsp" />
<section>
 <br>
 <div align="center">
 <h2> 회원매출조회 </h2>
 
 <table border=1>
  <tr align="center"> 
	 <td>회원번호</td> <td>회원성명</td> 
	 <td>회원등급</td> <td>매출</td>
  </tr>    
 
 
 <c:forEach items="${li}"  var="m" >
 <tr> 
	 <td align="center">${m.custno} </td>
	 <td align="center">${m.custname}</td>
	 
	 <td align="center">
	 <c:choose>
	   <c:when test="${m.grade=='A'}">
	     <c:out value="VIP" />
	   </c:when> 
	   <c:when test="${m.grade=='B'}">
	     <c:out value="일반" />
	   </c:when>
	   <c:otherwise>
	     <c:out value="직원" />
	   </c:otherwise>
	   
	 </c:choose>
	 
	 </td>
	 <td align="center">${m.price}</td>
  </tr> 
 
 
 </c:forEach>
 </table>
 
 
 </div>
 <br>
</section>
<c:import url="/include/bottom.jsp" />