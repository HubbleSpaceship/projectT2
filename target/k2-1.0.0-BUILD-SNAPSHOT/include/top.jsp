<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>  

<!-- root까지 가져오는데 root는 webapp임 -->
<c:set var="path" value="${pageContext.request.contextPath}" scope = "session"/> 
<c:set var="key" value="11eb606bd3a9b845efa8715f5669fa7e" scope = "session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="${path}/include/top.css" rel="stylesheet" type="text/css"  />
<style type="text/css">

</style>

</head>
<body>
<header>
</header>
<nav>
&emsp;&emsp;<a href="${path}/index.jsp"> 홈으로 </a>
&emsp;&emsp;<a href="${path}/ShopForm.do"> 회원등록</a>
&emsp;&emsp;<a href="${path}/ShopSelectAll.do"> 회원목록</a>
&emsp;&emsp;<a href="${path}/ShopMoney.do"> 회원매출조회</a>

&emsp;&emsp;<a href="${path}/product/productForm.jsp"> 상품등록</a>
&emsp;&emsp;<a href="${path}/ProductSelectAll.do"> 상품목록</a>

<c:if test="$user=='admin'">
&emsp;&emsp;<a href="${path}/CompanySelectAll.do"> 우수중소기업</a>
&emsp;&emsp;<a href="${path}/OpenSelectMap.do"> 우수중소지도출력 </a>
&emsp;&emsp;<a href="${path}/EvSelectAll.do"> 충전소</a>
&emsp;&emsp;<a href="${path}/EvSelectAllMap.do"> 충전소지도출력</a>
</c:if>

<c:if test="${empty m.custno }">
&emsp;&emsp;<a href="${path}/login/login.jsp"> 로그인 </a>
</c:if>

<c:if test="${!empty m.custno }">
&emsp;&emsp;<a href="${path}/logout.do?custname=">${m.custname} </a>
&emsp;&emsp;<a href="${path}/cartList.do?custNo=${m.custno}"> 장바구니 목록</a>
&emsp;&emsp;<a href="${path}/orderList.do"> 전체주문목록 </a>

</c:if>

</nav>