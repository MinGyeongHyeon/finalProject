<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일지 작성하기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
.main-panel {
	position: relative;
	width: calc(100% - 240px);
	height: 100vh;
	min-height: 100%;
	float: right;
	transition: all .3s;
}
#table1, #table2, #table3 {
	border:2px solid black;
	width:80%;
	text-align:center;
	margin:0 auto;
	font-size:18px;
}
#table1 th, #table1 td, #table2 td, #table2 th, #table3 th, #table3 td{
	border:1px solid black;
}
.form-control {
	border-radius:none !important;
}
#table1 {
	height:90px;
	font-size:18px;
	background:#e0dada;
}
.changeC {
	background:#e0dada;
}
.changeB {
	background:#fafafa;
}
#btn1 {
	background: #919191;
	font-size: 20px;
	height:50px;
	width:200px;
	border: 0.5px solid #7d7d7d;
	color:white;
	font-weight: bold;
}

#btn2 {
	background: #ff737a;
	font-size: 20px;
	height:50px;
	width:200px;
	color:white;

}

</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

	<c:set var="today" value="<%=new Date()%>" />
	<fmt:formatDate var="todayToString" pattern="yyyy월 MM월 dd일" value="${ today }" />
<form method="post" action="writeJournal.jn">
	<div class="main-panel">
		<div class="content">
			<div class="page-inner">
				<div class="page-header">
					<h4 class="page-title">일지 작성하기</h4>
				</div>
				<hr><br>
				<div class="page-category">
					<table id="table1">
						<tr>
							<th rowspan="2" width="20%"><c:out value="${ kga.kinderName }"/></th>
							<th rowspan="2"><c:out value="${ todayToString }"/></th>
							<th class="changeC" width="20%">작성자</th>
						</tr>
						<tr>
							<td><c:out value="${ loginUser.userName }"/></td>
						</tr>
					</table>

					<table id="table2">
						<tr>
							<th width="20%" class="changeB">주제</th>
							<td colspan="3"><input type="text" class="form-control" id="topic" name="topic"/></td>
						</tr>
						<tr>
							<th class="changeB">소주제</th>
							<td colspan="3"><input type="text" class="form-control" id="topicMin" name="topicMin"/></td>
						</tr>
						<tr height="50px;">
							<th class="changeC">시간</th>
							<th colspan="3" class="changeC">활동내용</th>
						</tr>
						<tr>
							<td><input type="text" class="form-control" id="time" name="time"></td>
							<td colspan="3"><input type="text" class="form-control" id="activity" name="activity"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" id="time" name="time"></td>
							<td colspan="3"><input type="text" class="form-control" id="activity" name="activity"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" id="time" name="time"></td>
							<td colspan="3"><input type="text" class="form-control" id="activity" name="activity"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" id="time" name="time"></td>
							<td colspan="3"><input type="text" class="form-control" id="activity" name="activity"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" id="time" name="time"></td>
							<td colspan="3"><input type="text" class="form-control" id="activity" name="activity"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" id="time" name="time"></td>
							<td colspan="3"><input type="text" class="form-control" id="activity" name="activity"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" id="time" name="time"></td>
							<td colspan="3"><input type="text" class="form-control" id="activity" name="activity"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" id="time" name="time"></td>
							<td colspan="3"><input type="text" class="form-control" id="activity" name="activity"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" id="time" name="time"></td>
							<td colspan="3"><input type="text" class="form-control" id="activity" name="activity"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" id="time" name="time"></td>
							<td colspan="3"><input type="text" class="form-control" id="activity" name="activity"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" id="time" name="time"></td>
							<td colspan="3"><input type="text" class="form-control" id="activity" name="activity"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" id="time" name="time"></td>
							<td colspan="3"><input type="text" class="form-control" id="activity" name="activity"></td>
						</tr>
					</table>
					<table id="table3">
						<tr>
							<th width="30%" class="changeC">총평 / 특이사항</th>
							<td><input type="text" class="form-control" id="totalComment" name="totalComment"/></td>
						</tr>
						<tr>
							<th class="changeC">비고</th>
							<td><input type="text" class="form-control" id="remarks" name="remarks"/></td>
						</tr>
					</table>
					<br><br>
					<div id="btnArea" align="center">
							<button type="reset" class="btn btns" id="btn1" onclick="goList()">취소</button>
							&nbsp;&nbsp;
							<button type="submit" class="btn btns" id="btn2">작성완료</button>
					</div>
				</div>

			</div>
		</div>
	</div>
</form>


<script>
/*
	function goWrite(){

		var time;
		var activity;
		var timeArr = Array();
		var activityArr = Array();
		var tCount = $("input[name=time]").length;
		var aCount = $("input[name=activity]").length;

		for(var i=0; i<tCount; i++){
			timeArr[i] = $("input[name=time]")[i].value;
		}

		for(var j=0; j<aCount; j++){
			activityArr[j] = $("input[name=activity]")[j].value;
		}

		time = timeArr.join('|');
		activity = activityArr.join('|');

		console.log(time);
		console.log(activity);

 		$("#time").val(time);
		$("#activity").val(activity);

		location.href = "writeJournal.jn?time=" + encodeURI(time) + "&activity=" + encodeURI(activity);
	}
 */

 function goList(){
	 location.href="journalMain.jn";
 }

</script>


</body>
</html>