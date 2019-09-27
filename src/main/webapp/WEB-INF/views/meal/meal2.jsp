<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        dateFormat:"yy-mm-dd",
        dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
        dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
        monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        onSelect:function(){
        	day = $("#datepicker").val();
        	var date = $("#today").html(day);
        	//location.href = "changeAttendance.at";
        	var date = $("#today").html();
        }
	});
});
function writeMeal(){
	location.href="writeMeal.ml";
}
</script>
<style>
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
#mealArea{
width:100%;
margin:0 auto;
background:white;
text-align:center;
}
#mealArea td{
padding:5%;
}
#mealArea th{
padding:10px;
background:orange;
}

</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
<div class="main-panel" id="firstContentArea">
<div class="pageName">
			<table id="btntable">
				<tr>
					<td colspan="14">
						<img src="${contextPath }/resources/images/schedule.png" alt="" /><label style="font-weight:bold; font-size: 20px!important;">식단표</label>
					</td>
					<td>
						<input type="button" id="datepicker" value="날짜선택">
					</td>
					</tr>
				
			</table>
		</div>
<hr/>
<table id="mealArea">
<tr><th colspan="3">
<button>이전</button>
 2019년 8월
 <button>다음</button>
 </th></tr>
<tr>
<td><h1>아직 식단표가 작성되지 않았습니다.</h1></td>
</tr>
<tr><td>
<c:if test="${ loginUser.usingStatus ne 1 }">
<button onclick="writeMeal();">작성하기</button>

</c:if>
</td></tr>
</table>
</div>
</body>
</html>