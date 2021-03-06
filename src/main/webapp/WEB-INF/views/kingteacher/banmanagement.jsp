<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
#banmanagement {
	background: white;
	width: 60%;
	text-align: center;
	border: 1px solid black;
}

#content {
	float: right;
	margin-right: 10%;
	margin-left: 3%;
	margin-top: 3.5%;
	background: white;
	width: 80%;
}

p {
	color: blue;
	margin-left: 5%;
}

table {
	width: 100%;
	margin: 0 auto;
}

table th {
	background: lightgray;
	color: white;
	padding: 10px;
	font-weight: bold;
}

#saveBtn {
	margin-left: 42%;
	width: 15%;
	height: 4%;
	background: orange;
	color: white;
	border-radius: 15px;
}

#plusBtn {
	margin-left: 50%;
	background: lightblue;
	color: white;
	barder-radius: 15px;
}

h1 {
	margin-left: 5%;
}
</style>
</head>
<header>
	<jsp:include page="../common/kingteachersidebar.jsp" />
</header>
<body>
<c:set var="contextPath"
			value="${ pageContext.servletContext.contextPath }"
			scope="application" />
	<div id="content">
		<div>
			<h1>반 정보 관리</h1>
			<hr>
			<p>
				* 반에 원아나 교사가 있을 경우 반 삭제를 할 수 없습니다.<br> 반 삭제를 원하시는 경우 원아나 교사를 다른
				반으로 옮긴 후 삭제해 주세요.
			</p>
		</div>
		<table id="banmanagement">
			<tr>
				<th>반 이름</th>
				<th>원생 수</th>
				<th>삭제</th>
			</tr>
			<tr>
				<td>dfefe</td> 
				<td>dfefe</td>
				<td>dfefe</td>
			</tr>
			<tbody></tbody>

		</table>
		<br>
		<button id="plusBtn" onclick="plus();">+</button>
		<br>
		<br>
		<button id="saveBtn">저장</button>
		<br>
		<br>
		<br>
	</div>
	<script>
		/* function plus() {
			var td1 = "<tr><td>" + "" + "</td>";
			var td2 = "<td>" + "" + "</td>";
			var td3 = "<td>" + "" + "</td></tr>";
			$(td1 + td2 + td3).clone(false).appendTo(
					$('#banmanagement > tbody'));
		} */
		$('#plusBtn').click(function() {
			location.href = "banmanagement.pl"

		})
	</script>
</body>
</html>