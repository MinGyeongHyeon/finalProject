<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script>
num1 = 0;
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
        	console.log(day);
        	location.href = "attendance.at?day1="+day;
        	var date = $("#today").html();
        }
	});
});

function goMonth(){
	location.href="month.at";
};

$(document).on('change', 'select', function() {
	if(num1==0){
		$("#saveBtn").css('visibility','visible');
		num1+=1;
	};
	if($(this).parent().parent().children("td").eq(5).html() == ""){
	$(this).parent().parent().children("td").eq(5).append("특이사항을 입력해주세요.");
	}
	var tv = $(this).val();
	if(tv == "V" || tv =="★" || tv=="/"){
		console.log(tv);
		$(this).parent().parent().children("td").eq(3).children("input").css('visibility','visible');
		$(this).parent().parent().children("td").eq(4).children("input").css('visibility','visible');
		$(document).find("input[name=timepicker]").removeClass('hasDatepicker').datepicker();     
	}
});
/* $(function(){
	var html = $(".status").html();
	if(html!='선택'){
		$(".mTime").css('visibility','visible');
	}
}) */

 $(function(){
	$(".timepicker").timepicker({
		timeFormat: 'h:mm p',
	    interval: 15,
	    minTime: '10',
	    maxTime: '6:00pm',
	    defaultTime: '9',
	    startTime: '10:00',
	    dynamic: false,
	    dropdown: true,
	    scrollbar: true,
	    updateData:true,
	    change:function(){
	    	var element = $(this).val();
	    	$(this).html(element);
	    	//console.log(element+"현재값");
	    	$(this).val(element);
	    	var childrenNo = $(this).parent().parent().children("td").eq(0).text();
	   var abc = $(this).parent().parent().children("td").eq(3).children("#timepicker1").val();
	    	var abcd = $(this).parent().parent().children("td").eq(4).children("#timepicker2").val();
	    	var aaa = $(this).parent().parent().children("td").find(".chiNo").val();
	    	$(this).parent().parent().children("td").eq(3).children(".time").val(abc);
	    	$(this).parent().parent().children("td").eq(4).children(".mTime").val(abcd);
	    	$(this).parent().parent().children("td").eq(0).children(".childrenNo1").val(aaa);
	    }
	});
});

/*  function save(){
	 $(form).submit();
 } */

/* function bgo(){
	console.log(this);
} */
</script>

</head>
<style>
.timepicker{
width:100%;
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
	.pageName label{
		font-weight: bold;
		font-size: 1.5em;
	}
 	.status{
 	width:100%;
 	height:100%;
 	border : none;
 	background:url('arrow.jsp') no-repeat 95% 50%;
 	appearnace:none;
 	color:black;
	}
	.status > option{
 	text-align:center;
 	margin:0 auto;
 	color:black;
	}
	.pageName tr td:first-child{
		width:60%;
		backgroud:lightblue;
	}
	.pageName img{
		width:30px;
		height:30px;
	}
	.pageName button{
		background:lightyellow;
		color:black;
		border:none;
		border-radius: 5px; 
		padding-top:5px;
		padding-bottom: 5px;
		float:right;
		width:100%;
	}
	#datepicker{
	background:white;
		color:black;
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
		background:white;
		color:black;
		height:100%;
		text-align:center;
	}
	#attendance{
	border:1px solid lightgray;
	width:100%;
	color:black;
	padding:3px;
	}
	#attendance td{
	border:1px solid lightgray;
	padding:2px;
	}
	#timecheck{
	float:left;
	margin-top:2%;
	width:100%;
	}
	#timecheck > label{
	color:black;
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
		<form action="changeAttendance.at" method="post">
		<div id="timecheck"><label>총원 : ${ chldren }명(출석 : ${ chldren }명)</label>&nbsp;&nbsp;
		<span id="right">V 출석 × 결석 ◎ 병결 ○ 사고 / 입소 ★ 퇴소</span></div><br><br><br><br>
						<table id="attendance" align="center">
							<tr>
							<td colspan="3">
							&lt;</td>
							<td colspan="2"><h1 id="today" >${ day }</h1>
							<input type="text" value="${day }" name="day" class="day" style="display:none;">
							</td>
							<td colspan="2">&gt;</td>
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
								<td><input type="text" class="chiNo" style="display:none;" value="${ a.childrenNo }"><c:out value="${ a.childrenNo }"/>
								<input type="text" name="childrenNo1" class="childrenNo1" value="" style="display:none;">
								</td>
								<td><c:out value="${ a.childrenName }"/>
								</td>
								<td id="statusArea">
								<select class="status" name="status">
									<option value="">
									<c:if test="${ !empty a.status }">
									<c:out value="${ a.status }"/>
									</c:if>
									<c:if test="${ empty a.status }">
									선택
									</c:if>
									</option>
									<option value="V">출결</option>
									<option value="×">결석</option>
									<option value="◎">병결</option>
									<option value="○">사고</option>
									<option value="/">입소</option>
									<option value="★">퇴소</option>
								</select>
								
								</td>
								<td>
  								<input type="button" id='timepicker1' name='time' class='timepicker' style="visibility:hidden; background:lightyellow; color:black; border:none;" value="시간을 선택하세요.">
								<input type="text" name="time" class="time" value="" style="display:none;">
								<div id="timevalue">
								<c:out value="${ a.time }"/>
								</div>
								</td>
								<td>
								<input type="button" id='timepicker2' name='mtime' class='timepicker' style="visibility:hidden; background:lightyellow; color:black; border:none;" value="시간을 선택하세요.">
								<input type="text" name="mTime"  class="mTime" value=""  style="display:none;">
								<div id="mtimevalue">
								<c:out value="${ a.mTime }"/>
								</div>
								</td>
								<td></td>
								<td></td>
								</tr>
							</c:forEach>
							</tbody>
						</table><br>
						<div>
						<button class="btn btn-warning" 
								style="margin-left: 3%; float:left;">다운로드</button>
					<!-- <button class="subBtn" style="background:#FA8258;color:white;border-radius:3px;">다운로드</button> -->
					<!-- <button class="subBtn" style="background:#FA8258;color:white;border-radius:3px;">출력</button> -->
					<button class="btn btn-warning" 
								style="margin-left: 5%; float:left;">출력</button>
					<button onclick='save();' id="saveBtn" class="btn btn-warning" style="visibility:hidden; margin-right:4%; float:right;">저장</button>
						</div>
		</form>
		</div>
	</div>
	<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
</body>
</html>
























