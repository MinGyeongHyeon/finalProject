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
function gotest(){
	location.href="test.at";
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
	background: #CCCCCC;
	color: black;
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
	width:900px;
	align:center;
	margin:0 auto;
}

#nonescroll {
	overflow: none;
	overflow-y:hidden;
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
.monttday{
width:150%;
border:1px solid white;
}
#table--inner{
width:100%;
table-layout:fixed;
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
					<td><button id="setbtn" onclick="gotest();">설정</button></td>
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
					<td colspan="${ month1 }" rowspan="${ tt }" class="td-2-3">
						<div class="wapper">
							<table id="table--inner" style="width:100%;">
								<c:forEach var="i" begin="1" end="${ month }">
								   <th class="monttday" rowspan="1" colspan="2" style="width:60px;" class="${ i }">
								   <c:out value="${i}" />
								   </th>
							
								</c:forEach>
								
								
								<c:forEach var="a" begin="1" end="${ hmc }">
                     <tr>
                     <c:forEach var="i" begin="1" end="${ month }">
                     <td rowspan="1" colspan="2" style="padding-top:39px; padding-bottom:39px; width:60px;" class="${ i }">
                     08:30AM
                     </td>               
                     </c:forEach>
                     </tr>
                     </c:forEach>
								
							</table>
						</div>
						<script>
						$(function(){
							$(".wapper").find("td").mouseenter(function(){
								a = $(this).attr('class')+"";
								abc = "[class="+a+"]";
								$(abc).css({"background":"#CCCCCC","cursor":"pointer"});
							}).mouseout(function(){
								$(abc).css({"background":"#555"});
							}).click(function(){
								var day = $("#today").text();
								var plus = day+"$"+a;
								console.log(plus);
								location.href="attendance.at?day="+plus;
							});
						});
						</script>
					</td>
					

					
					
					<td>출석</td>
					<td>결석</td>
				</tr>
				<c:forEach var="a" items="${ list }">
					<tr>
						<td rowspan="3" style="width:80px;"><c:out value="${ a.childrenName }" /></td>
						<td style="padding-top:20px; padding-bottom:20px;">출결<br>상태</td>
						<td rowspan="3" style="width:50px;">1</td>
						<td rowspan="3" style="width:50px;">2</td>
					</tr>
					<tr>
						<td style="width:50px; padding-top:20px; padding-bottom:20px;">등원<br>시간</td>
					</tr>
					<tr>
						<td style="width:50px;padding-top:20px; padding-bottom:20px;">하원<br>시간</td>
					</tr>
				</c:forEach>
				</tbody>
				
			</table>
			<br><br><br>
			<button class="subBtn">다운로드</button>
			<button class="subBtn">출력</button>
		</div>
	</div>

</body>
</html>
























