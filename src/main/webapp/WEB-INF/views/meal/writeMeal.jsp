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
	<div class="main-panel" alt="your image" id="firstContentArea">
	
<div class="pageName">
			<table id="btntable">
				<tr>
					<td colspan="14">
						<img src="${contextPath }/resources/images/schedule.png" alt="" /><label style="font-weight:bold; font-size: 20px!important;">식단표작성</label>
					</td>
					<td>
						<input type="button" id="datepicker" value="날짜선택">
					</td>
					</tr>
				
			</table>
</div>
<hr/>
<br><br>
<table>
<tr><th colspan="3"> 
<button>&lt;</button>
<c:out value="${ day }"/>
 <button>&gt;</button>
 </th></tr>
<tr>
<td>오전간식<br>
<input type="file" id="AMsnack" name="mealContent">
</td>
<td>점심간식<br>
<img src="${ contextPath }/resources/images/kindergartenicon.png" width="80px" align="center">
</td>
<td>오후간식<br>
<img src="${ contextPath }/resources/images/kindergartenicon.png" width="80px" align="center">
</td>
</tr>
<tr>
<td>오전밥</td>
<td>점심간식</td>
<td>오후밥</td>
</tr>
</table>
</div>

</body>
</html>