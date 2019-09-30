<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script>
$(function(){
	$("#datepicker").datepicker({
		changeMonth: true, 
        changeYear: true,
        nextText: '다음 달',
        prevText: '이전 달',
        colseText:'닫기',
        minDate:"-1M",
        maxDAte:"+0D",
        dateFormat:"yy/mm/dd",
        dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
        dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
        monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        onSelect:function(){
        	day = $("#datepicker").val();
        	var date = $("#today").html(day);
        	console.log(day);
        	var date = $("#today").html();
        	location.href = "mealMain.ml?changeday="+day;
        }
	});
});
function gomonth(){
	location.href="monthMeal.ml";
}
</script>
<style>
table{
width:100%;
margin:0 auto;
background:white;
text-align:center;
}
table th{
padding:10px;
background:orange;
}

	.main-panel {
	    position: relative;
	    width: calc(100% - 240px);
	    height: 100vh;
	    min-height: 100%;
	    float: right;
	    transition: all .3s;
	    padding-top:100px;
	    padding-left: 3%;
	    padding-right: 3%;
	}
	#choiceDate{
	float:right;
	background:lightblue;
	color:white;
	border-radius:5px;
	
	}
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<div class="main-panel" id="firstContentArea">
<input type="button" id="datepicker" value="날짜선택">
<input type="button" id="gomonth" onclick="gomonth();" value="월별식단표">
<br><br>
<table>
<tr><th colspan="3"> 
<c:out value="${ day }"/>
 </th></tr>
<tr>
<c:forEach var="l" items="${ham}">
<td>
<c:out value="${l.mealType}"/>
</td>
</c:forEach>
</tr>
<tr>
<c:forEach var="l" items="${ham}">
<td>
<img src="${contextPath}/resources/uploadFiles/<c:out value="${l.changeName}"/>.jpg" alt="" style="width:50%; height: 30%;"/>
</td>
</c:forEach>
</tr>
<tr>
<c:forEach var="l" items="${ham}">
<td>
<c:out value="${l.mealContetn}"/>
</td>
</c:forEach>
</tr>

<tr>
</tr>
</table>

</div>
</body>
</html>