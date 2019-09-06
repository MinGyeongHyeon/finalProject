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
        	location.href = "changeAttendance.at";
        	var date = $("#today").html();
        }
	});
});
/* function preBtn(){
	SimpleDateFormat sdf = new SimpleDateFormat("yy-mm-dd");
	Calendar cal = Calendar.getInstance();
	
	
	var preday = new Date($("#today").html());
	cal.add(preday.DAY,1);
	console.log(pre);
}
function afterBtn(){
	
} */
function goMonth(){
	location.href="month.at";
}
function statusChange(){
	/* $(this).parents().children("td").eq(5).css({"display":"inline-block","background":"white"}); */
/* 	$(".bgo").parents().parents().children("td").eq(5).css({"display":"inline-block","background":"white"}); */
	var name = $(this).parents().siblings().eq(1).text();
	var selectval = $(this).html();
console.log(selectval);
}
</script>

</head>
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
	.pageName label{
		font-weight: bold;
		font-size: 1.5em;
	}
	
	.pageName tr td:first-child{
		width:60%;
	}
	
	.pageName img{
		width:30px;
		height:30px;
	}
	
	.pageName button{
		background:#665b55;
		color:#fff;
		border:none;
		border-radius: 5px; 
		padding-top:5px;
		padding-bottom: 5px;
		float:right;
		width:100%;
	}
	#datepicker{
	background:#665b55;
		color:#fff;
		border:none;
		border-radius: 5px; 
		padding-top:5px;
		padding-bottom: 5px;
		float:right;
		width:100%;
	}
	.attendanceArea{
		margin:0 auto;
		align:center;
		height:500px;
		background:#555;
		color:#fff;
		text-align:center;
	}
	#timecheck{
	float:left;
	margin-top:2%;
	width:100%;
	}
	#timecheck > label{
	color:white;
	}
	#attendance{
	width:100%;
	color:white;
	}
	#right{
	text-align:right;
	margin-left:20%;
	}
	#btntable > td{
	float:right;
	}
	#btntable{
	width:100%;
	}
	.subBtn{
	float:left;
	margin-left:5%;
	margin-top:2%;
	}
</style>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<div class="main-panel" id="firstContentArea">
		<div class="pageName">
		
			<table id="btntable">
				<tr>
					<td colspan="14">
						<img src="${contextPath }/resources/images/schedule.png" alt="" /><label style="font-weight:bold; font-size: 20px!important;">출석부</label>
						
					</td>
					<td><button onclick="goMonth();">월별출석부</button></td>
					<td><input type="button" id="datepicker" value="일별출석부"></td>
					<td><button id="setbtn">설정</button></td>
					</tr>
				
			</table>
		</div>
		<hr />
		<div class="attendanceArea">
		<div id="timecheck"><label>총원 : ${ day }명(출석 : ${day }명)</label>&nbsp;&nbsp;
		<span id="right">V 출석 × 결석 ◎ 병결 ○ 사고 / 입소 ★ 퇴소</span></div>
						<table id="attendance" align="center">
							<tr>
							<td colspan="3">
							<button onclick="preBtn();">&lt;</button></td>
							<td colspan="2"><h3 id="today" name="time">${ day }</h3></td>
							<td colspan="2"><button onclick="afterBtn();">&gt;</button></td>
							</tr>
							<tr>
							<td>No.</td>
							<td>원아명</td>
							<td>출결상태</td>
							<td>등원 시간</td>
							<td>하원 시간</td>
							<td>비고</td>
							<td>보호자 확인</td>
							</tr>
							<tbody>
							<c:forEach var="a" items="${ list }">
							<tr style="border:1px solid white;">
								<td></td>
								<td><c:out value="${ a.childrenName }"/></td>
								<td>
								<select class="status" name="status" onchange="statusChange();">
									<option value="V">출결</option>
									<option value="×">결석</option>
									<option value="◎">병결</option>
									<option value="○">사고</option>
									<option value="/">입소</option>
									<option value="★">퇴소</option>
								</select>
								</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					<button class="subBtn">다운로드</button>
					<button class="subBtn">출력</button>
		</div>
	</div>
<!-- <script>
$(".status").onchange(function(){
	$(this).parents().children("td").eq(5).css({"display":"inline-block","background":"white","width":"100%","height":"100%"});
	console.log("졸리당");
});

</script> -->
</body>
</html>
























