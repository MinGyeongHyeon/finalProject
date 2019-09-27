<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일지 상세보기</title>
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
#table1, #table2, #table3, #table4, #table5 {
	border:2px solid black;
	width:80%;
	text-align:center;
	margin:0 auto;
	font-size:18px;
}
#table1 th, #table1 td, #table2 td, #table2 th, #table3 th, #table3 td,
	#table4 td, #table4 th, #table5 td, #table5 th{
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

	<fmt:formatDate value="${ j.journalDate }" pattern="yyyy년 MM월 dd일"/>
	<c:set var="timeA" value="${ fn:split(j.time, ',')}"/>
	<c:set var="actiA" value="${ fn:split(j.activity, ',')}"/>

	<div class="main-panel">
		<div class="content">
			<div class="page-inner">
				<div class="page-header">
					<h4 class="page-title">일지 상세보기</h4>

				</div>
				<hr><br>
				<div class="page-category">
					<table id="table1">
						<tr>
							<th rowspan="2" width="20%"><c:out value="${ kga.kinderName }"/></th>
							<th rowspan="2"><fmt:formatDate value="${ j.journalDate }" pattern="yyyy년 MM월 dd일"/> 일지</th>
							<th class="changeC" width="10%">반</th>
							<th class="changeC" width="10%">작성자</th>
						</tr>
						<tr>
							<td><c:out value="${ j.className }"/></td>
							<td><c:out value="${ j.userName }"/></td>
						</tr>
					</table>

					<table id="table2">
						<tr>
							<th width="20%" class="changeB">주제</th>
							<td colspan="3"><c:out value="${ j.topic }"/></td>
						</tr>
						<tr>
							<th class="changeB">소주제</th>
							<td colspan="3"><c:out value="${ j.topicMin }"/></td>
						</tr>
					</table>
					<table id="table3">
						<tr height="50px;">
							<th class="changeC">시간</th>
						</tr>
						<c:forEach items="${ timeA }" var="t">
						<tr>
							<td><c:out value="${t}"/></td>
						</tr>
						</c:forEach>
					</table>
					<table id="table3">
						<tr height="50px;">
							<th colspan="3" class="changeC">활동내용</th>
						</tr>
						<c:forEach items="${ actiA }" var="a">
						<tr>
							<td><c:out value="${a}"/></td>
						</tr>
						</c:forEach>
					</table>
					<table id="table5">
						<tr>
							<th width="30%" class="changeC">총평 / 특이사항</th>
							<td><c:out value="${ j.totalComment }"/></td>
						</tr>
						<tr>
							<th class="changeC">비고</th>
							<td><c:out value="${ j.remarks }"/></td>
						</tr>
					</table>
					<br><br>
					<div id="btnArea" align="center">
							<button type="reset" class="btn btns" id="btn1" onclick="goList()">취소</button>
							&nbsp;&nbsp;
					</div>
				</div>

			</div>
		</div>
	</div>

<script>

 function goList(){
	 location.href="journalMain.jn";
 }

</script>


</body>
</html>