<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/include/top.jsp" />
<section>
 <br>
 <div align="center">
 <h2> 회사 상세 보기 </h2>
   <div id="map" style="width:450px;height:250px;"></div>

  <form  action="${path}/SelectOneCompany.do">
 <table border=1 width = 450>
	<tr> <td> 번호</td>  <td> ${m.idx }   </td> </tr>
	<tr> <td> 회사명 </td>  <td> ${m.entrprsNm} </td> </tr>
	<tr> <td> 대표자 </td>  <td>${m.rprsntvNm}</td> </tr>
	<tr> <td> 주소 </td>  <td>${m.rdnmadr}</td> </tr>
	<tr> <td> 대표 상품 </td>  <td>${m.mainGoods}</td> </tr>
 </table>

 </form>
 



<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a0ce51e7c89af8bc4bd7db6fa847a5c5"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(${m.latitude}, ${m.logitude}), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(${m.latitude},${m.logitude}); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>


 <hr width=80%>
</div>



 
 </div>
 <br>
</section>
<c:import url="/include/bottom.jsp" />