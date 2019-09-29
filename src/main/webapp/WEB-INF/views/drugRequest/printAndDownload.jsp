<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다운로드 및 출력</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/1eba500ac5.js"></script>

<style>
body {
	background:#f5f5f5;
}
#table1 {
	text-align:center;
	margin:0 auto;
	width:70%;
	font-size:16px;
}
#table1 td {
	border:1px solid black;
}
#btnGroup {
	width:207px;
	margin:0 auto;
}
#signImg {
	width:70px;
	height:70px;
}
</style>

</head>
<body>
	<div id="selGroup">

	</div>
	<br>
	<div id="titleGroup">
		<h2 align="center">2019년 9월 투약의뢰서</h2>
	</div><br>
	<div id="btnGroup">
		<button type="button" class="btn btn-dark" id="btn1" onclick="printPage()">
			<i class="fas fa-print"></i>&nbsp; 출력
		</button>&nbsp;&nbsp;
		<button type="button" class="btn btn-light" id="btn2" onclick="tableToExcel()">
			<i class="fas fa-file-download"></i>&nbsp; 다운로드
		</button>
	</div>
	<br><br>
	<div id="tableGroup">
		<table id="table1" class="table table-bordered" border=1>
			<thead style="background:#dcdfe0">
			<tr>
				<td rowspan="2" style="padding-top:35px;">날짜</td>
				<td rowspan="2" style="padding-top:35px;">이름</td>
				<td rowspan="2" style="padding-top:35px;">증상</td>
				<td colspan="5">투약내용</td>
				<td rowspan="2" style="padding-top:35px;">의뢰자</td>
				<td rowspan="2" style="padding-top:35px;">싸인</td>
			</tr>
			<tr>
				<td>약의 종류</td>
				<td>투약 용량</td>
				<td>투약 횟수</td>
				<td>투약 시간</td>
				<td>보관 방법</td>
			</tr>
			</thead>
			<c:forEach var="l" items="${ dList }">
				<tr style="height:100px;">
					<td style="padding-top:35px;"><c:out value="${ l.dosageDate }"/></td>
					<td style="padding-top:35px;"><c:out value="${ l.childrenName }"/></td>
					<td style="padding-top:35px;"><c:out value="${ l.symptom }"/></td>
					<td style="padding-top:35px;"><c:out value="${ l.kinds }"/></td>
					<td style="padding-top:35px;"><c:out value="${ l.dosageMl }"/></td>
					<td style="padding-top:35px;"><c:out value="${ l.dosageCount }"/></td>
					<td style="padding-top:35px;"><c:out value="${ l.dosageTime }"/></td>
					<td style="padding-top:35px;"><c:out value="${ l.dosageKeep }"/></td>
					<td style="padding-top:35px;"><c:out value="${ l.userName }"/></td>
					<td><img src="<c:out value="${ l.signUrl}" />" id="signImg" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>

	<script>
	function printPage() {
		window.print();
	}

	function tableToExcel() {
		location.href="excelTable.ds";
	}

	</script>
</body>
</html>