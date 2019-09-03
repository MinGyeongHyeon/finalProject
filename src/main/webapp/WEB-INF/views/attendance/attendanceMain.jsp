<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        prevText: '이전 달' 
	});
});
function goMonth(){
	location.href="test.pl";
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
	}
	#datepicker{
	background:#665b55;
		color:#fff;
		border:none;
		border-radius: 5px; 
		padding-top:5px;
		padding-bottom: 5px;
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
	margin-left:5%;
	margin-top:2%;
	}
	#attendance{
	width:100%;
	}
	#right{
	margin-right:0%;
	}
	#btntable > td{
	float:right;
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
		<div id="timecheck"><input type="checkbox"><span>등하원 시간 표시</span>&nbsp;&nbsp;
		<span id="right">V 출석 × 결석 ◎ 병결 ○ 사고 / 입소 ★ 퇴소</span></div>
						<table id="attendance" align="center">
							<tr>
							<td colspan="3">
							<button>&lt;</button></td>
							<td colspan="2"><h3>${ day }</h3></td>
							<td colspan="2"><button>&gt;</button></td>
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
							<tbody></tbody>
						</table>
					<button>다운로드</button>
					<button>출력</button>
		</div>
	</div>
	
	<script>
	/* 	$(function(){
			var select = "<select><option>출석</option><option>결석</option><option>병가</option><option>사고</option><option>입소</option><option>퇴소</option><option>표시안함</option></select>"
			var No = "<tr><td>"+""+"</td>";
			var childName = "<td>"+""+"</td>";
			var status = "<td>"+select+"</td>";
			var time1 = "<td>"+""+"</td>";
			var time2 = "<td>"+""+"</td>";
			var etc = "<td>"+""+"</td>";
			var confirm = "<td>"+""+"</td>";
			
		}); */
		
		/* function datepicker(){
			
		
		$("#datepicker").onclick({
			
			$("#datepicker").datepicker({
				dateFormat:'yy-mm-dd'
				,showOtherMonths: true
				,showMonthAfterYear: true
				,changeYear: true
				,changeMonth: true
				,showOn: "both"
				,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif"
				,buttonImageOnly:true
				,buttonText:"선택"
				,yearSuffix:"년"
				,monthNamesShort:['1','2','3','4','5','6','7','8','9','10','11','12']
				,monthNames:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
				,dayNamesMin: ['일','월','화','수','목','금','토']
				,dayNames:['일요일','월요일','화요일','수요일','목요일','금요일','토요일']
				,minDate:"-1M"
				,maxDate:"+1M"
			
			#('#datepicker').datepicker();
			$('#datepicker').datepicker('setDate','today');
		});
		});
		} */
	</script>
</body>
</html>
























