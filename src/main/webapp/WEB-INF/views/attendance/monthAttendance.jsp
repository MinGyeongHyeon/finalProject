<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
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
        	$("#today").html(day);
        	/* ajax로 바뀐 값 보내서 다시 리스트 불러오기 */
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
	padding-top: 100px;
	padding-left: 3%;
	padding-right: 3%;
}

.pageName label {
	font-weight: bold;
	font-size: 1.5em;
}

.pageName tr td:first-child {
	width: 60%;
}

.pageName img {
	width: 30px;
	height: 30px;
}

.pageName button {
	background: #665b55;
	color: #fff;
	border: none;
	border-radius: 5px;
	padding-top: 5px;
	padding-bottom: 5px;
	float: right;
	width: 100%;
}

#datepicker {
	background: #665b55;
	color: #fff;
	border: none;
	border-radius: 5px;
	padding-top: 5px;
	padding-bottom: 5px;
	float: right;
	width: 100%;
}

.attendanceArea {
	margin: 0 auto;
	align: center;
	height: 500px;
	background: #555;
	color: #fff;
	text-align: center;
}

#timecheck {
	float: left;
	margin-top: 2%;
	width: 100%;
}

#timecheck>label {
	color: white;
}

.wapper {
	overflow: scroll;
	height:600px;
}

#nonescroll {
	overflow: none;
}

#attendance {
	width: 100%;
}
#right {
	text-align: right;
	margin-left: 20%;
}

#btntable>td {
	float: right;
}

#btntable {
	width: 100%;
}

.subBtn {
	float: left;
	margin-left: 5%;
	margin-top: 2%;
}
</style>
<body>
	<jsp:include page="../common/menubar.jsp" />
	<div class="main-panel" id="firstContentArea">
		<div class="pageName">

			<table id="btntable">
				<tr>
					<td colspan="14">
					<img src="${contextPath }/resources/images/schedule.png" alt="" /><label
						style="font-weight: bold; font-size: 20px !important;">출석부</label>

					</td>
					<td><button onclick="goMonth();">월별출석부</button></td>
					<td><input type="button" id="datepicker" value="일별출석부"></td>
					<td><button id="setbtn">설정</button></td>
				</tr>

			</table>
		</div>
		<hr />
		<div class="attendanceArea">
			<div id="timecheck">
				<input type="checkbox"><label>등하원 시간 표시</label>&nbsp;&nbsp;
				<span id="right">V 출석 × 결석 ◎ 병결 ○ 사고 / 입소 ★ 퇴소</span>
			</div>
			<table id="attendance" align="center" class="table--outter">
				<tr>
					<td colspan="3">
						<button onclick="preBtn();">&lt;</button>
					</td>
					<td colspan="2"><h3 id="today">${ day }</h3></td>
					<td colspan="2"><button onclick="afterBtn();">&gt;</button></td>
				</tr>
				<tr>
					<td>이름</td>
					<td>&lt; &nbsp; &gt;</td>
					<td colspan="${ month }" rowspan="${ hmc }" class="td-2-3">
						<div class="wapper">
							<table class="table--inner">
								<c:forEach var="d" items="${ daylist }">
									<!-- 날짜 일일이 가져오기 -->
									<td>1</td>
								</c:forEach>
							</table>
						</div>
					</td>
					<td>출석</td>
					<td>결석</td>
				</tr>
				<c:forEach var="a" items="${ list }">
					<tr>
						<td rowspan="3"><c:out value="${ a.childrenName }" /></td>
						<td>출결상태</td>
						<td rowspan="3">등원 시간</td>
						<td rowspan="3">결석일수</td>
					</tr>
					<tr>
						<td>등원 시간</td>
					</tr>
					<tr>
						<td>하원 시간</td>
					</tr>
				</c:forEach>
				</tbody>
				<tr>
					<td>전월말 재적수</td>
					<td>입소아동</td>
					<td>퇴소아동</td>
					<td>월말 재적수</td>
					<td>교육일수</td>
				</tr>
			</table>
			<button class="subBtn">다운로드</button>
			<button class="subBtn">출력</button>
		</div>
	</div>

</body>
</html>
























