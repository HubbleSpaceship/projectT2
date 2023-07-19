<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/include/top.jsp" />
<section>
 <br>
 <div align="center">
 <h2> 회사 정보 </h2>
 
 <table border=1>
  <tr align="center"> 
	 <td> 번호</td>
	 <td> 회사명 </td>
	 <td> 대표자 </td>
	 <td> 주소 </td> 
	 <td>경도</td>
	 <td>위도</td>
	 <td> 대표 상품 </td>
  </tr>    
 
 
 <c:forEach items="${li}"  var="m" >
 <tr align="center"> 
	 <td> ${m.idx }  </td>
	 <td> <a href = "${path}/OpenSelectMap.do?idx=${m.idx }" >${m.entrprsNm}</a> </td>
	 <td>${m.rprsntvNm}</td>
	 <td>${m.rdnmadr}</td>
	 <td>${m.logitude}</td>
	 <td>${m.latitude}</td>
	 <td>${m.mainGoods}</td>
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