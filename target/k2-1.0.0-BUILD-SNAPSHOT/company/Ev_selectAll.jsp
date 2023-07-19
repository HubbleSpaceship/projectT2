<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/include/top.jsp" />
<section>
 <br>
 <div align="center">
 <h2> 충전소 정보 </h2>
 
 <table border=1>
  <tr align="center"> 
	 <td> idx </td>
	 <td> csNm </td>
	 <td> addr </td>
	 <td> cpNm </td> 
	 <td> cpStat</td>
  </tr>    
 
 
 <c:forEach items="${li}"  var="m" >
 <tr align="center"> 
	 <td> ${m.idx } </td>
	 <td> ${m.csNm} </td>
	 <td>${m.addr}</td>
	 <td>${m.cpNm}</td>
	 <td>${m.cpStat}</td>
</tr>
 </c:forEach>
 </table>
 
 <br>
 
 </div>
 <br>
</section>
<c:import url="/include/bottom.jsp" />