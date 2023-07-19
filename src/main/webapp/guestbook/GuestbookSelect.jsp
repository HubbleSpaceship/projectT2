<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:import url="/include/top.jsp" />
<section>
 <br>
 <div align="center">

 <h2> 후기  (전체 수 : ${totalCount }) </h2>

<form method = "post" name = "f1" >
 <table border=1 width = 800>
	<tr align="center" > 
		<th> rownum </th> <th> rnum </th>
		<th> title </th> <th> writer </th>
		<th> date_for </th>
	</tr>    
	 <c:forEach items="${li}"  var="g" >
		 <tr align = center >
		 	<td>  ${g.rownum } </td> 
		 	<td>  ${g.rnum } </td> 
		    
		    <td>  ${g.title } </td>
		 	<td>  ${g.writer }</td>   
		 	
		 	<td> 
			 	<c:set var= "textVal" value="${g.dateStr }" />
			 		${fn:substring(textVal,0,10)}
		 	 </td> 
		 </tr>   
	  </c:forEach>
	 </table>
	 </form>
 </div>
 <br>
</section>

<c:import url="/include/bottom.jsp" />