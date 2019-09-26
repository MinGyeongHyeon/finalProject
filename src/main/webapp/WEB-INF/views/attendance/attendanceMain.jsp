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
        	location.href = "changeAttendance.at";
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
	$(this).parent().parent().children("td").eq(5).append("<button onclick='bgo();' name=''>비고</button>");
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
	    	
	    	var abc = $(this).parent().parent().children("td").eq(3).children("#timepicker1").val();
	    	var abcd = $(this).parent().parent().children("td").eq(4).children("#timepicker2").val();
	    	
	    	if(abc==""||abcd==""){
	    	console.log(abc+"타임");
	    	}else if(abc==""||abcd!=""){
	    		console.log(abcd+"엠타임");
	    	}
	    }
	});
}); */
function save(){
	
	var dataArrayToSend = [];
	var dataArrayToSend1 = [];
	$("#attendance").each(function(){
		len = $(this).find("td").length;
	});
	for(var i=0;i<len;i++){
		dataArrayToSend.push($(this).find("td").eq(i).text());
		console.log("왜안나와");
	}
	dataAraryToSend1.push(dataArrayToSend);
	console.log(dataArrayToSend1);
$.ajax({
	contentType:"application/json",
	type:"POST",
	data:JSON.stringify(dataArrayToSend1),
	url:"attendanceMain.at",
	success:function(data){
		console.log("성공")
	},
	error:function(){
		console.log("실패")
	}
});
}

/* function save(){
	var dataParam={list:JSON.stringify($scope.lists),param1:'param1',param2:'param2'};
	$.ajax({
		type:'post',
		dataType:'json',
		data:dataParam,
		url:,
		success:function(returnData){
			
		},error:function(e){
			
		}
	});
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
 	color:white;
	}
	.status > option{
 	text-align:center;
 	margin:0 auto;
 	color:black;
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
		background:#555;
		color:#fff;
		height:100%;
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
		<form action="" method="post">
		<div id="timecheck"><label>총원 : ${ chldren }명(출석 : ${ chldren }명)</label>&nbsp;&nbsp;
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
								<td><p><c:out value="${ a.childrenNo }"/></p>
								<input type="hidden" name="childrenNo" value="${ a.childrenNo }">
								</td>
								<td><c:out value="${ a.childrenName }"/></td>
								<td id="statusArea">
								<select class="status" name="status">
									<option value="">선택</option>
									<option value="V">출결</option>
									<option value="×">결석</option>
									<option value="◎">병결</option>
									<option value="○">사고</option>
									<option value="/">입소</option>
									<option value="★">퇴소</option>
								</select>
								</td>
								<td class="time">
								<input type="button" id='timepicker1' name='time' class='timepicker' style="visibility:hidden;" value="">
								</td>
								<td class="mtime">
								<input type="button" id='timepicker2' name='mtime' class='timepicker' style="visibility:hidden;" value="">
								</td>
								<td></td>
								<td></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					<button class="subBtn">다운로드</button>
					<!-- <a href="/attendance/2019/9/11/download/?qs_class=" type="button" class="btn btn-default hidden-print"
                   onclick="ga('send', 'event', 'attendance', 'Click', 'dailyAttendance|download');">
                    <i class="kn kn-download-box"></i> 다운로드
                </a> -->
					<button class="subBtn">출력</button>
					<!-- <a href="/attendance/2019/9/11/print/?qs_class=" target="_blank" type="button" class="btn btn-gray btn-fix-width-sm hidden-print"
               id="dailyAttendancePrintLink"
               onclick="ga('send', 'event', 'attendance', 'Click', 'dailyAttendance|print');">
                <i class="kn2 kn-print"></i> 출력
            </a> -->
					<button onclick='save();' id="saveBtn" style="visibility:hidden;">저장</button>
		</form>
		</div>
	</div>
	<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js">
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
		    	
		    	var abc = $(this).parent().parent().children("td").eq(3).children("#timepicker1").val();
		    	var abcd = $(this).parent().parent().children("td").eq(4).children("#timepicker2").val();
		    	
		    	if(abc==""||abcd==""){
		    	console.log(abc+"타임");
		    	}else if(abc==""||abcd!=""){
		    		console.log(abcd+"엠타임");
		    	}
		    }
		});
	});</script>
</body>
</html>
























