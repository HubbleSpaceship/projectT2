<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/include/top.jsp" />
<section>
 <br>
 <div align="center">
 <h2> 회원목록페이지 </h2>
 
 <table border=1>
  <tr align="center"> 
	 <td>회원번호</td> <td>회원이름</td> <td>전화번호</td>
	 <td>주소</td>    <td>가입날짜</td> <td>회원등급</td>
	 <td>도시</td>
  </tr>    
 
 
 <c:forEach items="${li}"  var="s" >
 <tr> 
	 <td align="center">${s.custno} </td>
	 <td align="center"> <a href ="${path }/ShopEdit.do?custno=${s.custno}" > ${s.custname} </a></td>
	 <td>${s.phone}</td>
	 <td>${s.address}</td>
	 <td>
	 
	   <fmt:parseDate  value="${s.joindate}" var="registered" pattern="yyyy-MM-dd" />
       <fmt:formatDate value="${registered}" pattern="yyyy년MM월dd일" />

	 </td>
	 <td align="center">
	 <c:choose>
	   <c:when test="${s.grade=='A'}">
	     <c:out value="VIP" />
	   </c:when> 
	   <c:when test="${s.grade=='B'}">
	     <c:out value="일반" />
	   </c:when>
	   <c:otherwise>
	     <c:out value="직원" />
	   </c:otherwise>
	   
	 </c:choose>
	 
	 </td>
	 <td align="center">${m.city}</td>
  </tr> 
 
 
 </c:forEach>
 </table>
 
 <br>
 <form action = ${path}/ShopSelectAll.do>
 <select name = ch1 >
 <option value="custno" > 회원번호 </option> 
 <option value="custname"> 회원이름 </option> 
 </select>
 <input type = text name = ch2 size = 30>
 <input type = submit value ="검색">
 </form>
 
 </div>
 <br>
</section>
<c:import url="/include/bottom.jsp" />